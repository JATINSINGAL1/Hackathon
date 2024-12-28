import 'package:flutter/material.dart';
import 'package:xyz/text.dart';

class Maintile extends StatelessWidget {
  const Maintile(
      {super.key,
      required this.text,
      required this.discription,
      required this.image});

  final String text;
  final String discription;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style:const TextStyle(
                        color: Color.fromRGBO(113, 90, 242, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    discription,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Image.asset(image)
          ],
        )
      ],
    );
  }
}
