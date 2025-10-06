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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  static bool passwordVisible = false;

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
                // Button pop
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width:
                    MediaQuery.of(context).size.width / 3,
                  ),
                ),
                Form(
                  key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: firstNameController,
                            decoration: const InputDecoration(
                              hintText: 'Ex: Alex',
                              labelText: 'Prénom *',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                            ),
                            onSaved: (String? value) {

                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                            },
                          ),
                          SizedBox(height: 24,),
                          TextFormField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                            hintText: 'Ex: Perez',
                            labelText: 'Nom *',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                            onSaved: (String? value) {

                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                            },),
                          SizedBox(height: 24,),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                            hintText: 'Ex: alex@gmail.com',
                            labelText: 'Adresse mail *',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                            onSaved: (String? value) {

                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                            },),
                          SizedBox(height: 24,),
                          TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                            hintText: '**********',
                            labelText: 'Mot de passe *',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                            onSaved: (String? value) {

                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                            },),
                          SizedBox(height: 24,),
                          Button(
                            onTap: (){
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, HomeScreen.routeName);
                              }
                            },
                            label: 'Créer mon compte',
                            status: 'main',
                          ),
                        ],
                      ),
                    )
                ),
                // FORM
                // BUTTON
                // TEXT
              ],
            ),
          ),
        ),
      ),
    );
  }
}
