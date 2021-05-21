// This class is for deserilation of detail of json response
class ModelDetail {
  final int userId;
  final int id;
  final String title;
  final String body;

  ModelDetail([
    this.userId = 0,
    this.id = 0,
    this.title = "",
    this.body = "",
  ]);

  factory ModelDetail.fromJson(Map<String, dynamic> json) {
    return ModelDetail(
      json['userId'],
      json['id'],
      json['title'],
      json['body'],
    );
  }
}
