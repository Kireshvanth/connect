import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

MongoDbModelPost mongoDbModelPostFromJson(String str) => MongoDbModelPost.fromJson(json.decode(str));

String mongoDbModelPostToJson(MongoDbModelPost data) => json.encode(data.toJson());

class MongoDbModelPost {
  MongoDbModelPost({
    required this.id,
    required this.title,
    required this.description,
    required this.comments,
    required this.likes,
    required this.imageUrl,
    required this.profileName,
    required this.profilePicUrl,
  });

  ObjectId id;
  String title;
  String description;
  List<String> comments;
  List<String> likes;
  String imageUrl;
  String profileName;
  String profilePicUrl;

  factory MongoDbModelPost.fromJson(Map<String, dynamic> json) => MongoDbModelPost(
    id: json["_id"],
    title: json["title"],
    description: json["description"],
    comments: List<String>.from(json["comments"].map((x) => x)),
    likes: List<String>.from(json["likes"].map((x) => x)),
    imageUrl: json["imageUrl"],
    profileName: json["profileName"],
    profilePicUrl: json["profilePicUrl"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "title": title,
    "description": description,
    "comments": List<dynamic>.from(comments.map((x) => x)),
    "likes": List<dynamic>.from(likes.map((x) => x)),
    "imageUrl": imageUrl,
    "profileName": profileName,
    "profilePicUrl": profilePicUrl,
  };
}