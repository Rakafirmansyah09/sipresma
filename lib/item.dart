class Item {
  int? id;
  String name;
  String nim;
  String activityName;
  String type;
  String day;
  String month;
  String year;
  String champ;
  String phoneNumber;

  Item({
    this.id,
    required this.name,
    required this.nim,
    required this.activityName,
    required this.type,
    required this.day,
    required this.month,
    required this.year,
    required this.champ,
    required this.phoneNumber,
  });

  // Convert a Map object to an Item object
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      nim: map['nim'],
      activityName: map['activityName'],
      type: map['type'],
      day: map['day'],
      month: map['month'],
      year: map['year'],
      champ: map['champ'],
      phoneNumber: map['phoneNumber'],
    );
  }

  // Convert an Item object to a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nim': nim,
      'activityName': activityName,
      'type': type,
      'day': day,
      'month': month,
      'year': year,
      'champ': champ,
      'phoneNumber': phoneNumber,
    };
  }
}
