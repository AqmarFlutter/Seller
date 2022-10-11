import 'package:alshorjah_app/global_presentation/global_features/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends StatelessWidget {
  final String? title;

  const ProductWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      color: ColorManager.grey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              title!,
              style: const TextStyle(
                fontSize: 20.0,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
    );
  }
}
