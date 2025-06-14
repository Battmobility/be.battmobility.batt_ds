import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/gradient_progress_border.dart';
import 'package:flutter/material.dart';

final class ProfileHeader extends StatelessWidget {
  final String name;
  final String imageUrl;
  const ProfileHeader({
    required this.name,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Padding(
          padding: AppPaddings.large.all.add(AppPaddings.small.bottom),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const GradientProgressBorder(
                        progress: 1, strokeWidth: 3, size: 96),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
                      child: Container(
                        width: 90,
                        height: 90,
                        color: AppColors.offWhite,
                        child: Image(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.fitWidth,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Icon(
                                Icons.person_4_outlined,
                                size: 64,
                                color: AppColors.graphiteDrive,
                              ),
                            );
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator.adaptive(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacings.lg),
                Text(name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface))
              ],
            ),
          )),
    );
  }
}
