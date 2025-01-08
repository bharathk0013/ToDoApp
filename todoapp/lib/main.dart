import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: todolist(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
//
class todolist extends StatefulWidget {
  const todolist({super.key});

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO"),
        backgroundColor: Colors.blue,
        toolbarHeight: 50,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 90,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index){
                return Card(
                  child: Row(
                    children: [
                      Text("message"),
                      Text("done"),
                    ],
                  ),
                );
            
            }
            ),
            ),
          Expanded(
            flex: 10,
            child: Row(
            children: [
              Expanded(
                flex: 70,
                child: Container(
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Task......",
                    ),
                  ),
                )
                ),
              Expanded(
                flex: 3,
                child: SizedBox(width: 5,)),
              Expanded(
                flex: 27,
                child: ElevatedButton(onPressed: (){

                }, 
                child: Text("ADD"))),
            ],
          )),
        ],
      ),
    );
    
  }
}

