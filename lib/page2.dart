import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:xyz/display.dart';
import 'package:xyz/text.dart';

class JsonExample extends StatefulWidget {
  @override
  _JsonExampleState createState() => _JsonExampleState();
}

class _JsonExampleState extends State<JsonExample> {
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
          title: const Text(
            "ARtistry",
          ),
          actions: [const Icon(Icons.account_circle_outlined)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title1,
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 24, color: Color.fromRGBO(113, 90, 242, 1)),
            ),
            Text('Click on the image you want to draw',style: TextStyle(fontSize: 16),),
            _items.isEmpty
                ? Center(child: CircularProgressIndicator())
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
