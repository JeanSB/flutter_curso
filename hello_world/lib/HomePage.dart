import 'package:flutter/material.dart';
import 'package:hello_world/HomeController.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     var controller = HomeController.of(context);

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('teste flutter'),
    //   ),
    //   body: Center(
    //     child: Text('teste ${controller.value}'),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     child: Icon(Icons.add),
    //     onPressed: (){
    //       controller.increment();
    //     },
    //   ),
    // );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('teste flutter'),
      ),
      body: Center(
        child: Text('teste $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}