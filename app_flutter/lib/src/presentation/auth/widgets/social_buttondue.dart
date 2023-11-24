import 'package:flutter/material.dart';

class SocialButtonDue extends StatefulWidget {
  const SocialButtonDue({super.key});

  @override
  State<SocialButtonDue> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButtonDue> {
  var isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: 48,
          decoration: BoxDecoration(
            color: isHovered
                ? const Color.fromARGB(255, 136, 136, 136)
                : const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'Explore',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
