import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice',
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String data = "Durga Prajapati";
  Widget _bodyWidget(){
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data, style: const TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.green),),
            ElevatedButton(
                onPressed: (){
            setState(() {
            if(data.startsWith("D")) {
            data = "Sabita Kumhal";
            }
            else
            data = "Durga Prajapati";
            });
                },
                child: const Text(
                  "Click",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                  ),),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Practice Page"),
      ),
      body: _bodyWidget(),
    );
  }
}

