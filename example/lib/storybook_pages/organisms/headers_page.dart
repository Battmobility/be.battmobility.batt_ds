import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Headers',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Profile',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          ProfileHeader(
                            name: "Your name Here",
                            imageUrl:
                                "https://unsplash.com/photos/woman-wearing-black-crew-neck-shirt-3TLl_97HNJo",
                          ),
                          ProfileHeader(
                            name: "Your name Here But It's Long",
                            imageUrl:
                                "https://unsplash.com/photos/woman-wearing-black-crew-neck-shirt-3TLl_97HNJo",
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
