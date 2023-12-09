import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bookly_app/constants.dart';
import 'package:my_bookly_app/core/utils/assets.dart';
import 'package:my_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:my_bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  

  
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(ASsetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
  //function do sliding text animation
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: kTransitionDuration,
    );
    
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
  //navigate to home
  void navigateToHome() {
    Future.delayed(kTransitionDuration,(){
      Get.to(()=>const HomeView(),transition: Transition.fade,duration: kTabScrollDuration);
    });
  }
}

