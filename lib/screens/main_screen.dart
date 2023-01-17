import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Card(
                      child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text("Airtel Money")),
                  )),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  child: Card(
                      child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text("Airtel Money")),
                  )),
                ),
                Positioned(
                  top: 124,
                  left: 25,
                  child: CustomPaint(
                    painter: HolderPainter(),
                  ),
                ),
                Positioned(
                  top: 124,
                  right: 55,
                  child: CustomPaint(
                    painter: HolderPainter(),
                  ),
                ),
                Positioned(
                  top: 122,
                  left: 40,
                  child: CustomPaint(
                    painter: RopePainter(),
                  ),
                ),
                Positioned(
                  top: 122,
                  right: 40,
                  child: CustomPaint(
                    painter: RopePainter(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RopePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.grey;
    paint.strokeWidth = 3;
    paint.style = PaintingStyle.stroke;

    canvas.drawLine(Offset(0, 0), Offset(0, 32), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class HolderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.grey;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;

    canvas.drawLine(const Offset(0, 0), Offset(30, 0), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
