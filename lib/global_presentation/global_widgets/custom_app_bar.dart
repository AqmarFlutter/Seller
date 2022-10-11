import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../global_features/font_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String? title;

  const CustomAppBar({
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(50.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title!,
        style:TextStyle(
            fontSize: 20.sp,
            color:Colors.blue,
            fontWeight: FontWeightManager.bold
        ) ,
      ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1.0,
        // actions: [
        //   CircleAvatar(
        //     radius: 25.0,
        //     backgroundColor: Colors.grey[200],
        //     child: IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.language,
        //           color: Colors.grey[600],
        //         )),
        //   ),
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.notifications_none_outlined,
        //         color: Colors.grey[600],
        //       )),
        //   SizedBox(
        //     width: 8.w,
        //   ),
        //   InkWell(
        //     onTap: () {},
        //     child: Image.asset(
        //       'assets/images/iconAmrcan.png',
        //       width: 20.sp,
        //       height: 20.sp,
        //     ),
        //   ),
        //   SizedBox(
        //     width: 20.w,
        //   ),
        //   InkWell(
        //     onTap: () {},
        //     child: CircleAvatar(
        //       radius: 25.0,
        //       backgroundColor: Colors.grey[300],
        //       child: Image.asset(
        //         'assets/images/user.png',
        //         height: 32.sp,
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 10.w,
        //   ),
        // ]
    );
  }
}
