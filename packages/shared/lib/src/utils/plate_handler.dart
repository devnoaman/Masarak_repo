// ignore_for_file: public_member_api_docs, sort_constructors_first

class PlateHandler {
  getInitial(String state) => plateCodes[state] ?? '';
  static get plateCodes => {
    "bghdad": "11",
    "tamym": "12",
    "nyno": "12",

    "mysan": "13",
    "bsr": "14",
    "anbar": "15",

    "kadsy": "16",
    "mthn": "17",
    "babl": "18",

    "krblaaa": "19",
    "dyal": "20",
    "slymany": "21",
    "arbyl": "22",
    "halabja": "23",
    "dhok": "24",

    "krkok": "25",
    "slah-aldyn": "26",
    "thy-kar": "27",
    "ngf": "28",
    "oast": "29",

    // -----
    "11": "11",
    "12": "12",

    "13": "13",
    "14": "14",
    "15": "15",

    "16": "16",
    "17": "17",
    "18": "18",

    "19": "19",
    "20": "20",
    "21": "21",
    "22": "22",
    "23": "23",
    "24": "24",

    "25": "25",
    "26": "26",
    "27": "27",
    "28": "28",
    "29": "29",
  };

  String handlePlate(String plate, String state) {
    var ltr = isFirstCharLetter(plate ?? '1');
    return '${ltr ? getInitial(state ?? '') : ''}${plate}';
  }

  bool isFirstCharLetter(String text) {
    if (text.isEmpty) {
      return false;
    }
    final firstChar = text[0].toLowerCase();
    return firstChar.codeUnitAt(0) >= 'a'.codeUnitAt(0) &&
        firstChar.codeUnitAt(0) <= 'z'.codeUnitAt(0);
  }
}
