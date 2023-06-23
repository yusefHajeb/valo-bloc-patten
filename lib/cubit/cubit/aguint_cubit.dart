import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'aguint_state.dart';

class AguintCubit extends Cubit<AguintState> {
  AguintCubit() : super(AguintInitial());
}
