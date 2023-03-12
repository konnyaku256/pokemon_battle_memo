enum Flavor {
  DEVELOPMENT,
  PRODUCTION,
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return 'ばとめも（dev）';
      case Flavor.PRODUCTION:
        return 'ばとめも';
      default:
        return 'title';
    }
  }

}
