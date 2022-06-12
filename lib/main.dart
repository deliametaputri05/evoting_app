import 'package:evoting_mobile/provider/kandidat_provider.dart';
import 'package:evoting_mobile/provider/ormawa_provider.dart';
import 'package:evoting_mobile/provider/pemira_provider.dart';
import 'package:evoting_mobile/shared/shared.dart';
import 'package:evoting_mobile/view/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static const String title = 'E-Voting';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PemiraProvider>(create: (_) => PemiraProvider()),
        ChangeNotifierProvider<OrmawaProvider>(create: (_) => OrmawaProvider()),
        ChangeNotifierProvider<KandidatProvider>(
            create: (_) => KandidatProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: mainColor,
          // primarySwatch: mainColor,
          scaffoldBackgroundColor: Colors.grey.shade100,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          fontFamily: 'FontPoppins',
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
            titleTextStyle: TextTheme(
              headline6: TextStyle(
                color: Colors.white,
                fontFamily: 'FontPoppins',
                fontSize: 18,
                // fontWeight: FontWeight.bold,
              ),
            ).headline6,
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: mainColor),
        ),
        home: OnBoardingPage(),
      ),
    );
  }
}
