import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final customSnackBar = SnackBar(
      content: Text('Snackbar message'),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(customSnackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: Text('Are You sure?'),
            content: Text(
              'Laborum deserunt sit consectetur id. Anim consequat deserunt nisi quis irure quis. Aliquip proident eiusmod veniam dolore laboris aliqua commodo elit occaecat excepteur. Ad incididunt mollit esse ut voluptate sit aliqua.',
            ),
            actions: [
              TextButton(onPressed: () => context.pop(), child: Text('Cancel')),
              FilledButton(onPressed: () => context.pop(), child: Text('Ok')),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars and Dialogs')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [Text('To see licences press the button')],
                );
              },
              child: Text('Licences'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Show Dialog'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Show Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackBar(context);
        },
      ),
    );
  }
}
