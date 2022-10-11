import 'package:flutter/material.dart';

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;
  
const MySeparator({Key? key, this.height = 1, this.color = Colors.grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 1.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (1 * dashWidth)).floor();
        return Flex(
          // ignore: sort_child_properties_last
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color.withAlpha(100)),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
