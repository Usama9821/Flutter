class DemoModel {
  final int id;
  final String name;

  DemoModel({this.id, this.name});

  factory DemoModel.fromJson(Map<String, dynamic> json) {
    return DemoModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
