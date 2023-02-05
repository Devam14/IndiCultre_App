import 'package:flutter/material.dart';
import 'package:indicultre/utils/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbe6b8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child: SizedBox(
                  width: 270,
                  height: 250,
                  child: Image.asset(
                    'assets/img.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: const Text(
                  'NFT Based\nMuseum \nMarketplace',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    height: 1.46875,
                    color: Color(0xff151516),
                  ),
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromRGBO(105, 74, 3, 3)),
                  borderRadius: BorderRadius.circular(45),
                ),
                width: 90,
                height: 90,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(105, 74, 3, 3)),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(105, 74, 3, 3),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      iconSize: 30,
                      color: Colors.white,
                      icon: const Icon(Icons.arrow_forward_outlined),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.home);
                      },
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
