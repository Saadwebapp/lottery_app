import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 8;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winnig number is 8")),
            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: x== 7?Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.done,color: Colors.green,),
                    SizedBox(height: 20,),
                    Text("Congratulations You Have Won the lottery Your Number Is $x",textAlign: TextAlign.center ,)
                  ],
                ):Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline,color: Colors.red,),
                    SizedBox(height: 20,),
                    Text("Better Luck Next Time Your Number Is $x\n Try Again", textAlign: TextAlign.center ,)
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x= random.nextInt(10);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh, size: 30,),
        ),
      ),
    );
  }
}
