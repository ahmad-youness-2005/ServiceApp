import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreen();
}

class _loginscreen extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Image.asset(
                'assets/logo.png', // Replace with your logo asset path
                height: 40,
              ),
              const SizedBox(height: 80),
              const Text(
                'Login to your Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'password'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0B3C89),
                  foregroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Sign in'),
              ),
              const SizedBox(height: 24),
              const Text(
                'Or sign in with',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 30,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/google.jpeg',height: 60,
                      width: 60,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/facebook.png',height: 60,
                      width: 60,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/twitter.png',height: 60,
                      width: 60,),
                    onPressed: () {},
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      // Could navigate to a Register screen here
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
