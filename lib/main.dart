import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(hintColor: Colors.white70)));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Column(
              children: [
                buildContainer(Color.fromARGB(255, 255, 255, 255)),
                buildContainer(Color.fromARGB(255, 0, 100, 255)),
                buildContainer(Color.fromARGB(255, 255, 255, 255)),
                buildContainer(Color.fromARGB(255, 0, 100, 255)),
                buildContainer(Color.fromARGB(255, 255, 255, 255)),
                buildContainer(Color.fromARGB(255, 0, 100, 255)),
                buildContainer(Color.fromARGB(255, 255, 255, 255)),
                buildContainer(Color.fromARGB(255, 0, 100, 255)),
                buildContainer(Color.fromARGB(255, 255, 255, 255)),
              ],
            ),
            Positioned(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://i.pinimg.com/564x/55/eb/1d/55eb1dd73b8a01431482742cbfefa9dd.jpg'),
              ),
              width: 125,
              height: 125,
              color: Colors.white,
            ))
          ],
        ),
      ],
    );
  }

  Container buildContainer(Color cor) {
    return Container(
      height: 28,
      width: MediaQuery.of(context).size.height,
      color: cor,
    );
  }
}
