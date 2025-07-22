import 'package:flutter/material.dart';

class MyListtyle extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const MyListtyle({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 25),
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(text),
      onTap: onTap,
    );
  }
}