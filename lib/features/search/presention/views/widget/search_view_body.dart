import 'package:bookly_clean_arc/features/home/presention/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/custom_list_view_item.dart';
import 'package:bookly_clean_arc/features/search/presention/views/widget/custom_search_text_fild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.style18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestsellerListViewitem(),
        );
      },
    );
  }
}