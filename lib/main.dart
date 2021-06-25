import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
 

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
 Widget btn (var txt){return 
ElevatedButton(onPressed: (){setState(() {result=result+txt;
  
}); } ,child: Text(txt

),
style:ElevatedButton.styleFrom(primary:Colors.transparent,
onPrimary:Colors.orange[900],

minimumSize:Size (90,100),
textStyle: TextStyle(fontSize: 30,)
));
}
var result="";

clear(){setState(() {
  result="";
});}



 output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }







  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar: AppBar(backgroundColor: Colors.indigo[900],title: Center(child: Text("Calculator",style: TextStyle(color:Colors.indigo[200]),)),),


    body: 
  
    Container(alignment: Alignment.center,color: Colors.black,
      child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [  Container(child: Text(result,style: TextStyle(color: Colors.redAccent[700],fontSize:40))),  Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children:[
        
        
        
        
   
        
   btn("+"),
            btn("/"),
            btn("*"),
            btn("-"),
            ]),
      )
          ,
         
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children:[btn("1"),
          btn("2"),
          btn("3"),
          ElevatedButton(onPressed: clear ,child: Text("C"

),
style:ElevatedButton.styleFrom(primary:Colors.transparent,
onPrimary:Colors.orange[900],

minimumSize:Size (90,100),
textStyle: TextStyle(fontSize: 30,)
))
          ]), 
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children:[btn("4"),
          btn("5"),
          btn("6"),
         ElevatedButton(onPressed: output ,child: Text("="

),
style:ElevatedButton.styleFrom(primary:Colors.transparent,
onPrimary:Colors.orange[900],

minimumSize:Size (90,100),
textStyle: TextStyle(fontSize: 30,)
))
          ]), 
          
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children:[btn("7"),
          btn("8"),
          btn("9"),
          btn("0"),
          ])
          
          ,
          
       
          
          
          
          
      ],),
    ),
      ),
 
      
    );
  }
}

