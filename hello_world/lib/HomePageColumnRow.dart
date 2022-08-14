import 'package:flutter/material.dart';

class HomePageColumnRow extends StatefulWidget {
  const HomePageColumnRow({Key? key}) : super(key: key);

  @override
  State<HomePageColumnRow> createState() => _HomePageColumnRowState();
}

class _HomePageColumnRowState extends State<HomePageColumnRow> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    final names = [
      'jean',
      'flavinha',
      'lilyzinha',
      'jean',
      'flavinha',
      'lilyzinha',
      'jean',
      'flavinha',
      'lilyzinha'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('teste flutter'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: ((context, index) {
            final name = names[index];
            return Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.all(8),
              color: Colors.green,
              child: ListTile(
                title: Text(name),
              ),
            );
            // return ListTile(
            //   title: Text(name),
            // );
          }),
          // children: [
          //   for (var i = 0; i < 10; i++)
          //     Container(
          //       width: double.infinity,
          //       height: 80,
          //       margin: const EdgeInsets.all(8),
          //       color: Colors.green,
          //     )
          // ],
        ),
      ),
    );
  }
}
