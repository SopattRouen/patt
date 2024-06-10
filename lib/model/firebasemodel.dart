
class CloudFirestore {
  String name;
  String address;
  String phone;
  String creditcard;
  String total;
  CloudFirestore({
    required this.name,
    required this.address,
    required this.phone,
    required this.creditcard,
    required this.total,
  });
  CloudFirestore.fromJson(Map<String, Object?> json)
      : this(
          name: json['name'] as String,
          address: json['address'] as String,
          phone: json['phone'] as String,
          creditcard: json['creditcard'] as String,
          total: json['total'] as String,
        );
  CloudFirestore copywith({
    String? name,
    String? address,
    String? phone,
    String? creditcard,
    String? total,
  }) {
    return CloudFirestore(
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      creditcard: creditcard ?? this.creditcard,
      total: total ?? this.total,
    );
  }

  Map<String, Object?> toJson() {
    return {
      "name": name,
      "address": address,
      "phone": phone,
      "creditcard": creditcard,
      "total": total,
    };
  }
}
