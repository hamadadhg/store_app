abstract class StoreState {}

class InitialStoreState extends StoreState {}

class LoadingStoreState extends StoreState {}

class SuccessStoreState extends StoreState {
  int limit;
  SuccessStoreState({
    required this.limit,
  });
}

class FailureStoreState extends StoreState {
  String errorMessage;
  FailureStoreState({
    required this.errorMessage,
  });
}
