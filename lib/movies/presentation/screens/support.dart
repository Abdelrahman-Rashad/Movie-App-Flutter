import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple,
          margin: const EdgeInsets.all(20),
          child: const Text("Hello! i am inside a container!",
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

/**/ 
/*import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home
        : Scaffold(appBar
                   : AppBar(title
                            : const Text("Container example"),
                           ),
                     body
                   : Container(color
                               : Colors.purple,
                               child
                               : const Text("Hello! i am inside a container!",
                                      style
                                      : TextStyle(fontSize : 20)),
                              ),
                  ),
    );
  }
} */