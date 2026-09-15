import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:waheed_app/auth/start_now.dart';
import 'auth/register.dart';
import 'services/helper_methods.dart';
import 'views/pages/detail_product.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ar');
  runApp(const waheedApp());
}

class waheedApp extends StatelessWidget {
  const waheedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navKey,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,

      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },

      home: Register(),
    );
  }
}
