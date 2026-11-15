import 'package:flutter/material.dart';
class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {

  int mehedi = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true, title: Text("Mehedi app developer",style: TextStyle(fontSize: 22),),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$mehedi",style: TextStyle(fontSize: 30),),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  mehedi --;
                  setState(() {});
                }, child: Text("-",style: TextStyle(fontSize: 30),)),
                ElevatedButton(onPressed: (){
                  mehedi ++;
                  setState(() {});
                }, child: Text("+",style: TextStyle(fontSize: 30),)),
              ],
            )
          ],
        ),
      ),

    );
  }
}
