import 'package:flutter/material.dart';

import '../resources/font_manager.dart';
import '../resources/styles_manager.dart';

class NoteTitle extends StatelessWidget {
  const NoteTitle({
    Key? key,
    required TextEditingController titleController,
  }) : _titleController = titleController, super(key: key);

  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _titleController,
      maxLines: 1,
      textInputAction: TextInputAction.next,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: "Title here...",
        filled: false,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      style: getMediumStyle(
        color: Colors.black,
        fontSize: FontSize.s28,
      ),
    );
  }
}

