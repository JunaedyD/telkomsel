import 'package:flutter/material.dart';

class Sosmed extends StatelessWidget {
  const Sosmed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      child: GridView(
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 8/3),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              // color: Colors.red,
              child: Image.asset(
                'assets/images/Google.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              // color: Colors.red,
              child: Image.asset(
                'assets/images/Apple.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              // color: Colors.red,
              child: Image.asset(
                'assets/images/Huawei.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              // color: Colors.red,
              child: Image.asset(
                'assets/images/Oppo.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
