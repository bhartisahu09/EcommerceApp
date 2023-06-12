import '../../Widget_Common/our_button.dart';
import '../../consts/consts.dart';
import '../../consts/lists.dart';

class ItemDetail extends StatelessWidget {
  final String? title;
  const ItemDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  10.heightBox,
                  title!.text.color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30000"
                      .text
                      .color(redColor)
                      .size(18)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Seller".text.fontFamily(semibold).white.make(),
                            10.heightBox,
                            "In House Brand"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .size(16)
                                .make(),
                          ],
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      ),
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 6))
                                    .make()),
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //quantity row

                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove)),
                            "0"
                                .text
                                .size(16)
                                .color(darkFontGrey)
                                .fontFamily(bold)
                                .make(),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add)),
                            10.heightBox,
                            "(0 available)".text.color(textfieldGrey).make(),
                          ])
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      //total row

                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total: ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00"
                              .text
                              .color(redColor)
                              .size(16)
                              .fontFamily(bold)
                              .make()
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make()
                    ],
                  ).box.white.shadowSm.make(),
                  10.heightBox,
                  //description section
                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  "This is a dummy item and dummy description"
                      .text
                      .color(darkFontGrey)
                      .make(),
                  // button section
                  10.heightBox,
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                        itemDetailsButtonList.length,
                        (index) => ListTile(
                              title: itemDetailsButtonList[index]
                                  .text
                                  .fontFamily(bold)
                                  .color(darkFontGrey)
                                  .make(),
                              trailing: const Icon(Icons.arrow_forward),
                            )),
                  ),
                  20.heightBox,

                  productsyoumaylike.text
                      .fontFamily(bold)
                      .size(16)
                      .color(darkFontGrey)
                      .make(),

                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP1,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  10.heightBox,
                                  "Laptop 4GB/6GB"
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  10.heightBox,
                                  "\$600"
                                      .text
                                      .fontFamily(bold)
                                      .color(redColor)
                                      .size(16)
                                      .make()
                                ],
                              )
                                  .box
                                  .white
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                  .roundedSM
                                  .padding(const EdgeInsets.all(8))
                                  .make()),
                    ),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                titleText: "Add to cart"),
          )
        ],
      ),
    );
  }
}
