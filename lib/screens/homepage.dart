import 'package:flutter/material.dart';
import 'package:indicultre/screens/connectwallet.dart';
import 'package:indicultre/utils/routes.dart';
import 'package:indicultre/widgets/nft_card.dart';
import 'package:indicultre/widgets/user_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                titleSpacing: 40,
                title: OutlinedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(color: Colors.brown))),
                  ),
                  child: const Text(
                    "Connect Wallet",
                    style: TextStyle(
                      color: Colors.brown,
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) => ConnectWallet(),
                    );
                  },
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
                'Top NFTs',
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
              const SizedBox(height: 50),
              const Text(
                'Top Buyers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff151516),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                child: SizedBox(
                  height: 147,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const UserCard(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 24),
                    itemCount: 5,
                    shrinkWrap: true,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.profile);
                },
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
