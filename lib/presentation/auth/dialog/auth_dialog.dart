import 'package:flutter/material.dart';

class DialogHelper {
  static void authDialog(BuildContext context, String message) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Icon(Icons.warning_amber_rounded,
            size: 80, color: isDarkMode ? Colors.amber : Colors.red),
        content: Text(
          message,
          style: TextStyle(
              color: isDarkMode ? Colors.amber : Colors.red, fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Oke",
              style: TextStyle(color: Colors.amber),
            ),
          )
        ],
      ),
    );
  }
}
