import 'package:bookly_clean_arc/core/utils/styles.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/best_seller_list_view.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/custom_app_bar.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/custom_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                child: CustomAppBar(),
              ),
              SizedBox(height: 10),
              CustomeListView(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 15,
                ),
                child: Text("Best Seller", style: Styles.style20),
              ),
              // BestSellerListView(),
            ],
          ),
        ),
        SliverFillRemaining( // not require me build all my children
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
