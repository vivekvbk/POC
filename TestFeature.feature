Feature: Reading csv file data


  Background:
   # * def data = read('file:src/payloads/data.csv')
  * def csvdata = read('file:src/test/java/feature4/data.csv')
    * print csvdata
    * def selected = "Y"
    * def fun = function(x) { return x.Priority == selected}
    * def filtered = karate.filter(csvdata, fun)

  @TestRunner
  Scenario:Running features using csv

    * def fun1 =
        """
        function(array)
        {
        var val=[];
        for (var i = 0; i <array.length; i++)
        {
        var obj={};
        for (var key in array [i])
        {
        if(key!="Priority")
        {
        obj[key]=(array[i][key]);

        }
        }
        val.push(obj);
        }
        return val;
        }
       """
    * def val = call fun1 filtered
    * print val
      And eval if (val.length != 0){for(var i = 0;i < val.length;i++){for (var key in val[i]){karate.log(key);if(val[i][key] != "")karate.call(val[i][key])}}}