abstract class CounterBloc {
  Stream<int> counter; // output from the bloc
  Sink<void> incrementSink; // input to the bloc

  void dispose() {
    incrementSink.close();
  }
}
