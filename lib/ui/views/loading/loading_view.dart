import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './loading_view_model.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoadingViewModel>.reactive(
      viewModelBuilder: () => LoadingViewModel(),
      onModelReady: (model) => model.initialize(context),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 300,
                  child: LinearProgressIndicator(
                    value: model.progress / 100,
                    color: Theme.of(context).colorScheme.outline,
                    backgroundColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Loading'),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText(
                            '...',
                            speed: const Duration(milliseconds: 140),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
