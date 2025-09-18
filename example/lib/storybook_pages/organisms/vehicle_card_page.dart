import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class VehicleCardsPage extends StatelessWidget {
  const VehicleCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: SingleChildScrollView(
              padding: AppPaddings.medium.horizontal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Vehicle cards',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With battery',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          VehicleCard(
                            name: "Polestar 2",
                            address: "Lammerstraat 13, 9000 Gent",
                            range: "500 km",
                            chargePercentage: 75,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            tag: Tag("Eerste prijs", type: TagType.standard),
                            walkingDistance: "20",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            address: "Lammerstraat 13, 9000 Gent",
                            chargePercentage: 100,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            price2: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " € 0.33 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/uur",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            tag: Tag("Favoriet", type: TagType.warning),
                            walkingDistance: "200m.",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            address: "Lammerstraat 13, 9000 Gent",
                            chargePercentage: 100,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            price2: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " € 0.33 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/uur",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            walkingDistance: "200m.",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With range',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          VehicleCard(
                            name: "Polestar 2",
                            address: "Lammerstraat 13, 9000 Gent",
                            chargePercentage: 75,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            walkingDistance: "2km.",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            address: "Lammerstraat 13, 9000 Gent",
                            range: "50 km",
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            price2: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " € 0.33 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/uur",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            walkingDistance: "200m.",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With incomplete data',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        VehicleCard(
                          name: "Polestar 2",
                          address: "Lammerstraat 13, 9000 Gent",
                          price: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Vanaf",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: AppColors.b2bKeyColor),
                                ),
                                TextSpan(
                                  text: " € 13 ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          color: AppColors.b2bKeyColor,
                                          fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "/dag",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: AppColors.b2bKeyColor),
                                ),
                              ],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppColors.b2bKeyColor),
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          walkingDistance: "2km.",
                          imageUrl:
                              "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                        ),
                        VehicleCard(
                          name: "Polestar 2",
                          address: "Lammerstraat 13, 9000 Gent",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        VehicleCard(
                          name: "Een auto met een lange naam",
                          address: "Lammerstraat 13, 9000 Gent",
                          chargePercentage: 100,
                          price: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Vanaf",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: AppColors.b2bKeyColor),
                                ),
                                TextSpan(
                                  text: " € 13 ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          color: AppColors.b2bKeyColor,
                                          fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "/dag",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: AppColors.b2bKeyColor),
                                ),
                              ],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppColors.b2bKeyColor),
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          walkingDistance: "200m.",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        VehicleCard(
                          name: "Een auto met een lange naam",
                          address: "Lammerstraat 13, 9000 Gent",
                          range: "500 km",
                          price: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Vanaf",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: AppColors.b2bKeyColor),
                                ),
                                TextSpan(
                                  text: " € 13 ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          color: AppColors.b2bKeyColor,
                                          fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "/dag",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: AppColors.b2bKeyColor),
                                ),
                              ],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppColors.b2bKeyColor),
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          price2: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " € 0.33 ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          color: AppColors.b2bKeyColor,
                                          fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "/uur",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: AppColors.b2bKeyColor),
                                ),
                              ],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppColors.b2bKeyColor),
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          tag: Tag("Geboekt", type: TagType.booking),
                          imageUrl:
                              "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Without borders',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          VehicleCard(
                            name: "Polestar 2",
                            address: "Lammerstraat 13, 9000 Gent",
                            range: "500 km",
                            chargePercentage: 75,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            tag: Tag("Tag met lange tekst",
                                type: TagType.standard),
                            walkingDistance: "20",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                            showBorder: false,
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            address:
                                "Lammerstraat 13 bis (bij Bloch bakkerij), 9000 Gent",
                            chargePercentage: 100,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            price2: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " € 0.33 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/uur",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            walkingDistance: "200m.",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                            showBorder: false,
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            address: "Lammerstraat 13, 9000 Gent",
                            chargePercentage: 100,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            price2: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " € 0.33 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/uur",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            walkingDistance: "200m.",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            showBorder: false,
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With indicator',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          VehicleCard(
                            name: "Polestar 2",
                            address: "Lammerstraat 13, 9000 Gent",
                            range: "500 km",
                            chargePercentage: 75,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            tag: Tag("Eerste prijs", type: TagType.standard),
                            walkingDistance: "20",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            address: "Lammerstraat 13, 9000 Gent",
                            chargePercentage: 100,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            price2: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " € 0.33 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/uur",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            walkingDistance: "200m.",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            address: "Lammerstraat 13, 9000 Gent",
                            chargePercentage: 100,
                            price: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Vanaf",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                  TextSpan(
                                    text: " € 13 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/dag",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            price2: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " € 0.33 ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: AppColors.b2bKeyColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "/uur",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.b2bKeyColor),
                              ),
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            walkingDistance: "200m.",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                        ]),
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
