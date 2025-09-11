import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class ChipPage extends StatelessWidget {
  const ChipPage({super.key});

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
                    'Chips',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Square',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattSquareChip(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattSquareChip(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattSquareChip(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Filter',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Container(
                  color: AppColors.airFlow,
                  child: Padding(
                    padding: AppPaddings.small.all,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          BattFilterChip(
                            label: "Large ",
                            onSelected: (_) => {},
                            chipSize: BattChipSize.large,
                            state: BattChipState.enabled,
                          ),
                          BattFilterChip(
                            label: "Medium",
                            onSelected: (_) => {},
                            chipSize: BattChipSize.medium,
                            state: BattChipState.enabled,
                          ),
                          BattFilterChip(
                            label: "Small",
                            onSelected: (_) => {},
                            chipSize: BattChipSize.small,
                            state: BattChipState.enabled,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Default',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipDefault(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipDefault(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipDefault(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipDefault(
                          label: "Active large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipDefault(
                          label: "Active medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipDefault(
                          label: "Active small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipDefault(
                          label: "Disabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.disabled,
                        ),
                        BattChipDefault(
                          label: "Disabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                        ),
                        BattChipDefault(
                          label: "Disabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.disabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipDefault(
                          label: "Enabled leading",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipDefault(
                          label: "Active leading",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipDefault(
                          label: "Disabled leading",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Subtle',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipSubtle(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipSubtle(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipSubtle(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipSubtle(
                          label: "Active large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipSubtle(
                          label: "Active medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipSubtle(
                          label: "Active small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipSubtle(
                          label: "Disabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.disabled,
                        ),
                        BattChipSubtle(
                          label: "Disabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                        ),
                        BattChipSubtle(
                          label: "Disabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.disabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipSubtle(
                          label: "Enabled leading",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipSubtle(
                          label: "Active leading",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipSubtle(
                          label: "Disabled leading",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipSubtle(
                          label: "With delete large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipSubtle(
                          label: "With delete medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipSubtle(
                          label: "With delete small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                        BattChipSubtle(
                          label: "With delete large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipSubtle(
                          label: "With delete medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipSubtle(
                          label: "With delete small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Primary',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipPrimary(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipPrimary(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipPrimary(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipPrimary(
                          label: "Active large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipPrimary(
                          label: "Active medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipPrimary(
                          label: "Active small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipPrimary(
                          label: "Disabled large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.disabled,
                        ),
                        BattChipPrimary(
                          label: "Disabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                        ),
                        BattChipPrimary(
                          label: "Disabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.disabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipPrimary(
                          label: "With leading icon large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipPrimary(
                          label: "With leading icon medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipPrimary(
                          label: "With leading icon small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipPrimary(
                          label: "With delete large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipPrimary(
                          label: "With delete medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipPrimary(
                          label: "With delete small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipPrimary(
                          label: "With both large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipPrimary(
                          label: "With both medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipPrimary(
                          label: "With both small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Red',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipRed(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipRed(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipRed(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipRed(
                          label: "Active large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipRed(
                          label: "Active medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipRed(
                          label: "Active small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipRed(
                          label: "Disabled large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.disabled,
                        ),
                        BattChipRed(
                          label: "Disabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                        ),
                        BattChipRed(
                          label: "Disabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.disabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipRed(
                          label: "With leading icon large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipRed(
                          label: "With leading icon medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipRed(
                          label: "With leading icon small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipRed(
                          label: "With delete large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipRed(
                          label: "With delete medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipRed(
                          label: "With delete small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipRed(
                          label: "With both large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipRed(
                          label: "With both medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipRed(
                          label: "With both small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Orange',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipOrange(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipOrange(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipOrange(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipOrange(
                          label: "Active large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipOrange(
                          label: "Active medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipOrange(
                          label: "Active small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipOrange(
                          label: "Disabled large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.disabled,
                        ),
                        BattChipOrange(
                          label: "Disabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                        ),
                        BattChipOrange(
                          label: "Disabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.disabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipOrange(
                          label: "With leading icon large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipOrange(
                          label: "With leading icon medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipOrange(
                          label: "With leading icon small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipOrange(
                          label: "With delete large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipOrange(
                          label: "With delete medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipOrange(
                          label: "With delete small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipOrange(
                          label: "With both large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipOrange(
                          label: "With both medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipOrange(
                          label: "With both small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Green',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipGreen(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipGreen(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipGreen(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipGreen(
                          label: "Active large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipGreen(
                          label: "Active medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipGreen(
                          label: "Active small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipGreen(
                          label: "Disabled large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.disabled,
                        ),
                        BattChipGreen(
                          label: "Disabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                        ),
                        BattChipGreen(
                          label: "Disabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.disabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipGreen(
                          label: "With leading icon large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipGreen(
                          label: "With leading icon medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipGreen(
                          label: "With leading icon small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipGreen(
                          label: "With delete large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipGreen(
                          label: "With delete medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipGreen(
                          label: "With delete small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipGreen(
                          label: "With both large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipGreen(
                          label: "With both medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipGreen(
                          label: "With both small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Black',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipBlack(
                          label: "Enabled large ",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipBlack(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipBlack(
                          label: "Enabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipBlack(
                          label: "Active large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.active,
                        ),
                        BattChipBlack(
                          label: "Active medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.active,
                        ),
                        BattChipBlack(
                          label: "Active small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.active,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipBlack(
                          label: "Disabled large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.disabled,
                        ),
                        BattChipBlack(
                          label: "Disabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.disabled,
                        ),
                        BattChipBlack(
                          label: "Disabled small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.disabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipBlack(
                          label: "With leading icon large",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipBlack(
                          label: "With leading icon medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipBlack(
                          label: "With leading icon small",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipBlack(
                          label: "With delete large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                        ),
                        BattChipBlack(
                          label: "With delete medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattChipBlack(
                          label: "With delete small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BattChipBlack(
                          label: "With both large",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.large,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipBlack(
                          label: "With both medium",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                        BattChipBlack(
                          label: "With both small",
                          onSelected: (_) => {},
                          onDeleted: () => {},
                          chipSize: BattChipSize.small,
                          state: BattChipState.enabled,
                          leading: Icons.car_crash_outlined,
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
