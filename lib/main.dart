import 'package:flutter/material.dart';

void main() {
  runApp(const STFWApps());
}

class STFWApps extends StatefulWidget {
  const STFWApps({Key? key}) : super(key: key);

  @override
  _STFWAppsState createState() => _STFWAppsState();
}

class _STFWAppsState extends State<STFWApps> {
  int pnumber = 0;
  void buttonpress() {
    setState(() {
      pnumber = pnumber + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Belajar Statefull Widget",
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.white, Colors.blue, Colors.red])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pnumber.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18 + pnumber.toDouble()),
                ),
                ElevatedButton(
                    onPressed: buttonpress,
                    child: const Text("Increment Number"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
