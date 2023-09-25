import 'package:change_color_with_bloc/bloc/home_bloc.dart';
import 'package:change_color_with_bloc/bloc/home_event.dart';
import 'package:change_color_with_bloc/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('github : aidinasgary'),
        backgroundColor: Color.fromARGB(255, 94, 5, 153),
      ),
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(builder: ((context, state) {
            if (state is ColorInit) {
              return Container(
                color: state.color,
              );
            }
            if (state is ColorRepaint) {
              return Container(
                color: state.color,
              );
            }
            return Container(
              color: Colors.black,
            );
          })),
          Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 94, 5, 153),
                  ),
                  onPressed: () {
                    context.read<HomeBloc>().add(ChangeColorEvent());
                  },
                  child: Text('click for change')))
        ],
      ),
    );
  }
}
