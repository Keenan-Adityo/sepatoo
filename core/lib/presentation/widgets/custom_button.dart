import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final Color color;

  CustomButton({
    required this.text,
    required this.callback,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(13),
        color: color,
        child: InkWell(
          onTap: callback,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 17, horizontal: 25),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: kButtonText.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
