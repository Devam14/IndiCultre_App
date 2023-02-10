import 'package:flutter/material.dart';

import '../utils/routes.dart';

class NFTCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  final Function() onTap;

  const NFTCard({super.key, this.title = "NFT Bored Bunny", this.image="", this.price="8.2K", required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(255, 156, 148, 148).withOpacity(0.5),
            width: 0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 146 / 136,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 10),
                          spreadRadius: 0,
                          blurRadius: 15)
                    ],
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/monkey.png",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 2.9),
                     child: Text(title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 0, 0))),
                   ),
                  const SizedBox(
                    width: 1,
                  ),
                  Image.asset(
                    "assets/general.png",
                    height: 16,
                    width: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 0,
                thickness: 1,
                color: Color(0xffF6F6F6),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Last:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xffA9ADB7),
                    ),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
