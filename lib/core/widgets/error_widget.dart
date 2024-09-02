import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.red,
      child: Text(
        errorMessage,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
