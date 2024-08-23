import 'package:advanced_webview/homepage/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => !_controller.loading.value ? const Center(child: CircularProgressIndicator()) : InAppWebView(
          key: _controller.webViewKey,
          initialUrlRequest: _controller.url,
          initialSettings: _controller.settings,
          pullToRefreshController: _controller.pullRefreshController,
          onWebViewCreated: (_) => _controller.onWebViewCreated,
          onPermissionRequest: _controller.requestPermission,
        ),),
      ),
    );
  }
}
