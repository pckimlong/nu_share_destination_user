class EmptyRequiredFieldError<T> extends Error {
  final T? field;

  EmptyRequiredFieldError([this.field]);

  @override
  String toString() {
    return Error.safeToString('Required field is empty: $field');
  }
}
