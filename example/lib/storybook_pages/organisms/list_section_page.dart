import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/svg_icon.dart';
import 'package:flutter/material.dart';

class ListSectionPage extends StatelessWidget {
  const ListSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.medium.all,
                    child: Text(
                      'List Sections',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Column(
                    children: [
                      ListSection(
                        icon: carIcon,
                        title: "Section title",
                        items: [
                          Text(
                            "Content of the list",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          BattCallout(
                            type: CalloutType.warning,
                            title: "Callout title",
                            message: RichText(
                              text: TextSpan(
                                text:
                                    "Callout body text that is usually a bit longer. This accepts RichText to enable bolded sections and whatnot.",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      ListSection(
                        icon: walkIcon,
                        title: "Section title",
                        items: [
                          Text(
                            "Content of the list with longer text. Text should not be limited in size, the section widget should expand to accomodate any amount of text, up to the developer not to enter testaments in here",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          BattCallout(
                            type: CalloutType.info,
                            title: "Callout title",
                            message: RichText(
                              text: TextSpan(
                                text:
                                    "Callout body text that is usually a bit longer. This accepts RichText to enable bolded sections and whatnot. ",
                                children: [
                                  TextSpan(
                                      text:
                                          "Some of it can be bold if you're feeling fancy",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold))
                                ],
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      ListSection(
                        icon: carIcon,
                        title: "Section title",
                        items: [
                          Text(
                            "Content of the list without a callout, just a regular list",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      Divider(),
                      ListSection(
                        icon: carIcon,
                        title: "Section title",
                        items: [
                          Text(
                            "Content of the list without a callout, just a regular list",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                        accessory: MonochromeSimpleTextButton(
                          label: "Accessory",
                          onPressed: () {},
                        ),
                      ),
                    ],
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
