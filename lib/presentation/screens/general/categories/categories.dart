part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus)),
        ],
        title: 'Categories'.text.make(),
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => 20.h.heightBox,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: '${index + 1}'.text.make(),
              title: 'Categories'.text.make(),
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
