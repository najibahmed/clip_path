import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Hello'),
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    color: Colors.orangeAccent,
                    height: 400,
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blueGrey,
                    ),

                    child: const Center(child: Text('GO',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width*0.0019714,size.height*0.3752750);
    path.quadraticBezierTo(size.width*0.1649143,size.height*0.3489000,size.width*0.3027714,size.height*0.3368250);
    path.cubicTo(size.width*0.3621429,size.height*0.3073750,size.width*0.3237429,size.height*0.1312000,size.width*0.4875143,size.height*0.1230500);
    path.cubicTo(size.width*0.6760857,size.height*0.1167500,size.width*0.6323429,size.height*0.3018250,size.width*0.6842857,size.height*0.3369000);
    path.quadraticBezierTo(size.width*0.8155429,size.height*0.3523250,size.width*1.0001714,size.height*0.3696000);
    path.lineTo(size.width*0.9991143,size.height*1.0012750);
    path.lineTo(size.width*0.0011714,size.height*0.9998750);
    path.lineTo(size.width*0.0019714,size.height*0.3752750);
    path.close();

    // throw UnimplementedError();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}
