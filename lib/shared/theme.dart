part of 'shared.dart';

Color mainColor = "448EF6".toColor();

// color
// 1363DF
// 5463FF
// 47B5FF
// 7868E6
// 7579E7
// 1089FF
// 033FFF
Color greyColor = "8D92A3".toColor();
Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

TextStyle fontStyle = GoogleFonts.poppins();
TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: Colors.black);

const double defaultMargin = 20;
