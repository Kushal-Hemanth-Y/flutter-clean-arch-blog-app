part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              20.h.heightBox,
              Image.asset(MyAssets.netflix).cornerRadius(20.r),
              20.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Latest Posts'.text.size(14.sp).make(),
                  'See All'
                      .text
                      .size(14.sp)
                      .color(MyColors.primaryColor)
                      .make(),
                ],
              ),
              10.h.heightBox,
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => 20.h.heightBox,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(const HomeDetailsRoute());
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            MyAssets.netflix,
                            height: 120,
                            width: 180,
                            fit: BoxFit.cover,
                          ).cornerRadius(20),
                          10.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              'Netflix will charge money for the subscription'
                                  .text
                                  .maxLines(2)
                                  .bold
                                  .size(16.sp)
                                  .make(),
                              5.h.heightBox,
                              Row(
                                children: [
                                  const Icon(
                                    FeatherIcons.clock,
                                    size: 18,
                                  ),
                                  5.w.widthBox,
                                  '6 months ago'.text.size(14.sp).make(),
                                ],
                              ),
                              5.h.heightBox,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  '59 views'.text.size(14.sp).make(),
                                  const Icon(
                                    FeatherIcons.bookmark,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ],
                          ).expand()
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
