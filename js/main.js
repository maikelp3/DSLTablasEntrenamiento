
function main () {
         
         var input = document.getElementById("original"); 
         var temp = original.value;
         try {
            
           
            var parser = require ("./prueba").prueba;
            //var parse =  new prueba.Parser;
            //var parser = require("jison").Parser;
            //var parser = require("./prueba").parser;7
            //var result = prueba.parse($("original").val())
            function ejecutar (temp) {
               return "hola";
            }
            
           // var myparser = {};
            
           // myparser.parser.parse (temp);
            
            //var resultado = ejecutar (temp);
            //resultado = resultado.toString ();
            //converted.innerHTML = resultado;
            converted.innerHTML = "HOLA";
            
         } catch (e) {
            converted.innerHTML = "ERROR! compruebe la entrada introducida!";
         }
     
}

/*$(document).ready(function () {
  $("button").click(function () {
    try {
      var result = prueba2-PL.parse($("entrada").val())
      $("#output").html(result);
    } catch (e) {
      $("#output").html(String(e));
    }
  });
});
*/