import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/extensions.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'dotted_background_viewmodel.dart';

class DottedBackground extends StackedView<DottedBackroundViewModel> {
  const DottedBackground({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, DottedBackroundViewModel viewModel,
          Widget? child) =>
      SizedBox(
        height: context.mediaQuery.size.height,
        width: context.mediaQuery.size.width,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                viewModel.numberOfDotsPerColumn,
                (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    viewModel.numberOfDotsPerRow,
                    (index) => Container(
                      height: 2,
                      width: 2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.theme.keyGray,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  @override
  void onViewModelReady(DottedBackroundViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  DottedBackroundViewModel viewModelBuilder(BuildContext context) =>
      DottedBackroundViewModel();
}
