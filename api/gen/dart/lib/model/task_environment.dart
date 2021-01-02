part of openapi.api;

class TaskEnvironment {
  
  String name = null;
  
  Map<String, String> environment = {};
  TaskEnvironment();

  @override
  String toString() {
    return 'TaskEnvironment[name=$name, environment=$environment, ]';
  }

  TaskEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    environment = (json['environment'] == null) ?
      null :
      (json['environment'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (environment != null)
      json['environment'] = environment;
    return json;
  }

  static List<TaskEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskEnvironment>() : json.map((value) => TaskEnvironment.fromJson(value)).toList();
  }

  static Map<String, TaskEnvironment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskEnvironment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskEnvironment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskEnvironment-objects as value to a dart map
  static Map<String, List<TaskEnvironment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskEnvironment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskEnvironment.listFromJson(value);
       });
     }
     return map;
  }
}

