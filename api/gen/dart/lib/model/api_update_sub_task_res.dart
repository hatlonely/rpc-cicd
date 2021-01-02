part of openapi.api;

class ApiUpdateSubTaskRes {
  
  String id = null;
  ApiUpdateSubTaskRes();

  @override
  String toString() {
    return 'ApiUpdateSubTaskRes[id=$id, ]';
  }

  ApiUpdateSubTaskRes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ApiUpdateSubTaskRes> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiUpdateSubTaskRes>() : json.map((value) => ApiUpdateSubTaskRes.fromJson(value)).toList();
  }

  static Map<String, ApiUpdateSubTaskRes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiUpdateSubTaskRes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiUpdateSubTaskRes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiUpdateSubTaskRes-objects as value to a dart map
  static Map<String, List<ApiUpdateSubTaskRes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiUpdateSubTaskRes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiUpdateSubTaskRes.listFromJson(value);
       });
     }
     return map;
  }
}

