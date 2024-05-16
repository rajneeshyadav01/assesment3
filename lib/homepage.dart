import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<int> list = [ 10,23,24,57,67,87,56,87,77,89,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),),
      body: ListView.builder(
        itemCount:  list.length,
          itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("The tapped item is: ${list[index].toString()}") ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400]
                ),
                child: ListTile(
                  title:  Text(list[index].toString()),
                ),
              ),
            ),
          );

      })
    );
  }
}
