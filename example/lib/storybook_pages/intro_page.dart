import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: Column(
            children: [
              Padding(
                padding: AppPaddings.small.vertical,
                child: Text(
                  'Batt DS',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          BatteryIcon(chargePercentage: 100),
                          Padding(
                            padding: AppPaddings.small.vertical,
                            child: Wrap(
                                spacing: AppSpacings.sm,
                                runSpacing: AppSpacings.md,
                                children: [
                                  Container(
                                      width: 300,
                                      height: 50,
                                      decoration:
                                          GradientBorderDecoration.standard()),
                                ]),
                          ),
                          BattChipPrimary(
                            label: "Enabled medium",
                            onSelected: (_) => {},
                            chipSize: BattChipSize.medium,
                            state: BattChipState.enabled,
                          ),
                          BattIconTextButton(
                            label: "XXLarge button",
                            icon: Icons.car_crash,
                            onPressed: () => {},
                            buttonSize: BattButtonSize.xxLarge,
                          ),
                          InvertedMonochromeSimpleTextButton(
                            label: "Large button",
                            onPressed: () => {},
                            buttonSize: BattButtonSize.large,
                          ),
                          SizedBox(
                            width: 360,
                            height: 190,
                            child: VehicleCard(
                              name: "Polestar 2",
                              address: "Lammerstraat 13, 9000 Gent",
                              chargePercentage: 75,
                              tag: Tag("Eerste prijs", type: TagType.standard),
                              walkingDistance: "20",
                              imageUrl:
                                  "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            ),
                          ),
                          TextField(
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
                          DefaultSolidTextButton(
                            label: "Small button",
                            onPressed: () => {},
                            buttonSize: BattButtonSize.small,
                          ),
                          SizedBox(
                            width: 120,
                            child: BattListTile(
                              title: "List tile",
                              leading: BattIcon(icon: Icons.label),
                              subtitle: "Subtitle text",
                            ),
                          ),
                          ListButton(onTap: () => {}),
                          Padding(
                            padding: AppPaddings.small.vertical,
                            child: const LicensePlate("2-ABC-323",
                                size: LicensePlateSize.medium),
                          ),
                          ActiveBookingCard(
                            vehicleName: "Polestar 4",
                            fromLabel: "Van",
                            fromDate: "Ma 2 jul, 14:40",
                            toLabel: "Tot",
                            toDate: "Ma 2 jul, 18:40",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          BattCallout(
                            type: CalloutType.success,
                            title: "Success callout",
                            message: RichText(
                                text: TextSpan(children: [
                              TextSpan(text: "Rich text"),
                              TextSpan(
                                  text: " callout body",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                          ),
                          InvertedMonochromeSimpleTextButton(
                              label: "Inverted monochrom text button",
                              onPressed: () {}),
                          MonochromeSimpleTextButton(
                              label: "Monochrome text button",
                              onPressed: () {}),
                          SolidCtaButton(
                            label: "Plan je rit",
                            onPressed: () => {},
                          ),
                          MapMarker(
                            progress: 0.66,
                          ),
                          DefaultOutlinedTextButton(
                            label: "Large button",
                            onPressed: () => {},
                            buttonSize: BattButtonSize.large,
                          ),
                          Helpertext(text: "Helper text"),
                          BattomNavigationBar(onTap: (_) {}, items: [
                            BattomNavigationBarItem(
                                icon: Icons.abc, label: "Item 1"),
                            BattomNavigationBarItem(
                                icon: Icons.adjust, label: "Item 2"),
                            BattomNavigationBarItem(
                                icon: Icons.casino, label: "Item 3"),
                            BattomNavigationBarItem(
                                icon: Icons.gavel, label: "Item 4"),
                          ]),
                          Row(
                            children: [
                              AnimatedLoader(size: LoaderSize.lg),
                              AnimatedLoader(),
                              AnimatedLoader(
                                size: LoaderSize.xxxxl,
                              ),
                              AnimatedLoader(
                                size: LoaderSize.xxxxxl,
                              ),
                              AnimatedLoader(
                                size: LoaderSize.xxxxxxl,
                              )
                            ],
                          ),
                          BatteryIcon(chargePercentage: 80),
                          BatteryIcon(chargePercentage: 30),
                          ProfileHeader(
                              name: "Profile header",
                              imageUrl:
                                  "https://via.placeholder.com/150x150.png"),
                          ListSection(
                            icon: Icon(Icons.commute_outlined),
                            title: "Section title",
                            items: [Text("Section content")],
                          ),
                          SizedBox(
                            width: 260,
                            child: LocationCard(
                              description: "Afhaallocatie",
                              address: "Miriam Makebaplein 4",
                              showEdit: true,
                            ),
                          ),
                          SizedBox(
                            width: 360,
                            child: NotificationCard(
                              content: Row(
                                children: [
                                  Icon(
                                    Icons.refresh,
                                    color: AppColors.white,
                                  ),
                                  Text(
                                    "Notification card title",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: AppColors.white),
                                  )
                                ],
                              ),
                              actions: [
                                InvertedSolidCtaButton(
                                  height: 44,
                                  label: "Action",
                                  onPressed: () {},
                                ),
                                InvertedMonochromeSimpleTextButton(
                                    underline: true,
                                    label: "Cancel",
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
