import 'package:flutter/material.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductWidget(
                title: 'Product',
                num: '3',
                image: 'assets/images/product.png',
              ),
              SizedBox(
                height: 10.h,
              ),
              ProductWidget(
                title: 'Rating',
                num: '5',
                image: 'assets/images/star.png',
              ),
              SizedBox(
                height: 10.h,
              ),
              ProductWidget(
                title: 'Total Order',
                num: '3',
                image: 'assets/images/order.png',
              ),
              SizedBox(
                height: 10.h,
              ),
              ProductWidget(
                title: 'Total Sales',
                num: '\$210.0',
                image: 'assets/images/sales.png',
              ),
              SizedBox(
                height: 20.h,
              ),
              const SalesWidget(),
              SizedBox(
                height: 20.h,
              ),
              const SoldWidget(),
              SizedBox(
                height: 20.h,
              ),
              const CategoryWidget(),
              SizedBox(
                height: 20.h,
              ),
              const OrderWidget(),
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
                  itemCount: 3,
                  itemBuilder: (context, index) => const ItemProductWidget(),
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
    );
  }
}
