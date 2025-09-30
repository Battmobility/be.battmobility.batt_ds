import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: AppSpacings.sm,
              children: [
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Snackbars',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Info',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with only title',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.info(
                            title: "Snackbar title",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with a very long title',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.info(
                            title:
                                "Snackbar long title that can overflow on narrow screens",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with a very long title and long message',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.info(
                            title:
                                "Snackbar long title that can overflow on narrow screens",
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one. But in this case it's pretty long",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with only message',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.info(
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with message and title',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.info(
                            title: "Snackbar title",
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with message and title and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.info(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with message and title and action',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.info(
                                  title: "Snackbar title",
                                  message:
                                      "The snackbar message goes here. It can be a long message or just a short one.",
                                  action: SnackBarAction(
                                      label: "Action",
                                      onPressed: () => ())).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Info with message and title and action and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.info(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      action: SnackBarAction(
                                          label: "Action", onPressed: () => ()),
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Success',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Success with only title',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.success(
                            title: "Snackbar title",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Success with only message',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.success(
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Success with message and title',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.success(
                            title: "Snackbar title",
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Success with message and title and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.success(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Success with message and title and action',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.success(
                                  title: "Snackbar title",
                                  message:
                                      "The snackbar message goes here. It can be a long message or just a short one.",
                                  action: SnackBarAction(
                                      label: "Action",
                                      onPressed: () => ())).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Success with message and title and action and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.success(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      action: SnackBarAction(
                                          label: "Action", onPressed: () => ()),
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Warning',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Warning with only title',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.warning(
                            title: "Snackbar title",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Warning with only message',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.warning(
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Warning with message and title',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.warning(
                            title: "Snackbar title",
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Warning with message and title and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.warning(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Warning with message and title and action',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.warning(
                                  title: "Snackbar title",
                                  message:
                                      "The snackbar message goes here. It can be a long message or just a short one.",
                                  action: SnackBarAction(
                                      label: "Action",
                                      onPressed: () => ())).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Warning with message and title and action and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.warning(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      action: SnackBarAction(
                                          label: "Action", onPressed: () => ()),
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Error',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Error with only title',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.error(
                            title: "Snackbar title",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Error with only message',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.error(
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Error with message and title',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(BattSnackbar.error(
                            title: "Snackbar title",
                            message:
                                "The snackbar message goes here. It can be a long message or just a short one.",
                          ).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Error with message and title and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.error(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Error with message and title and action',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.error(
                                  title: "Snackbar title",
                                  message:
                                      "The snackbar message goes here. It can be a long message or just a short one.",
                                  action: SnackBarAction(
                                      label: "Action",
                                      onPressed: () => ())).build(context));
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacings.md,
                  children: [
                    Flexible(
                      child: Text(
                        'Error with message and title and action and close icon',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                      ),
                    ),
                    OrangeSolidTextButton(
                        label: "Show",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              BattSnackbar.error(
                                      title: "Snackbar title",
                                      message:
                                          "The snackbar message goes here. It can be a long message or just a short one.",
                                      action: SnackBarAction(
                                          label: "Action", onPressed: () => ()),
                                      showCloseIcon: true)
                                  .build(context));
                        })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
