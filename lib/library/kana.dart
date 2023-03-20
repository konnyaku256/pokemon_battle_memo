String hiraganaToKatakana(val) {
  return val.replaceAllMapped(RegExp("[ぁ-ゔ]"),
      (Match m) => String.fromCharCode(m.group(0)!.codeUnitAt(0) + 0x60));
}
