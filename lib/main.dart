import 'package:bilheteria_panucci/logic/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bilheteria_panucci/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BilheteriaPanucci());
}

class BilheteriaPanucci extends StatelessWidget {
  const BilheteriaPanucci({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) => MaterialApp(
          title: 'Cine Araujo',
          theme: state,
          home: const Home(),
        ),
      ),
    );
  }
}
