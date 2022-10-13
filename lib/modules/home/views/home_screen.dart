import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../widget/add_product_widget.dart';
import '../widget/category_widget.dart';
import '../widget/item_product_widget.dart';
import '../widget/money_withdraw_widget.dart';
import '../widget/order_widget.dart';
import '../widget/payment_setting_widget.dart';
import '../widget/product_widget.dart';
import '../widget/sales_widget.dart';
import '../widget/shop_setting_widget.dart';
import '../widget/sold_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
      builder: (context, state) {
        var cubit = AlshorjahCubit.get(context);
        int? productsCount = cubit.homePageModel.data![0].productsCount;
        int? orderCount = cubit.homePageModel.data![0].ordersCount;
        int? rating = cubit.homePageModel.data![0].reating;
        return BuildCondition(
          condition: cubit.model != null,
          builder: (context) => Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductWidget(
                      title: 'Product',
                      num: productsCount.toString() ,
                      image: 'assets/images/product.png',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ProductWidget(
                      title: 'Rating',
                      num: rating.toString() ,
                      image: 'assets/images/star.png',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ProductWidget(
                      title: 'Total Order',
                      num: orderCount.toString(),
                      image: 'assets/images/order.png',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ProductWidget(
                      title: 'Total Sales',
                      num: cubit.homePageModel.data![0].totalSales ?? 0.toString(),
                      image: 'assets/images/sales.png',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const SalesWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    SoldWidget(
                      currentMonth: cubit
                          .homePageModel.data![0].soldAmountCurrentMonth
                          .toString(),
                      lastMonth: cubit
                          .homePageModel.data![0].soldAmountLast2Month
                          .toString(),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CategoryWidget(
                      name: cubit.homePageModel.data![0].categoy![0].name,
                      count: cubit.homePageModel.data![0].categoy![0].count,
                      name2: cubit.homePageModel.data![0].categoy![1].name,
                      count2: cubit.homePageModel.data![0].categoy![1].count,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    OrderWidget(
                      newOrder:
                          cubit.homePageModel.data![0].newOrder.toString(),
                      cancelled:
                          cubit.homePageModel.data![0].cancelled.toString(),
                      onDelivery:
                          cubit.homePageModel.data![0].onTheWay.toString(),
                      delivery:
                          cubit.homePageModel.data![0].delivered.toString(),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 150.h,
                      color: Colors.grey.withAlpha(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Image.asset('assets/images/verified.png')],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const MoneyWithdrawWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const AddProductWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ShopSettingWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const PaymentSettingWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Top 12 products',
                      style: TextStyle(
                        color: ColorManager.buttonColor.withAlpha(200),
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 230.h,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            cubit.homePageModel.data![0].products!.data!.length,
                        itemBuilder: (context, index) =>
                            ItemProductWidget(model: cubit.model.data![index]),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Padding(
                                padding: EdgeInsets.only(
                          right: 5.0,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          fallback: (context) => Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
