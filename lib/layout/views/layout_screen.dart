import 'package:alshorjah_app/global_presentation/global_widgets/custom_app_bar.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubit/cubit.dart';

class LayoutScreen extends StatelessWidget {

  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit,AlshorjahStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = AlshorjahCubit.get(context);

        return Scaffold(
          appBar: CustomAppBar(
            title:cubit.titles[cubit.selectedIndex] ,
          ),
          body: cubit.bottomScreen[cubit.selectedIndex],
          bottomNavigationBar:BottomNavigationBar(
            iconSize: 25.sp,
            selectedLabelStyle:const TextStyle(
              fontWeight: FontWeight.bold
            ) ,
            showUnselectedLabels: true,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            elevation: 0.0,
            backgroundColor: Colors.red,
            items:const [
              BottomNavigationBarItem(
                icon:Icon(Icons.home,),
                label:'Dashboard',
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.shopping_cart_checkout,),
                label:'Products',
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.add_business,),
                label:'Orders',
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.payment,),
                label:'Payment',
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.settings,),
                label:'Settings',
              ),
            ],
            onTap:(index)
            {
              cubit.changeCurrentIndex(index);
            } ,
            currentIndex:cubit.selectedIndex,
          ) ,

        );
      },
    );
  }
}
