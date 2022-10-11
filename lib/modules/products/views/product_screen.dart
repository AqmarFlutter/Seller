import 'package:alshorjah_app/modules/addproduct/views/add_product_screen.dart';
import 'package:alshorjah_app/modules/products/views/digital_products_screen.dart';
import 'package:alshorjah_app/modules/products/views/product_reviews_screen.dart';
import 'package:alshorjah_app/modules/products/views/product_upload_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/product_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddProductScreen()));
              },
              child: const ProductWidget(
                title: 'Products',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const ProductUploadScreen()
                    )
                );
              },
              child: const ProductWidget(
                title: 'Product Bulk Upload',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const DigitalProductScreen()
                    )
                );
              },
              child: const ProductWidget(
                title: 'Digital Products',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const ProductReviewsScreen()
                    )
                );
              },
              child: const ProductWidget(
                title: 'Product Reviews  ',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
