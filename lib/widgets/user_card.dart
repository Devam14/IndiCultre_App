import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffF6F6F6),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/man.png',
            height: 48,
            width: 48,
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            "Echreza",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "2.822 ETH",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff25D76C),
            ),
          )
        ],
      ),
    );
  }
}
