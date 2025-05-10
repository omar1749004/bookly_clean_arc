import 'package:bookly_clean_arc/features/home/presention/views/widget/custom_book_details_app_bar.dart'
    show CustomBookDetailsAppBar;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CustomBookDetailsAppBar(),
                //  BookDetailsSection(),
                Expanded(child: SizedBox(height: 50)),
                // SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
