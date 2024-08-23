import 'package:advanced_webview/homepage/errors/error_page.dart';
import 'package:advanced_webview/homepage/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }

  await Permission.camera.request();
  await Permission.microphone.request(); //

  runApp(
    const GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
