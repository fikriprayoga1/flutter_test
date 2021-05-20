class UnitConfig {
  static double widthUnit;
  static double heightUnit;

  UnitConfig(double screenWidth, double screenHeight) {
    widthUnit = screenWidth / 1080;
    heightUnit = screenHeight / 1920;
  }

  static double getWidth(int value) {
    return widthUnit * value;
  }

  static double getHeight(int value) {
    return heightUnit * value;
  }
}
