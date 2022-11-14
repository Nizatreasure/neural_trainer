import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../shared/constants.dart';
import '../../shared/custom_button.dart';

class OnboardingContainer extends StatelessWidget {
  final String imageName;
  final String bodyTitle;
  final String bodyDescription;
  const OnboardingContainer(
      {required this.imageName,
      required this.bodyTitle,
      required this.bodyDescription,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$imageName.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Text(
            '#MOVEYOURMIND',
            style: kHeaderText2,
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
          bottom: 200,
          left: 25,
          right: 25,
          child: _buildInfo(
            title: bodyTitle,
            description: bodyDescription,
          ),
        ),
      ],
    );
  }

  Widget _buildInfo({required String title, required String description}) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          style: kHeaderText1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Text(
          description,
          style: kBodyText1,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
