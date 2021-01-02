part of openapi.api;

class ApiListSubTaskRes {
  
  List<ApiSubTask> subTasks = [];
  ApiListSubTaskRes();

  @override
  String toString() {
    return 'ApiListSubTaskRes[subTasks=$subTasks, ]';
  }

  ApiListSubTaskRes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subTasks = (json['subTasks'] == null) ?
      null :
      ApiSubTask.listFromJson(json['subTasks']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (subTasks != null)
      json['subTasks'] = subTasks;
    return json;
  }

  static List<ApiListSubTaskRes> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiListSubTaskRes>() : json.map((value) => ApiListSubTaskRes.fromJson(value)).toList();
  }

  static Map<String, ApiListSubTaskRes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiListSubTaskRes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiListSubTaskRes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiListSubTaskRes-objects as value to a dart map
  static Map<String, List<ApiListSubTaskRes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiListSubTaskRes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiListSubTaskRes.listFromJson(value);
       });
     }
     return map;
  }
}

