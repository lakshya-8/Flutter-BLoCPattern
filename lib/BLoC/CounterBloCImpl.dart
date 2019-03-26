import 'package:myapp/BLoC/CounterBloc.dart';
import 'package:rxdart/rxdart.dart';

class CounterBloCImpl extends CounterBloc {
  final _subject = PublishSubject<void>();  // similar to StreamController

  Sink<void> get incrementSink => _subject;

  Stream<int> get counter => _subject.scan((current, _, __) => ++current, 0 );
}
