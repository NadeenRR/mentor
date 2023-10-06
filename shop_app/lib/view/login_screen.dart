import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/route.dart';
import 'package:shop_app/widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/shop.png'),
            const Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: MyTextField(hintText: 'User name'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: MyTextField(hintText: 'Password'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              onPressed: () => context.pushReplacement(homeRoute),
              child: const Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
