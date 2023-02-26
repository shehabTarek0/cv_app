import 'package:flutter/material.dart';

class Home3Screen extends StatelessWidget {
  const Home3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('السيره الذاتيه'),
      ),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:const [
                SizedBox(
                  height: 130.0,
                  width: 150.0,
                ),
                Image(
                  image: AssetImage('images/cvvv.jpeg'),
                  height: 250.0,
                  width: 250.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 70.0,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Container(
          height: 90.0,
        ),
      ),
    );
  }
}
