import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  final String id;
  bool? isDone;
  bool? isDeleted;
  Task({required this.title, required this.id, this.isDone, this.isDeleted}) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }
  Task copyWith({
    String? title,
    String? id,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
        title: this.title,
        id: id ?? this.id,
        isDeleted: isDeleted ?? this.isDeleted,
        isDone: isDone ?? this.isDone);
  }

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "id": id,
      "isDone": isDone,
      "isDeleted": isDeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map["title"] ?? "",
      id: map["id"] ?? "",
      isDone: map["isDone"],
      isDeleted: map["isDeleted"],
    );
  }

  @override
  List<Object?> get props => [title, id, isDone, isDeleted];
}
