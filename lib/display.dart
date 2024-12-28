import 'package:flutter/material.dart';
import 'package:xyz/common/appbar.dart';

class ImagesDisplay extends StatelessWidget {
  ImagesDisplay({super.key, required this.image});
  final List<dynamic> image ;
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
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,crossAxisSpacing: 10,mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            
            return Image.network(image[index]['image'],height: 100,width: 100,);
          },
        ),
      ),
    );
  }
}
