import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = '';
  String password = '';
  _navigateToHome() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/logo.png'),
          title: Text("Halaman Login"),
        ),
        body: Column(
          children: [
            _logo(),
            _gambar(),
            _form(),
            _loginbutton(context),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Image.asset('assets/logo.png'),
      ),
    );
  }

  Widget _gambar() {
    return const Image(image: AssetImage('assets/illustrations.png'));
  }

  Widget _form() {
    return Form(
        child: TextFormField(enabled: true, onChanged: (value) {
      username = value;
    },
            decoration: InputDecoration(
              hintText: 'Username',
            ),
            onSaved: (String? value){
              FormFieldValidator(String? value){
                return(value != null && value.contains('@')) 
                ? '' : null;
              };
            };
  }

  Widget _loginbutton(context) {
    return Container(
      child:
          Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
    );
  }
}
