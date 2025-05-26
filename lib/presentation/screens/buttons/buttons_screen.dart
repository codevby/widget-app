import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_rounded),
              label: Text("Elevated Icon"),
            ),
            FilledButton(onPressed: () {}, child: const Text("Filled")),
            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add_a_photo),
              label: Text('Filled Icon'),
            ),
            OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal),
              label: const Text('Outline Icon'),
            ),
            TextButton(onPressed: () {}, child: const Text("Text Button")),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_time),
              label: const Text('Text Icon'),
            ),

            //TODO: Custom Button
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: MaterialStatePropertyAll(Colors.white),
              ),
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Custom Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
