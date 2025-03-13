import 'package:flutter/material.dart';

class LayoutWidget extends StatefulWidget {
  final double height;
  final double width;
  const LayoutWidget({super.key, required this.height, required this.width});

  @override
  State<LayoutWidget> createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  late double width;
  late double height;

  @override
  void initState() {
    width = widget.width;
    height = widget.height;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: width,
                height: height,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Peter Bishop | Software Engineer")],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
