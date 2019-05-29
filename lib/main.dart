import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Basic-StateFull-Widget',
  home: new MyHomePage(),
));



class  MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double count=0;
  Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Basic StateFull Widget'),
      ),
      body: SafeArea(
        child:Center(
        child: Column(
          children: <Widget>[ 
            Text("""$count""",style: TextStyle(fontSize: 30.0,color: textcolor),),
             SizedBox(
                height: 80.0,
              ),
            RaisedButton(
              child: Text("Arttır"),
              onPressed: ()=>arttir(),
            ),
            SizedBox(
                height: 60.0,
              ),
            RaisedButton(
              child: Text("Sıfırla"),
              onPressed: ()=>sifirla(),
          ),
          SizedBox(
                height: 60.0,
              ),
            RaisedButton(
              child: Text("x5",style: TextStyle(fontSize: 25.0),),
              onPressed: ()=>carpibes(),
          ),
          SizedBox(
                height: 60.0,
              ), 
			  RaisedButton(
              child: Text("/5",style: TextStyle(fontSize: 25.0),),
              onPressed: ()=>bolubes(),
          ),
          SizedBox(
                height: 60.0,
              ),
           ],
  ),
  ),  

      ), 
    );
  }
  arttir(){
    setState(() {
     count++; 
     textcolor=Colors.black87;
    });
    }
  sifirla(){
    setState(() {
     count=0; 
     textcolor=Colors.green;
    });
    }
  carpibes(){
    setState(() {
     count=count*5; 
     textcolor=Colors.red;
    });}
	bolubes(){
    setState(() {
     count=count/5; 
     textcolor=Colors.purple;
    });
    }
}
 