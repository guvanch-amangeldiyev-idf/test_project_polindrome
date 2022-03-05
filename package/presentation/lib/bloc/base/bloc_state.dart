import 'package:flutter/widgets.dart';
import 'package:presentation/bloc/base/base_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BlocState<S extends StatefulWidget, B extends BaseBloc>
    extends State<S> {
  @protected
  final B bloc = GetIt.I.get<B>();
}
