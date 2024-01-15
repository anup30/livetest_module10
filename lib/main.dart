// live test 15.1.24, news feed orientation
import 'package:flutter/material.dart';

void main(){runApp(const MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Feed'),backgroundColor: Colors.blue,),
      body: LayoutBuilder( // <---------------
        builder: (BuildContext context, BoxConstraints constraints) {
          return OrientationBuilder( // <------------------------------------------------------------
            builder: (BuildContext context, Orientation orientation) {
              bool isPortrait = orientation==Orientation.portrait? true:false;
              return Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.only(left: 40,right: 40),
                  child: ListView(
                    scrollDirection: isPortrait ? Axis.vertical:Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey[200],
                          child: Center(child: Text('news feed')),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}