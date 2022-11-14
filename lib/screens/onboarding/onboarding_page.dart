import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:neural_trainer/screens/onboarding/onboarding_container.dart';
import 'package:neural_trainer/shared/constants.dart';
import 'package:neural_trainer/shared/custom_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnboardingContainer(
                imageName: 'onboarding2',
                bodyTitle: 'conecta',
                bodyDescription:
                    'Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo.',
              ),
              OnboardingContainer(
                imageName: 'onboarding3',
                bodyTitle: 'entrena',
                bodyDescription:
                    'Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico',
              ),
              OnboardingContainer(
                imageName: 'onboarding4',
                bodyTitle: 'analiza',
                bodyDescription:
                    'Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.',
              ),
            ],
          ),
          _buildIndicator(),
          Positioned(
            bottom: 25,
            left: 24,
            right: 24,
            child: CustomButton(
              buttonText: 'iniciar sesión',
              buttonFunction: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return Positioned(
      bottom: 120,
      left: 0,
      right: 0,
      child: DotsIndicator(
        dotsCount: 4,
        decorator: DotsDecorator(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            side: const BorderSide(
              color: Color(0xff16F581),
              width: 1,
            ),
          ),
          activeColor: Colors.transparent,
          color: const Color(0xff686968),
        ),
      ),
    );
  }
}
