class Note {
  int _id;
  int _priority;
  String _date;
  String _title;
  String _description;

  Note(this._title, this._date, this._priority, [this._description]);

  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  int get id => _id;

  int get priority => _priority;

  String get date => _date;

  String get title => _title;

  String get description => _description;

  set title(String newTitle) {
    if (newTitle.length <= 255) this._title = newTitle;
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) this._description = newDescription;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 || newPriority <= 2) this._priority = priority;
  }

  set date(String newDate) {
    this._date = date;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['priority'] = _priority;
    map['description'] = _description;
    map['date'] = _date;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._date = map['date'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._title = map['title'];
    this._id = map['id'];
  }
}
