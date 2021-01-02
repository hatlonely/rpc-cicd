part of openapi.api;

class ApiGetSubTasksReq {
  
  List<String> ids = [];
  ApiGetSubTasksReq();

  @override
  String toString() {
    return 'ApiGetSubTasksReq[ids=$ids, ]';
  }

  ApiGetSubTasksReq.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ids = (json['ids'] == null) ?
      null :
      (json['ids'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ids != null)
      json['ids'] = ids;
    return json;
  }

  static List<ApiGetSubTasksReq> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiGetSubTasksReq>() : json.map((value) => ApiGetSubTasksReq.fromJson(value)).toList();
  }

  static Map<String, ApiGetSubTasksReq> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiGetSubTasksReq>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiGetSubTasksReq.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiGetSubTasksReq-objects as value to a dart map
  static Map<String, List<ApiGetSubTasksReq>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiGetSubTasksReq>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiGetSubTasksReq.listFromJson(value);
       });
     }
     return map;
  }
}

