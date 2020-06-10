extension MyDouble on double {
  double validate() {
    var value = this ?? 0;

    if (value < 0) {
      value *= -1;
    }
    return value;
  }
}