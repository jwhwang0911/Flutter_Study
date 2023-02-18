void main() {
  var oldFriends = ['nico', 'lynn'];
  List<String> newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "★ ${friend}",
  ];

  print(newFriends);
}
