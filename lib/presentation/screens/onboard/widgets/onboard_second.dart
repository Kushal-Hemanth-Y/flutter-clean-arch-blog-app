part of 'widgets_imports.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/ob2.png',
          height: 333.h,
          width: 333.w,
        ),
        'Customize your reading experience and join the conversation by creating an account.'
            .text
            .align(TextAlign.center)
            .size(16.sp)
            .fontWeight(FontWeight.w700)
            .make()
      ],
    );
  }
}
