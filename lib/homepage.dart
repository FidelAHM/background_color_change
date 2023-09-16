import 'package:flutter/material.dart';
import 'package:test_application/widgets/container.dart';
import 'package:test_application/widgets/texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;
  final Color _originalColor = Colors.white;
  ////function to change background color
  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Colors.indigo;
    });
  }
////function to reset to the original
  void _resetToOriginalColor() {
    setState(() {
      _backgroundColor = _originalColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Container(
        color: _backgroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ContainerWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextWidget(
                text: 'Tap anywhere to change the \n color of the background'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: _resetToOriginalColor,
              icon: const Icon(Icons.color_lens),
              label: const Text('Back to the Original color'),
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.indigoAccent)),
            )
          ],
        ),
      ),
    );
  }
}
