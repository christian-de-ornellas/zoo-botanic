class Item {
  int id;
  String dateCreated;
  String question;
  String ask;

  Item({this.id, this.dateCreated, this.question, this.ask});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateCreated = json['dateCreated'];
    question = json['question'];
    ask = json['ask'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['dateCreated'] = this.dateCreated;
    data['question'] = this.question;
    data['ask'] = this.ask;
    return data;
  }
}
