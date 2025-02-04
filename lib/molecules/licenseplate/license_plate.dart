import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class LicensePlate extends StatelessWidget {
  const LicensePlate(this.licenseplateNumber,
      {super.key, this.size = LicensePlateSize.medium});

  final String licenseplateNumber;
  final LicensePlateSize size;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: AppPaddings.none.all,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.licensePlateBelgiumTextColor,
            width: borderWidth(),
          ),
          borderRadius: borderRadius(),
        ),
        child: ClipRRect(
          borderRadius: clipBorderRadius(),
          child: Container(
            height: height(),
            width: width(),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                    color: AppColors.licensePlateBelgiumBoxColor,
                    width: leftBorder()),
              ),
            ),
            child: Container(
              margin: subtractedPadding(),
              child: Text(
                licenseplateNumber,
                style: textStyle(context),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  BorderRadius borderRadius() {
    switch (size) {
      case LicensePlateSize.small:
        return const BorderRadius.all(CornerRadii.xs);
      case LicensePlateSize.medium:
        return const BorderRadius.all(CornerRadii.s);
      case LicensePlateSize.large:
        return const BorderRadius.all(CornerRadii.m);
    }
  }

  BorderRadius clipBorderRadius() {
    switch (size) {
      case LicensePlateSize.small:
        return const BorderRadius.all(CornerRadii.xs);
      case LicensePlateSize.medium:
        return const BorderRadius.all(CornerRadii.xs);
      case LicensePlateSize.large:
        return const BorderRadius.all(CornerRadii.s);
    }
  }

  EdgeInsetsGeometry subtractedPadding() {
    switch (size) {
      case LicensePlateSize.small:
        return EdgeInsets.all(margin());
      case LicensePlateSize.medium:
        return EdgeInsets.all(margin()).subtract(const EdgeInsets.only(top: 1));
      case LicensePlateSize.large:
        return EdgeInsets.all(margin()).subtract(const EdgeInsets.only(top: 2));
    }
  }

  BorderSide border() {
    switch (size) {
      case LicensePlateSize.small:
        return const BorderSide(
            color: AppColors.licensePlateBelgiumTextColor, width: 4);
      case LicensePlateSize.medium:
        return const BorderSide(
            color: AppColors.licensePlateBelgiumTextColor, width: 8);
      case LicensePlateSize.large:
        return const BorderSide(
            color: AppColors.licensePlateBelgiumTextColor, width: 12);
    }
  }

  TextStyle textStyle(BuildContext context) {
    switch (size) {
      case LicensePlateSize.small:
        return context.typographyTheme.licensePlate.copyWith(fontSize: 10);
      case LicensePlateSize.medium:
        return context.typographyTheme.licensePlate;
      case LicensePlateSize.large:
        return context.typographyTheme.licensePlate.copyWith(fontSize: 18);
    }
  }

  double width() {
    switch (size) {
      case LicensePlateSize.small:
        return 80;
      case LicensePlateSize.medium:
        return 120;
      case LicensePlateSize.large:
        return 150;
    }
  }

  double height() {
    switch (size) {
      case LicensePlateSize.small:
        return 18;
      case LicensePlateSize.medium:
        return 25;
      case LicensePlateSize.large:
        return 35;
    }
  }

  double leftBorder() {
    switch (size) {
      case LicensePlateSize.small:
        return 12;
      case LicensePlateSize.medium:
        return 20;
      case LicensePlateSize.large:
        return 30;
    }
  }

  double margin() {
    switch (size) {
      case LicensePlateSize.small:
        return 2;
      case LicensePlateSize.medium:
        return 4;
      case LicensePlateSize.large:
        return 6;
    }
  }

  double borderWidth() {
    switch (size) {
      case LicensePlateSize.small:
        return 1;
      case LicensePlateSize.medium:
        return 2;
      case LicensePlateSize.large:
        return 4;
    }
  }
}
