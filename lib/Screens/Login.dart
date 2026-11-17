import 'package:flutter/material.dart';
import 'SignupPage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.account_circle, size: 100),
             SizedBox(height: 40),
            Form(
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration:  InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                      ),
                    ),
                  ),
                   SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    decoration:  InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (emailController.text.isEmpty || passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text('ولا دخل الداتا صح')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text('ألف مبروك يا حبيب اخوك')),
                    );
                  }
                },
                child:  Text("Login"),
              ),
            ),
             SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Signuppage()));
              },
              child:  Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}