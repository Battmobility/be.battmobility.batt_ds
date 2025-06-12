import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

class BordersPage extends StatelessWidget {
  const BordersPage({super.key});

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
                    'Gradients',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Border',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        Container(
                            width: 300,
                            height: 50,
                            decoration: GradientBorderDecoration.standard()),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Hero gradient',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        HeroRadialGradientContainer.hero(
                          child: SizedBox(
                            width: 300,
                            height: 150,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Notification gradient',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        NotificationGradientContainer(
                          child: SizedBox(
                            width: 300,
                            height: 150,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Input',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Hint text',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSpacings.md),
                SizedBox(
                  width: 300,
                  height: 46,
                  child:
                      Container(decoration: GradientBorderDecoration.error()),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Background',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 400,
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: GradientTheme.standard().backgroundGradient,
                          borderRadius: BorderRadius.all(CornerRadii.m))),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Background muted',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 400,
                  child: Container(
                      decoration: BoxDecoration(
                          gradient:
                              GradientTheme.standard().mutedBackgroundGradient,
                          borderRadius: BorderRadius.all(CornerRadii.m))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
