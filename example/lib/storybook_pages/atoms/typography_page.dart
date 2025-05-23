import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class Typographypage extends StatelessWidget {
  const Typographypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Typography',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Heading',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Heading large",
                      style: Theme.of(context).textTheme.headlineLarge,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Heading medium",
                      style: Theme.of(context).textTheme.headlineMedium,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Heading small",
                      style: Theme.of(context).textTheme.headlineSmall,
                    )),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Title',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Title large",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Title medium",
                      style: Theme.of(context).textTheme.titleMedium,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Title small",
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Body',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Body large",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Body medium",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Body small",
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Label',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Label large",
                      style: Theme.of(context).textTheme.labelLarge,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Label medium",
                      style: Theme.of(context).textTheme.labelMedium,
                    )),
                Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      "Label small",
                      style: Theme.of(context).textTheme.labelSmall,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
