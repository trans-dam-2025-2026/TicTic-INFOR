import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/styles/images.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/widgets/main_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        // Pour initier le fond
        decoration: BoxDecoration(
          // Pour mettre un fond type couleur ou autre
          image: DecorationImage(
            // Pour mettre une image
            image: AssetImage('assets/img/back1.png'), // Le chemin de l'image
            fit: BoxFit.cover, // La façon dont l'image doit fit dans l'écran
          ),
        ),
        child: SafeArea(
          child: Form(
            key: _formKey,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('Return'),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: MediaQuery.of(context).size.width * kLogoRatioPercentage,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kHorizontalPadding),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your firstname',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kHorizontalPadding),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your lastname',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kHorizontalPadding),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your mail',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kHorizontalPadding),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password',
                      ),
                    ),
                  ),
                  MainButton(
                    onTap: (){
                      Navigator.pushNamed(context, HomeScreen.routeName); // Renvoyer vers le onboarding la première fois
                    },
                    label: 'S’inscrire',
                    status: 'main',
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
