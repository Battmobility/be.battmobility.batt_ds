import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final class BookingCardBody extends StatelessWidget {
  final String vehicleName;
  final String fromLabel;
  final String toLabel;
  final String fromDate;
  final String toDate;
  final String? imageUrl;
  final Widget? accessory;
  final Tag? tag;
  final Color textColor;
  final Color lightTextColor;
  final Color arrowColor;
  final Color arrowBackgroundColor;
  final bool arrowShadow;
  final bool boldPeriodText;

  const BookingCardBody({
    super.key,
    required this.vehicleName,
    required this.fromLabel,
    required this.toLabel,
    required this.fromDate,
    required this.toDate,
    required this.textColor,
    required this.lightTextColor,
    required this.arrowColor,
    required this.arrowBackgroundColor,
    required this.boldPeriodText,
    this.arrowShadow = false,
    this.tag,
    this.imageUrl,
    this.accessory,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(CornerRadii.s.x),
                        color: AppColors.neutralColors[100]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(CornerRadii.s.x),
                      child: SizedBox(
                        width: 64,
                        height: 64,
                        child: (imageUrl ?? "").isNotEmpty
                            ? Image.network(
                                imageUrl!,
                                width: 64,
                                height: 64,
                                fit: BoxFit.contain,
                                filterQuality: FilterQuality.low,
                                isAntiAlias: false,
                                gaplessPlayback: false,
                                excludeFromSemantics: true,
                                errorBuilder: (context, error, stackTrace) {
                                  return Center(
                                    child: Icon(
                                      PhosphorIcons.carSimple(),
                                      size: AppSpacings.xxl,
                                      color: AppColors.neutralColors[950],
                                    ),
                                  );
                                },
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return const SizedBox(
                                    width: 64,
                                    height: 64,
                                    child: Center(child: AnimatedLoader()),
                                  );
                                },
                              )
                            : Icon(
                                PhosphorIcons.carSimple(),
                                size: AppSpacings.xxl,
                                color: AppColors.neutralColors[950],
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacings.md),
                  Flexible(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: tag == null
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        spacing: AppSpacings.sm,
                        children: [
                          Text(
                            vehicleName,
                            style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold, color: textColor),
                            overflow: TextOverflow.fade,
                            maxLines: tag == null ? 2 : 1,
                            softWrap: tag == null ? true : false,
                            textAlign: TextAlign.start,
                          ),
                          tag ?? const SizedBox.shrink()
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacings.md),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                  color: arrowBackgroundColor,
                  borderRadius: const BorderRadius.all(CornerRadii.s),
                  boxShadow: arrowShadow
                      ? [
                          BoxShadow(
                              color: arrowBackgroundColor,
                              blurRadius: 2,
                              spreadRadius: 2)
                        ]
                      : []),
              child: Icon(PhosphorIcons.arrowRight(),
                  size: AppSpacings.lg, color: arrowColor),
            )
          ],
        ),
        const SizedBox(height: AppSpacings.md),
        Divider(
          thickness: 0.5,
          color: AppColors.neutralColors[100]!,
        ),
        const SizedBox(height: AppSpacings.md),
        BookingPeriodWidget(
            startTitle: fromLabel,
            start: fromDate,
            endTitle: toLabel,
            end: toDate,
            boldText: boldPeriodText),
        if (accessory != null) ...[
          Padding(
            padding: AppPaddings.medium.top,
            child: accessory!,
          )
        ]
      ],
    );
  }
}
