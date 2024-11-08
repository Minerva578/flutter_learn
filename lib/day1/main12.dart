import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
          physics: ClampingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text((index+1).toString()),
              ),
              title: Text('Item $index'),
              subtitle: Text('sub Item $index'),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              indent: 20.0,
              endIndent: 20.0,
            );
          },
        ),
      ),
    );
  }
}
