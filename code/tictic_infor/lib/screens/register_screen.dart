import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/l10n/app_localizations.dart';
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
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
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: AppLocalizations.of(context)!.mailLabel,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(kHorizontalPadding),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: AppLocalizations.of(context)!.lastnameLabel,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(kHorizontalPadding),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: AppLocalizations.of(context)!.mailLabel,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(kHorizontalPadding),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: AppLocalizations.of(context)!.passwordLabel,
                          ),
                        ),
                      ),
                      MainButton(
                        onTap: (){
                          Navigator.pushNamed(context, HomeScreen.routeName); // Renvoyer vers le onboarding la première fois
                        },
                        label: AppLocalizations.of(context)!.register,
                        status: 'main',
                      ),
                    ],
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
