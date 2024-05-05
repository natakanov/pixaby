import 'package:flutter/material.dart';
import 'package:pixaby/src/data/pictures_api.dart';
import 'package:pixaby/src/domain/pictures_repository.dart';
import 'package:pixaby/src/domain/pictures_service.dart';
import 'package:pixaby/src/presentation/pictures_screen/pictures_screen.dart';
import 'package:provider/provider.dart';

import 'dio_creator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PicturesApi>(
          create: (_) => PicturesApi(createHttpClient()),
        ),
        Provider<PicturesRepository>(
          create: (context) => PicturesRepository(context.read()),
        ),
        Provider<PicturesService>(
          create: (context) => PicturesService(context.read()),
        ),
      ],
      child: MaterialApp(
        title: 'Pixaby',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PicturesScreen(),
      ),
    );
  }
}
