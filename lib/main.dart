import 'package:flutter/material.dart';
import 'signup.dart';

void main() {
  runApp(
    const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>(); //key for form
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 85, 172, 226),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 58, 157, 237),
                  backgroundImage: AssetImage(
                    ('images/king1.png'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'LoGin PaGE',
                  style: TextStyle(
                      fontFamily: 'MouseMemoirs',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 50,
                  width: 250,
                  child: Divider(color: Colors.black),
                ),
                SizedBox(
                  width: 380,
                  child: Form(
                    key: formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.people_alt_outlined,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: ('Email Address'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 380,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        icon:
                            Icon(Icons.password_outlined, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: 'Password'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                      child: const Text('Sign up'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/king2.png'))),
                    const SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/king4.png'))),
                    const SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('images/king5.png'))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
