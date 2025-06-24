import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class FlowPage extends StatelessWidget {
  const FlowPage({super.key});

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
                    'Flow',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Flow progress indicator',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Animated Flow',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          SizedBox(
                              height: constraints.maxWidth / 3,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: FlowWidget())),
                          SizedBox(
                              height: constraints.maxWidth / 5,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: FlowWidget())),
                          SizedBox(
                              height: constraints.maxWidth / 3,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: FlowWidget(
                                    amplitude: 30,
                                  ))),
                          SizedBox(
                              height: constraints.maxWidth / 3,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: FlowWidget(blur: 5))),
                        ]);
                  }),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Static Flow',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          SizedBox(
                              height: constraints.maxWidth / 3,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: StaticFlowWidget())),
                          SizedBox(
                              height: constraints.maxWidth / 5,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: StaticFlowWidget())),
                          SizedBox(
                              height: constraints.maxWidth / 3,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: StaticFlowWidget())),
                          SizedBox(
                              height: constraints.maxWidth / 3,
                              width: constraints.maxHeight / 20,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.m.x),
                                  child: StaticFlowWidget())),
                        ]);
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
