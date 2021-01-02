part of openapi.api;

class ApiDelSubTaskRes {
  
  String id = null;
  ApiDelSubTaskRes();

  @override
  String toString() {
    return 'ApiDelSubTaskRes[id=$id, ]';
  }

  ApiDelSubTaskRes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ApiDelSubTaskRes> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiDelSubTaskRes>() : json.map((value) => ApiDelSubTaskRes.fromJson(value)).toList();
  }

  static Map<String, ApiDelSubTaskRes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiDelSubTaskRes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiDelSubTaskRes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiDelSubTaskRes-objects as value to a dart map
  static Map<String, List<ApiDelSubTaskRes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiDelSubTaskRes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiDelSubTaskRes.listFromJson(value);
       });
     }
     return map;
  }
}

