import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({
    super.key,
    required this.controller,
    required this.onChanged,
  });
  final TextEditingController controller;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'サークル名、スペース名、フリーワード...',
              icon: Icon(Icons.search),
              border: InputBorder.none,
            ),
            onChanged: onChanged,
          ),
        ),
      ),
      expandedHeight: 68,
    );
  }
}
