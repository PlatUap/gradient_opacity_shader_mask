import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Opacity"),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(
                Rect.fromLTRB(0, 0, rectangle.width, rectangle.height),
              );
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 300,
              image: NetworkImage("https://picsum.photos/seed/picsum/400/600"),
            ),
          ),
        ),
      ),
    );
  }
}
