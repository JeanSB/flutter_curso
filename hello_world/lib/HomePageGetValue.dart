import 'package:flutter/material.dart';

class HomePageGetValue extends StatefulWidget {
  const HomePageGetValue({Key? key}) : super(key: key);

  @override
  State<HomePageGetValue> createState() => _HomePageGetValueState();
}

class _HomePageGetValueState extends State<HomePageGetValue> {
  final controller = TextEditingController();
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('teste flutter'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final text = controller.text;
                    setState(() {
                      list.add(text);
                      list.sort();
                    });
                    controller.clear();
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final item = list[index];
                return ListTile(
                  title: Text(item),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
