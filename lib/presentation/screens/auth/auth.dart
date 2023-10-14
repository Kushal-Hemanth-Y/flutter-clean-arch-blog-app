part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyAssets.girlLogin),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.heightBox,
                  Image.asset(
                    MyAssets.mainLogo,
                    height: 42.h,
                    width: 139.w,
                  ).centered(),
                  const Spacer(),
                  'Explore The World,\nBillions of Thoughts.'
                      .text
                      .align(TextAlign.left)
                      .size(28.sp)
                      .fontWeight(FontWeight.w700)
                      .color(Colors.white)
                      .make(),
                  15.h.heightBox,
                  PrimaryButton(
                    title: 'Login',
                    onPressed: () {
                      AutoRouter.of(context).push(const LoginRoute());
                    },
                  ),
                  10.h.heightBox,
                  OutlineButton(
                    title: 'Register',
                    onPressed: () {
                      AutoRouter.of(context).push(const RegisterRoute());
                    },
                  ),
                  20.h.heightBox,
                ]),
          ),
        ),
      ),
    );
  }
}
