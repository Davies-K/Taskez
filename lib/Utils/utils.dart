part of values;

class Utils {
  static final double screenWidth = Get.width;
  static final double screenHeight = Get.width;
}

class SineCurve extends Curve {
  final double count;

  SineCurve({this.count = 3});

  // t = x
  @override
  double transformInternal(double t) {
    var val = sin(count * 2 * pi * t) * 0.5 + 0.5;
    return val; //f(x)
  }
}

Widget buildStackedImages(
    {TextDirection direction = TextDirection.rtl,
    String? numberOfMembers,
    bool? addMore}) {
  final double size = 50;
  final double xShift = 20;

  Container lastContainer = Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Center(
        child: Text(numberOfMembers!,
            style: GoogleFonts.lato(
                color: HexColor.fromHex("226AFD"),
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ));

  Container iconContainer = Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: AppColors.primaryAccentColor, shape: BoxShape.circle),
      child: Icon(Icons.add, color: Colors.white));

  final items = List.generate(
      4,
      (index) => ProfileDummy(
          color: AppData.groupBackgroundColors[index],
          dummyType: ProfileDummyType.Image,
          image: AppData.profileImages[index],
          scale: 1.0));

  return StackedWidgets(
    direction: direction,
    items: [
      ...items,
      lastContainer,
      (addMore != null) ? iconContainer : SizedBox()
    ],
    size: size,
    xShift: xShift,
  );
}
