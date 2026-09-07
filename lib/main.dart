import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:waheed_app/auth/start_now.dart';

import 'package:waheed_app/views/pages/delivery_flow/add_new_address.dart';
import 'package:waheed_app/views/pages/delivery_flow/complete_order.dart';
import 'package:waheed_app/views/pages/delivery_flow/revision_order.dart';
import 'package:waheed_app/views/pages/home/profile.dart';
import 'package:waheed_app/views/pages/pickup_flow/choose_date.dart';

import 'auth/confirm_an_account.dart';
import 'auth/create_an_account.dart';
import 'auth/register.dart';
import 'auth/step1_forget_password.dart';
import 'services/helper_methods.dart';
import 'view.dart';
import 'views/pages/delivery_flow/order_successfully_confirmed.dart';
import 'views/pages/home/home.dart';
import 'views/pages/pickup_flow/Inquiry_method.dart';

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
