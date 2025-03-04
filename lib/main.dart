import 'package:device_preview/device_preview.dart';
import 'package:findanimals/features/home/presentation/manager/cubit.dart';
import 'package:findanimals/features/splash/presentation/views/splashScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>AppCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home:const splashScreen(),
        ),
    );
    
  }
}