String longestUniqueSubstring(String str) {
  String longestString = "";
  String currentString = "";

  for (var char in str.split("")) {
    if (currentString.contains(char)) {
      int index = currentString.indexOf(char);
      currentString = currentString.substring(index + 1);
    }
    currentString += char;
    if (currentString.length > longestString.length) {
      longestString = currentString;
    }
  }

  return longestString;
}