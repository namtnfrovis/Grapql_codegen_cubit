import 'package:demo_graphql_codegen/cubit.dart';
import 'package:demo_graphql_codegen/screen_2.dart';
import 'package:demo_graphql_codegen/service.dart';
import 'package:demo_graphql_codegen/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserService(),
      child: BlocProvider<UserCubit>(
        create: (context) =>
            UserCubit(userService: context.read<UserService>()),
        child: const Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getUser();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(builder: (context, state) {
      if (state.status == UserStatus.initial) {
        return Container(
          color: Colors.green,
        );
      }
      if (state.status == UserStatus.loading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state.status == UserStatus.error) {
        return const Center(
          child: Text("Error"),
        );
      }
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // InkWell(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => Screen2(),
              //         ),
              //       );
              //     },
              //     child: Text(state.user.fullname)),
              Text(state.user.fullname),
              Text(state.user.email),
              Text(state.user.telephone),
              Text(state.user.address),
            ],
          ),
        ),
      );
    });
  }
}
