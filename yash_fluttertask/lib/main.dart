import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String heads = "It's Heads";
String tails = "It's Tails";
bool flag = true;
String Head = "assets/images/heads.jpg";
String Tail = "assets/images/tails.jpg";
const primaryColor = Colors.pink;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flipper",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            title: const Text("Flip the Coin"),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 160),
                    Text(flag ? heads : tails,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30),
                    Image.asset(
                      flag ? Head : Tail,
                      width: 300,
                      height: 300,
                    ),
                    const SizedBox(height: 60),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {
                          flag = !flag;
                          setState(() {});
                        },
                        child:
                            const Text("Turn", style: TextStyle(fontSize: 25)))
                  ],
                )),
              ],
            ),
          ),
        ));
  }
}
