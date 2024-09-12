import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardBody extends StatelessWidget {
  // final DataItems item;
  CardBody(
      {super.key,
      required this.item,
      required this.deleteTask,
      required this.index});
  // ignore: prefer_typing_uninitialized_variables
  var item;
  final Function deleteTask;
  // ignore: prefer_typing_uninitialized_variables
  var index;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 79,
        decoration: BoxDecoration(
            color: index % 2 == 1
                ? const Color(0xffDFDFDF)
                : const Color(0xff7FA3DB),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff4B4B4B),
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () async {
                  if (await confirm(context)) {
                    deleteTask(item.id);
                  }
                  return;
                },
                child: const Icon(Icons.delete_outline,
                    color: Color(0xff4B4B4B), size: 30),
              ),
            ],
          ),
        ));
  }
}
