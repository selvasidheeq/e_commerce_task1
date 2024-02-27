import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  const PrimaryButton({
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                       onPressed: onPressed,
                           
                           child: Text(label),
                            style: ElevatedButton.styleFrom(
                              padding:  EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                             primary: Colors.black, // Change color here
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)// Set circular border radius
                                ),
                              ),
                            ),
    );
  }
}