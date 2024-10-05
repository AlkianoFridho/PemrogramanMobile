import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun'),
        backgroundColor: const Color(0xFF613613),
      ),
      body: const Center(
        child: Text('Halaman Akun'),
      ),
    );
  }
}
