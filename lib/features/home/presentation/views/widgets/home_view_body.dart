import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utils/assets.dart';
import 'package:my_bookly_app/core/utils/styles.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBoxListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  
                  image: const DecorationImage(
                    image: AssetImage(ASsetsData.testImage),
                  ),
                  
                ),
              )),
          const Column(
            children: [],
          )
        ],
      ),
    );
  }
}
