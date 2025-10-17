import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/screens/login_screen.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/sizes.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/styles/texts.dart';
import 'package:tictic_infor/widgets/slider/info_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/homepage';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final _items = ['Total à payer', 'Total à recevoir', 'Dernière transaction'];

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
                vertical: kVerticalPadding,
              ),
              child: Text('Actions rapides', style: kTitleSideBar),
            ),
            ListTile(title: Text('Créer un groupe', style: kTextSideBar)),
            ListTile(title: Text('Inviter une personne', style: kTextSideBar)),
            ListTile(
              title: Text('Ajouter une transaction', style: kTextSideBar),
            ),
            ListTile(
              title: GestureDetector(
                onTap: () async {
                  await FirebaseAuth.instance.signOut().then((value) => {
                  Navigator.pushNamed(
                  context, LoginScreen.routeName)
                  });
                },
                child: Text('Je me déconnecte', style: kTextSideBar),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kBorderColor,
                          width: kBorderWidth,
                        ),
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kBackgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(kIconPadding),
                        child: Icon(Icons.menu, size: kIconSize),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    width: 44,
                    height: 44,
                    'assets/icons/logo.svg',
                  ),
                ],
              ),
            ),
            SizedBox(height: kMediumSpace),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 6,
              backgroundImage: AssetImage('assets/img/dog.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: kVerticalPadding,
                left: kHorizontalPadding,
                right: kHorizontalPadding,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hey, Daniel !',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: kMainColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: kHorizontalPadding,
                right: kHorizontalPadding,
                bottom: kVerticalPadding,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'On vous doit de l’argent.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: kMainColor,
                  ),
                ),
              ),
            ),
            InfoSlider(items: _items),
          ],
        ),
      ),
    );
  }
}
