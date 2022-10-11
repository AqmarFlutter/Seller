import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final String? title;

  const SettingWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title!,
            style:  const TextStyle(
              fontSize: 20.0,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
        ),
      ],
    );
  }
}
