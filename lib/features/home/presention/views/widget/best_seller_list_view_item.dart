import 'package:bookly_clean_arc/core/utils/app_route.dart';
import 'package:bookly_clean_arc/core/utils/styles.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/book_rating.dart';
import 'package:bookly_clean_arc/features/home/presention/views/widget/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestsellerListViewitem extends StatelessWidget {
  const BestsellerListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      GoRouter.of(context).push(AppRoute.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
           CustomImage(),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.style20
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.style14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.style20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}