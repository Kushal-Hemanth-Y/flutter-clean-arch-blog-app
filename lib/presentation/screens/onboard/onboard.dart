part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                MyAssets.mainLogo,
                color: MyColors.primaryColor,
                height: 42.h,
                width: 139.w,
              ),
              63.h.heightBox,
              PageView(
                controller: onBoardViewModel.pageController,
                children: [
                  onBoardFirst(),
                  const OnBoardSecond(),
                  const OnBoardthird(),
                ],
              ).expand(),
              PrimaryButton(
                  title: 'Get Started',
                  onPressed: () {
                    AutoRouter.of(context).push(const AuthRoute());
                  }),
              61.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Skip'.text.size(16.sp).fontWeight(FontWeight.w700).make(),
                  SmoothPageIndicator(
                      controller:
                          onBoardViewModel.pageController, // PageController
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: MyColors.primaryColor,
                        dotHeight: 10,
                        dotWidth: 10,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                  'Next'.text.size(16.sp).fontWeight(FontWeight.w700).make(),
                ],
              ),
              20.h.heightBox,
            ]),
          ),
        ),
      ),
    );
  }

  Column onBoardFirst() {
    return Column(
      children: [
        Image.asset(
          'assets/images/ob1.png',
          height: 333,
          width: 333,
        ),
        'Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community'
            .text
            .align(TextAlign.center)
            .size(16)
            .fontWeight(FontWeight.w700)
            .make()
      ],
    );
  }
}
