// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// class Article {
//   final String title;
//   final String urlToImage;
//   final String content;
//   final String source;
//   final String publishedAt;

//   Article({
//     required this.title,
//     required this.urlToImage,
//     required this.content,
//     required this.source,
//     required this.publishedAt,
//   });

//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'urlToImage': urlToImage,
//       'content': content,
//       'source': source,
//       'publishedAt': publishedAt,
//     };
//   }

//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//       title: json['title'] ?? '',
//       urlToImage: json['urlToImage'] ?? '',
//       content: json['content'] ?? '',
//       source: json['source']['name'] ?? '',
//       publishedAt: json['publishedAt'] ?? '',
//     );
//   }
// }

// extension ArticleListExtension on List<Article> {
//   List<Map<String, dynamic>> toJsonList() {
//     return this.map((article) => article.toJson()).toList();
//   }
// }

// extension JsonListExtension on List<Map<String, dynamic>> {
//   List<Article> toArticleList() {
//     return this.map((json) => Article.fromJson(json)).toList();
//   }
// }

// class ArticleStorage {
//   Future<void> saveArticles(List<Article> articles) async {
//     final prefs = await SharedPreferences.getInstance();
//     final savedArticles = prefs.getStringList('saved_articles') ?? [];

//     savedArticles.addAll(articles.toJsonList().map((json) => jsonEncode(json)));

//     await prefs.setStringList('saved_articles', savedArticles);
//   }

//   Future<List<Article>> getSavedArticles() async {
//     final prefs = await SharedPreferences.getInstance();
//     final savedArticles = prefs.getStringList('saved_articles') ?? [];

//     return savedArticles.map((articleJson) => json.decode(articleJson)).toList().toArticleList();
//   }
// }
