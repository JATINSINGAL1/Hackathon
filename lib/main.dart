import 'package:flutter/material.dart';
import 'package:xyz/advance_page.dart';
import 'package:xyz/common/appbar.dart';
import 'package:xyz/common/maintile.dart';
import 'package:xyz/beginnerpage.dart';

import 'text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CAppbar(),
            const SearchBar(
              hintText: 'Search ...',
              elevation: WidgetStatePropertyAll(0),
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              controller: null,
              padding: WidgetStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 8.0)),
              side: WidgetStatePropertyAll<BorderSide>(
                  BorderSide(color: Color.fromRGBO(113, 90, 242, 1))),
              trailing: <Widget>[
                Tooltip(
                  message: 'Change brightness mode',
                )
              ],
            ),
            const Text(
              'Learn from our learning tracks',
              style:
                  TextStyle(color: Color.fromRGBO(91, 91, 91, 1), fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BeginnerPage(),
                    ));
              },
              child: Maintile(
                discription: text1,
                text: title1,
                image: image1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Advancepage(),
                    ));
              },
              child: Maintile(
                discription: text2,
                text: title2,
                image: image2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Maintile(
              discription: text3,
              text: title3,
              image: image3,
            ),
          ],
        ),
      ),
    );
  }
}
