import 'package:flutter/material.dart';

class PinnedPage extends StatelessWidget {
  const PinnedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pinned Page"),
      ),
      body: SafeArea(
        child: Center(child: Text("Pinned Page")),
      ),
    );
  }
}
