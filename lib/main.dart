import 'package:flutter/material.dart';
import 'package:settings_app/pages/login_page.dart';
import 'package:settings_app/pages/settings_page.dart';
import 'package:settings_app/pages/share_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          headline4: TextStyle(color: Colors.white),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          centerTitle: true,
          actions: [
            // Theme(
            //   data: Theme.of(context).copyWith(
            //     dividerColor: Colors.white,
            //     iconTheme: IconThemeData(color: Colors.white),
            //     textTheme: TextTheme().apply(bodyColor: Colors.white),
            //   ),
            // ),
            Theme(
                data: Theme.of(context).copyWith(
                  iconTheme: IconThemeData(color: Colors.white),
                  dividerColor: Colors.white,
                  visualDensity: VisualDensity.compact,
                  textTheme: TextTheme().apply(bodyColor: Colors.white),
                  // textTheme: TextTheme().apply(bodyColor: Colors.white),
                ),
                child: PopupMenuButton<int>(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    // padding: EdgeInsets.only(right: 15),
                    // offset: Offset(-70, 120),
                    onSelected: (item) => onSelected(context, item),
                    color: Colors.indigo,
                    itemBuilder: (context) => [
                          PopupMenuItem<int>(
                            value: 0,
                            child: Text('Settings'),
                          ),
                          PopupMenuItem<int>(
                            value: 1,
                            child: Text('Share'),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem<int>(
                            value: 2,
                            child: Row(
                              children: [
                                Icon(Icons.logout),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Sign Out',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ]))
          ],
        ),
      );

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => SettingsPage()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (_) => SharePage()));
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false,
        );
    }
  }
}
