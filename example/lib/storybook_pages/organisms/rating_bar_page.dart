import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class RatingBarPage extends StatelessWidget {
  const RatingBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: AppPaddings.medium.horizontal,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: AppPaddings.small.vertical,
                      child: Text(
                        'With no prefilled value',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Padding(
                      padding: AppPaddings.small.vertical,
                      child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          RatingBar(
                              maxRating: 3,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                          RatingBar(
                              maxRating: 4,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                          RatingBar(
                              maxRating: 5,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                          RatingBar(
                              maxRating: 6,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: AppPaddings.small.vertical,
                      child: Text(
                        'With prefilled value',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Padding(
                      padding: AppPaddings.small.vertical,
                      child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          RatingBar(
                              maxRating: 3,
                              rating: 2,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                          RatingBar(
                              maxRating: 4,
                              rating: 2,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                          RatingBar(
                              maxRating: 5,
                              rating: 3,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                          RatingBar(
                              maxRating: 6,
                              rating: 4,
                              onRatingChanged: (rating) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    BattSnackbar.info(
                                            title: "Rating changed",
                                            message:
                                                "Rating changed to $rating",
                                            showCloseIcon: true)
                                        .build(context));
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
