import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xyz/display.dart';
import 'package:xyz/text.dart';

class BeginnerPage extends StatefulWidget {
  @override
  _BeginnerPageState createState() => _BeginnerPageState();
}

class _BeginnerPageState extends State<BeginnerPage> {
  List<dynamic> _items = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/file/frontend_data.json');
    final data = json.decode(response);
    setState(() {
      _items = data;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: GradientText(
        'ARtistry',
        style: GoogleFonts.hubballi(fontSize: 32),
        gradientType: GradientType.radial,
        radius: 2.5,
        colors: const[
          Color.fromRGBO(113, 90, 242, 1),
          Color.fromRGBO(255, 0, 0, 1),
          
        ],
      ),
      actions: [const Icon(Icons.account_circle_outlined,size: 32,),SizedBox(width:20 ,)],
    ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title1,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color.fromRGBO(113, 90, 242, 1)),
            ),
            const Text(
              'Click on the image you want to draw',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            _items.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : SizedBox(
                    // width: 100,
                    height: 500,
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        final item = _items[index];
                        return Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ImagesDisplay(
                                          image: item['images'],
                                        )),
                              );
                            },
                            title: Text(item['section']),
                          ),
                        );
                      },
                    ),
                  ),
          ]),
        ));
  }
}
