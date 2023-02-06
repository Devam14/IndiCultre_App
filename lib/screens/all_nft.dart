import 'package:flutter/material.dart';
import 'package:indicultre/screens/connectwallet.dart';
import 'package:indicultre/utils/routes.dart';
import 'package:indicultre/widgets/nft_card.dart';
import 'package:indicultre/widgets/user_card.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [              
              AppBar(
                elevation: 0,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                automaticallyImplyLeading: false,
                titleSpacing: 40,
                title: IconButton(
                      icon: const Icon(Icons. arrow_back,color: Color.fromARGB(255, 0, 0, 0),),
                      onPressed: () {Navigator.pushNamed(context, MyRoutes.home);},
                    ),
                actions: [
                  InkWell(
                    child: Image.asset(
                      'assets/search.png',
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/notification.png',
                      width: 20,
                      height: 20,
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              const Text(
                'All NFTs',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff151516),
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              GridView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 162 / 232,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                ),
                children: List.generate(4, (index) {
                  return NFTCard(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                  );
                }),
              ),
             const SizedBox(height: 24),
             GridView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 162 / 232,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                ),
                children: List.generate(4, (index) {
                  return NFTCard(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                  );
                }),
              ),
              const SizedBox(height: 24),
              GridView(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 162 / 232,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                  ),
                  children: List.generate(4, (index) {
                    return NFTCard(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.details);
                      },
                    );
                  }),
                ),
               const SizedBox(height: 24),
                GridView(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 162 / 232,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 24,
                    ),
                    children: List.generate(4, (index) {
                      return NFTCard(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.details);
                        },
                      );
                    }),
                  ),  
              const SizedBox(
                height: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
