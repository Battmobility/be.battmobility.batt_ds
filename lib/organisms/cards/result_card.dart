import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/svg_icon.dart';
import 'package:flutter/material.dart';

final class ResultCard extends StatelessWidget {
  final String name;
  final String price;
  final String price2;
  final List<InfoField> topInfoFields;
  final List<InfoField> bottomInfoFields;
  final Tag? tag;
  final String? imageUrl;

  final bool selected;

  const ResultCard({
    super.key,
    required this.name,
    required this.price,
    required this.price2,
    required this.topInfoFields,
    required this.bottomInfoFields,
    this.tag,
    this.imageUrl,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: AppPaddings.none.all,
          decoration: selected
              ? GradientBorderDecoration.flow()
              : BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(CornerRadii.s.x),
                  boxShadow: [softShadow],
                ),
          child: LayoutBuilder(builder: (context, constraints) {
            return IntrinsicHeight(
              child: Padding(
                padding: AppPaddings.medium.all,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 72,
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          fit: StackFit.expand,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.s.x),
                                  boxShadow: selected ? null : [softShadow]),
                              child: (imageUrl ?? "").isNotEmpty
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          CornerRadii.s.x),
                                      child: Center(
                                        child: Image(
                                          image: NetworkImage(imageUrl!),
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return const Center(child: carIcon);
                                          },
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            }
                                            return const Center(
                                              child: CircularProgressIndicator
                                                  .adaptive(),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  : const Center(child: carIcon),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacings.md),
                    Expanded(
                      child: Padding(
                        padding: AppPaddings.medium.vertical
                            .add(AppPaddings.xsmall.top),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: AppSpacings.md,
                                children: [
                                  Flexible(
                                    child: Text(
                                      name,
                                      style: theme.textTheme.titleSmall
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  AppColors.neutralColors[950]),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Row(
                                    spacing: AppSpacings.md,
                                    children: topInfoFields
                                        .map((field) => Flexible(child: field))
                                        .toList(),
                                  ),
                                  Row(
                                    spacing: AppSpacings.md,
                                    children: bottomInfoFields
                                        .map((field) => Flexible(child: field))
                                        .toList(),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                                flex: 1,
                                child: Padding(
                                  padding: AppPaddings.xsmall.top,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    spacing: AppSpacings.xs,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          price,
                                          textAlign: TextAlign.end,
                                          style: theme.textTheme.bodySmall
                                              ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.neutralColors[950],
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          price2,
                                          textAlign: TextAlign.end,
                                          style: theme.textTheme.bodySmall
                                              ?.copyWith(
                                            color: AppColors.neutralColors[400],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
        if (tag != null) Positioned(top: -15, right: 10, child: tag!),
      ],
    );
  }
}
