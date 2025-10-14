import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class LicensePlate extends StatelessWidget {
  const LicensePlate(this.licenseplateNumber,
      {super.key, this.size = LicensePlateSize.medium});

  final String licenseplateNumber;
  final LicensePlateSize size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.licensePlateBelgiumTextColor,
        borderRadius: BorderRadius.all(
          Radius.circular(height / 4),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(margin),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(height / 8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  color: AppColors.licensePlateBelgiumBoxColor,
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  color: AppColors.white,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: topInset),
                      child: Text(
                        licenseplateNumber,
                        style: textStyle(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  BorderRadius get clipBorderRadius {
    switch (size) {
      case LicensePlateSize.small:
        return const BorderRadius.all(CornerRadii.xs);
      case LicensePlateSize.medium:
        return const BorderRadius.all(CornerRadii.xs);
      case LicensePlateSize.large:
        return const BorderRadius.all(CornerRadii.s);
    }
  }

  TextStyle textStyle(BuildContext context) {
    switch (size) {
      case LicensePlateSize.small:
        return context.typographyTheme.licensePlate.copyWith(fontSize: 12);
      case LicensePlateSize.medium:
        return context.typographyTheme.licensePlate;
      case LicensePlateSize.large:
        return context.typographyTheme.licensePlate.copyWith(fontSize: 20);
    }
  }

  double get width {
    switch (size) {
      case LicensePlateSize.small:
        return 90;
      case LicensePlateSize.medium:
        return 120;
      case LicensePlateSize.large:
        return 150;
    }
  }

  double get height {
    switch (size) {
      case LicensePlateSize.small:
        return 22;
      case LicensePlateSize.medium:
        return 28;
      case LicensePlateSize.large:
        return 38;
    }
  }

  double get margin {
    switch (size) {
      case LicensePlateSize.small:
        return 2;
      case LicensePlateSize.medium:
        return 3;
      case LicensePlateSize.large:
        return 4;
    }
  }

  double get topInset {
    // to correct license plate font baseline
    switch (size) {
      case LicensePlateSize.small:
        return 0;
      case LicensePlateSize.medium:
      case LicensePlateSize.large:
        return 1;
    }
  }

  double get borderWidth {
    switch (size) {
      case LicensePlateSize.small:
        return 1;
      case LicensePlateSize.medium:
        return 2;
      case LicensePlateSize.large:
        return 3;
    }
  }
}
