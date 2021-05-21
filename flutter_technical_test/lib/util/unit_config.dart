class UnitConfig {
  static double _widthUnit;
  static double _heightUnit;
  static double _screenWidth;
  static double _screenHeight;

  UnitConfig(double screenWidth, double screenHeight) {
    _screenWidth = screenWidth;
    _screenHeight = screenHeight;
    _widthUnit = screenWidth / 1080;
    _heightUnit = screenHeight / 1920;
  }

  static double getWidth(int value) {
    return _widthUnit * value;
  }

  static double getHeight(int value) {
    return _heightUnit * value;
  }

  static double getScreenWidth() {
    return _screenWidth;
  }

  static double getScreenHeight() {
    return _screenHeight;
  }
}
