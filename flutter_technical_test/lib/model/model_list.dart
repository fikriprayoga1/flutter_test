// This class for deseraization of json response music list
class ModelList {
  final List<dynamic> modelDetail;

  ModelList(this.modelDetail);

  factory ModelList.fromJson(List<dynamic> json) {
    return ModelList(json);
  }
}