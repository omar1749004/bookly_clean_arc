import 'package:bookly_clean_arc/features/home/presention/views/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';


class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(),
      ),
    );
  }
}