import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ModalBottom extends StatelessWidget {
  ModalBottom({
    super.key,
    required this.addTask,
  });

  // String textValue = '';

  // void handleOnClick() {
  //   print(textValue);
  // }

  final Function addTask;
  TextEditingController controller = TextEditingController();

  void _handleOnClick(BuildContext context) {
    final name = controller.text;
    if (name.isEmpty) {
      return;
    }
    addTask(name);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              // onChanged: (text) {
              //   textValue = text;
              // },
              controller: controller,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Apply border radius for enabled state
                    borderSide: const BorderSide(
                        color:
                            Colors.grey), // Customize the border side if needed
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Apply border radius for focused state
                    borderSide: const BorderSide(
                        color: Colors.blue), // Border color when focused
                  ),
                  labelText: 'Your Task'),
            ),
            const SizedBox(width: double.infinity, height: 20),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () => _handleOnClick(context),
                child: const Text('Add task'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
