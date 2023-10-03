import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final bool isLoading;
  const CustomButton({
    Key? key,
    required this.text,
    required this.height,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
      height: height,
      width: double.infinity,
      alignment: Alignment.center,
      child: isLoading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
