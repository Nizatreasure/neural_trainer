import 'package:flutter/material.dart';
import 'package:neural_trainer/shared/constants.dart';

class OnboardingFirstPage extends StatelessWidget {
  const OnboardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboarding1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        _buildCenter(),
        Positioned(
          bottom: 180,
          left: 25,
          right: 25,
          child: Column(
            children: [
              Text(
                'comenzà a vivir tu'.toUpperCase(),
                style: kHeaderText2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'nt experience'.toUpperCase(),
                style: kHeaderText1,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCenter() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: const Color(0xff1DED98),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(3),
          child: Image.asset('assets/images/neural_n.png'),
        ),
        const SizedBox(width: 13),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'neural'.toUpperCase(),
              style: kHeaderText2.copyWith(
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            ),
            Text(
              'trainer'.toUpperCase(),
              style: kHeaderText2.copyWith(
                fontStyle: FontStyle.normal,
                color: kHeaderText1.color,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
