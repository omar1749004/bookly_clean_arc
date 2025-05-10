import 'package:bookly_clean_arc/features/home/presention/views/widget/book_details_section.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/custom_image.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: CustomImage(),
            ),
            BookDetailsSection(),
            SizedBox(height: 50),
             SimilarBooksSection(),
             // SimilarBooksSection(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
