part of openapi.api;

class ApiPutSubTaskRes {
  
  String id = null;
  ApiPutSubTaskRes();

  @override
  String toString() {
    return 'ApiPutSubTaskRes[id=$id, ]';
  }

  ApiPutSubTaskRes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ApiPutSubTaskRes> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiPutSubTaskRes>() : json.map((value) => ApiPutSubTaskRes.fromJson(value)).toList();
  }

  static Map<String, ApiPutSubTaskRes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiPutSubTaskRes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiPutSubTaskRes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiPutSubTaskRes-objects as value to a dart map
  static Map<String, List<ApiPutSubTaskRes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiPutSubTaskRes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiPutSubTaskRes.listFromJson(value);
       });
     }
     return map;
  }
}

