import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.backspace,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  'Create an account',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 380,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: ('Email Address'),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 380,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: ('Password'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('SAVE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
