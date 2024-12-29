import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xyz/common/appbar.dart';

class ImagesDisplay extends StatelessWidget {
  ImagesDisplay({super.key, required this.image});
  final List<dynamic> image ;
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
