import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/widgets/button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  static bool passwordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // BUTTON POP
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width:
                    MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Form(
                    key: _formKey,
                    child:
                    Column(
                      children: [
                        SizedBox(height: 24,),
                        TextFormField(
                          controller: firstNameController,
                          decoration: InputDecoration(
                            labelText: 'Prénom *',
                            hintText: 'Ex: Nathan',
                            border: const OutlineInputBorder(
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        SizedBox(height: 24,),
                        TextFormField(
                          controller: lastNameController,
                          decoration: InputDecoration(
                            labelText: 'Nom *',
                            hintText: 'Ex: Perez',
                            border: const OutlineInputBorder(
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        SizedBox(height: 24,),
                        TextFormField(
                          controller: mailController,
                          decoration: InputDecoration(
                            labelText: 'Adresse mail *',
                            hintText: 'Ex: johndoe@example.com',
                            border: const OutlineInputBorder(
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        SizedBox(height: 24,),
                        TextFormField(
                          controller: passwordController,
                          obscureText: passwordNotVisible,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Mot de passe *',
                            hintText: '********',
                            border: const OutlineInputBorder(
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordNotVisible = !passwordNotVisible;
                                });
                              },
                              icon: Icon(passwordNotVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                        ),

                        SizedBox(height: 24,),
                        Button(
                          onTap: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                          label: 'Créer un compte',
                          status: 'main',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
