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
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            // More ListTile items (2 to 6) as shown in the code
          ],
        ),
      ),
    );
  }
}
