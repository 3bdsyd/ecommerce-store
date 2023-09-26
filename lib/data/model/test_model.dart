import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
    final List<Datum> data;

    DataModel({
        required this.data,
    });

    factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    final int id;
    final int userId;
    final int adId;
    final Ad ad;

    Datum({
        required this.id,
        required this.userId,
        required this.adId,
        required this.ad,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        adId: json["ad_id"],
        ad: Ad.fromJson(json["ad"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "ad_id": adId,
        "ad": ad.toJson(),
    };
}

class Ad {
    final int id;
    final int userId;
    final int categoryId;
    final int approvedBy;
    final String title;
    final String description;
    final String price;
    final String location;
    final String status;
    final String type;
    final int pinable;
    final String images;
    final int searchCount;
    final int viewCount;
    final int shareCount;
    final int callClickCount;
    final int whatsappClickCount;
    final int messagesClickCount;
    final DateTime createdAt;
    final dynamic updatedAt;
    final dynamic deletedAt;

    Ad({
        required this.id,
        required this.userId,
        required this.categoryId,
        required this.approvedBy,
        required this.title,
        required this.description,
        required this.price,
        required this.location,
        required this.status,
        required this.type,
        required this.pinable,
        required this.images,
        required this.searchCount,
        required this.viewCount,
        required this.shareCount,
        required this.callClickCount,
        required this.whatsappClickCount,
        required this.messagesClickCount,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
    });

    factory Ad.fromJson(Map<String, dynamic> json) => Ad(
        id: json["id"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        approvedBy: json["approved_by"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        location: json["location"],
        status: json["status"],
        type: json["type"],
        pinable: json["pinable"],
        images: json["images"],
        searchCount: json["search_count"],
        viewCount: json["view_count"],
        shareCount: json["share_count"],
        callClickCount: json["call_click_count"],
        whatsappClickCount: json["whatsapp_click_count"],
        messagesClickCount: json["messages_click_count"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "category_id": categoryId,
        "approved_by": approvedBy,
        "title": title,
        "description": description,
        "price": price,
        "location": location,
        "status": status,
        "type": type,
        "pinable": pinable,
        "images": images,
        "search_count": searchCount,
        "view_count": viewCount,
        "share_count": shareCount,
        "call_click_count": callClickCount,
        "whatsapp_click_count": whatsappClickCount,
        "messages_click_count": messagesClickCount,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
    };
}
