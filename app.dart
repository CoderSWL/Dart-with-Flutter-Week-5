import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Challenge'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Welcome message
            Text(
              'Welcome to the Flutter Challenge!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Add some space between elements

            // Interactive Button
            ElevatedButton(
              onPressed: () {
                print('Button clicked! 🚀');
              },
              child: Text('Click Me!'),
            ),
            SizedBox(height: 20), // Add space between button and image

            // Image from the internet
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-bg-5f36f4a1e6abdb1a062b84235bb81823f98a08ca5f65d2dce22f7df585c62523.png',
              height: 200, // Limit image size
              width: double.infinity, // Make image stretch across the screen
              fit: BoxFit.cover, // Maintain image aspect ratio while filling space
            ),
          ],
        ),
      ),
    );
  }
}
