import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Nombre de ruta'),
          onTap: () {},
        ),
        separatorBuilder:(_, __) => const Divider(),
        itemCount: 10
      )
    );
  }
}