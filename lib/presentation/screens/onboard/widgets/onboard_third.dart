part of 'widgets_imports.dart';

class OnBoardthird extends StatelessWidget {
  const OnBoardthird({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/ob3.png',
          height: 333.h,
          width: 333.w,
        ),
        'Explore a wide selection of categories, or use the search bar to find specific topics'
            .text
            .align(TextAlign.center)
            .size(16.sp)
            .fontWeight(FontWeight.w700)
            .make()
      ],
    );
  }
}
