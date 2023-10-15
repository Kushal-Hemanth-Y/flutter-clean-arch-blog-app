part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.logOut))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 400.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.r),
                bottomRight: Radius.circular(40.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  10.h.heightBox,
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(MyAssets.kush),
                  ),
                  10.h.heightBox,
                  'Kushal'.text.size(20).bold.white.make(),
                  'Kushal@gmail.com'.text.white.make(),
                  20.h.heightBox,
                  'I am Kushal and i am very fond of creating new apps in flutter, my apps follow clean architecture and i used to prefer the bloc pattern to implement.'
                      .text
                      .white
                      .center
                      .make(),
                  20.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          '6'.text.white.make(),
                          'Posts'.text.white.make(),
                        ],
                      ),
                      Column(
                        children: [
                          '0'.text.white.make(),
                          'Following'.text.white.make(),
                        ],
                      ),
                      Column(
                        children: [
                          '0'.text.white.make(),
                          'Followers'.text.white.make(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // MOST OUTER LISTVIEW
          10.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'My Posts'.text.xl.bold.make(),
                10.h.heightBox,
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.9.h,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(MyAssets.netflix).cornerRadius(10),
                          5.h.heightBox,
                          Row(
                            children: [
                              'Netflix will charge for password sharing'
                                  .text
                                  .medium
                                  .make()
                                  .expand(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(FeatherIcons.moreVertical),
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
