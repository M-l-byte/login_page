import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login Page",
            style: TextStyle(fontSize: 23),
          ),

          //foregroundColor: Colors.green,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Center(
                child: Image(
                    image:
                        ResizeImage(AssetImage('images/logo.png'), width: 200)),
              ),
              const SizedBox(height: 35),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "User Name", border: OutlineInputBorder()),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  onPressed: () {},
                  child: const Text('Login '),
                ),
              ),
              const SizedBox(height: 120),
              const Center(
                child: Text('New User?Create Account'),
              ),
            ],
          ),
        ));
  }
}
