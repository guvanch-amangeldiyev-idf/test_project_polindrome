import 'package:flutter/material.dart';
import 'package:presentation/bloc/base/bloc_data.dart';
import 'package:presentation/bloc/base/bloc_state.dart';
import 'package:presentation/bloc/home_bloc.dart';
import 'package:presentation/bloc/home_data.dart';
import 'package:presentation/widgets/text_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState<A> extends BlocState<MyHomePage, HomeBloc> {
  //HomeBloc bloc = HomeBloc(PalindromeUseCase());

  void _incrementCounter() {
    bloc.checkPalindrome();
  }

  @override
  void initState() {
    super.initState();
    bloc.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
          initialData: BlocData.init(),
          stream: bloc.getStream,
          builder: (context, snapshot) {
            final blocData = snapshot.data;
            if (blocData is BlocData) {
              final screenData = blocData.data;
              if (blocData.isloading) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (screenData is HomeData) {
                return _BuildResult(
                  screenData: screenData,
                  bloc: bloc,
                );
              } else {
                return const SizedBox.shrink();
              }
            } else {
              return const SizedBox.shrink();
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _BuildResult extends StatelessWidget {
  const _BuildResult({
    Key? key,
    required this.screenData,
    required this.bloc,
  }) : super(key: key);
  final HomeData screenData;
  final HomeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFieldOfPolindrome(onChanged: bloc.setPalindromeString),
          Text('Is palindrome=${screenData.isPalindromeOrNot}'),
        ],
      ),
    );
  }
}
