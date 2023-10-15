part of 'tags_imports.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus)),
        ],
        title: 'Tags'.text.make(),
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => 20.h.heightBox,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: '${index + 1}'.text.make(),
              title: 'Tags'.text.make(),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(FeatherIcons.edit2)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(FeatherIcons.trash))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
