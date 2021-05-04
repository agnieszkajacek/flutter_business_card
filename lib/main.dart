import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async{
  await DotEnv.load(fileName: ".env");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.cyan[900],
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/avatar.jpg'),
                ),
                Text(DotEnv.env['USERNAME'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico')),
                Text(DotEnv.env['ROLE'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'OpenSansCondensed-Light',
                        letterSpacing: 1)),
                SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(color: Colors.white)),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.cyan[600]),
                      title: Text(
                        DotEnv.env['PHONE'],
                        style: TextStyle(
                            fontFamily: 'OpenSansCondensed-Light',
                            fontSize: 16,
                            color: Colors.cyan[900]),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.cyan[600]),
                      title: Text(
                        DotEnv.env['EMAIL'],
                        style: TextStyle(
                            fontFamily: 'OpenSansCondensed-Light',
                            fontSize: 16,
                            color: Colors.cyan[900]),
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}
