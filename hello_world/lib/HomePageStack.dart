import 'package:flutter/material.dart';

class HomePageStack extends StatefulWidget {
  const HomePageStack({Key? key}) : super(key: key);

  @override
  State<HomePageStack> createState() => _HomePageStackState();
}

class _HomePageStackState extends State<HomePageStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('teste flutter'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/imgs/img_test.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.7),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 150,
                    style: FlutterLogoStyle.stacked,
                    textColor: Colors.blue,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Entrar no app"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
