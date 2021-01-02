part of openapi.api;

class ApiSubTask {
  
  String id = null;
  
  String name = null;
  
  String description = null;
  
  String type = null;
  
  String category = null;
  
  int createAt = null;
  
  int updateAt = null;
  
  SubTaskScriptSubTask scriptSubTask = null;
  ApiSubTask();

  @override
  String toString() {
    return 'ApiSubTask[id=$id, name=$name, description=$description, type=$type, category=$category, createAt=$createAt, updateAt=$updateAt, scriptSubTask=$scriptSubTask, ]';
  }

  ApiSubTask.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = json['description'];
    type = json['type'];
    category = json['category'];
    createAt = json['createAt'];
    updateAt = json['updateAt'];
    scriptSubTask = (json['scriptSubTask'] == null) ?
      null :
      SubTaskScriptSubTask.fromJson(json['scriptSubTask']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (description != null)
      json['description'] = description;
    if (type != null)
      json['type'] = type;
    if (category != null)
      json['category'] = category;
    if (createAt != null)
      json['createAt'] = createAt;
    if (updateAt != null)
      json['updateAt'] = updateAt;
    if (scriptSubTask != null)
      json['scriptSubTask'] = scriptSubTask;
    return json;
  }

  static List<ApiSubTask> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiSubTask>() : json.map((value) => ApiSubTask.fromJson(value)).toList();
  }

  static Map<String, ApiSubTask> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiSubTask>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiSubTask.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiSubTask-objects as value to a dart map
  static Map<String, List<ApiSubTask>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiSubTask>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiSubTask.listFromJson(value);
       });
     }
     return map;
  }
}

