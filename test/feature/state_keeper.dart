class StateKeeper<T> {
  StateKeeper(this.state);

  T state;

  T emit(T newState) {
    state = newState;
    return state;
  }
}
