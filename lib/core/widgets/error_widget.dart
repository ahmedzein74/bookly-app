import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errMessage;

  const CustomErrorWidget({super.key, required this.errMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.red,
      child: Text(
        errMessage,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
