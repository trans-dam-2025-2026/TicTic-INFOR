import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/widgets/button.dart';

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
                          TextFormField(decoration: const InputDecoration(
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
                            },),
                          TextFormField(decoration: const InputDecoration(
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
                            },),
                          TextFormField(decoration: const InputDecoration(
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
                            },),
                          Button(
                            onTap: (){
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Processing Data')),
                                );
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
