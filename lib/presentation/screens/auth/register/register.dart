part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool? isChecked = true;
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: FadedScaleAnimation(
          child: ListView(children: [
            20.h.heightBox,
            Image.asset(
              MyAssets.mainLogo,
              height: 42.h,
              width: 139.w,
            ).centered(),
            100.h.heightBox,
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36)),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    50.h.heightBox,
                    'Sign Up'
                        .text
                        .size(18)
                        .fontWeight(FontWeight.w700)
                        .color(MyColors.primaryColor)
                        .make()
                        .centered(),
                    48.h.heightBox,
                    'Email'.text.fontWeight(FontWeight.w500).make(),
                    10.h.heightBox,
                    VxTextField(
                      hint: 'kushal@gmail.com',
                      fillColor: Colors.grey.shade200,
                      borderType: VxTextFieldBorderType.roundLine,
                      borderRadius: 10,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.black54,
                      ),
                    ),
                    20.h.heightBox,
                    'Password'.text.fontWeight(FontWeight.w500).make(),
                    10.h.heightBox,
                    VxTextField(
                      isPassword: true,
                      fillColor: Colors.grey.shade200,
                      borderType: VxTextFieldBorderType.roundLine,
                      borderRadius: 10,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black54,
                      ),
                    ),
                    20.h.heightBox,
                    'Confirm Password'.text.fontWeight(FontWeight.w500).make(),
                    10.h.heightBox,
                    VxTextField(
                      isPassword: true,
                      fillColor: Colors.grey.shade200,
                      borderType: VxTextFieldBorderType.roundLine,
                      borderRadius: 10,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black54,
                      ),
                    ),
                    10.h.heightBox,
                    Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                }),
                            'Remember Me'
                                .text
                                .fontWeight(FontWeight.w500)
                                .size(14)
                                .color(MyColors.primaryColor)
                                .make(),
                          ],
                        ),
                        const Spacer(),
                        'Forgot Password'
                            .text
                            .fontWeight(FontWeight.w500)
                            .size(14)
                            .color(MyColors.primaryColor)
                            .make(),
                      ],
                    ),
                    10.h.heightBox,
                    PrimaryButton(title: 'Register', onPressed: () {}),
                    20.h.heightBox,
                    "Already have an account ?"
                        .richText
                        .semiBold
                        .size(14)
                        .color(Colors.black54)
                        .withTextSpanChildren([
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                AutoRouter.of(context).push(const LoginRoute()),
                          text: " Log In",
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: MyColors.primaryColor))
                    ]).makeCentered(),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
