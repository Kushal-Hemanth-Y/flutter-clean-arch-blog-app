part of 'add_posts_imports.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.primaryColor,
        title: 'Add Posts'.text.make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 200,
              width: double.infinity,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FeatherIcons.upload,
                      size: 20,
                      color: Colors.black54,
                    ),
                    5.w.widthBox,
                    'Upload Feature Image'
                        .text
                        .bold
                        .color(Colors.black54)
                        .make()
                  ],
                ),
              ),
            ),
            20.h.heightBox,
            VxTextField(
              fillColor: Colors.transparent,
              borderColor: MyColors.primaryColor,
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10.r,
              hint: 'Title',
            ),
            20.h.heightBox,
            VxTextField(
              fillColor: Colors.transparent,
              borderColor: MyColors.primaryColor,
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10.r,
              hint: 'Slug',
            ),
            20.h.heightBox,
            Container(
              padding: const EdgeInsets.all(10),
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Category'.text.make(),
                    const Icon(FeatherIcons.chevronRight)
                  ]),
            ),
            20.h.heightBox,
            Container(
              padding: const EdgeInsets.all(10),
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Tags'.text.make(),
                    const Icon(FeatherIcons.chevronRight)
                  ]),
            ),
            QuillToolbar.basic(controller: _controller),
            SizedBox(
              height: 500,
              child:
                  QuillEditor.basic(controller: _controller, readOnly: false),
            )
            // OUTER COLUMN
          ]),
        ),
      ),
    );
  }
}
