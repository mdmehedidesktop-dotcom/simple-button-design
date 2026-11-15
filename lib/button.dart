import 'package:flutter/material.dart';
class BottonScreen extends StatefulWidget {
  const BottonScreen({super.key});

  @override
  State<BottonScreen> createState() => _BottonScreenState();
}

class _BottonScreenState extends State<BottonScreen> {
  int mehedi = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlue,centerTitle:true,title: Text("Mehedi App Developer",style: TextStyle(fontSize: 22),
      ),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$mehedi",style: TextStyle(fontSize: 30),),


            InkWell(
              onDoubleTap: (){
                mehedi=mehedi+100;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 140,
                color: Colors.yellow,

              ),
            ),
            Divider(),
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
                ElevatedButton(onPressed: (){},
                    onLongPress: (){
                      mehedi *=5;
                      setState(() {});
                    },
                    child: Text("*",style: TextStyle(fontSize: 30),)),

              ],
            )


          ],
        ),
      ),
    );
  }
}
