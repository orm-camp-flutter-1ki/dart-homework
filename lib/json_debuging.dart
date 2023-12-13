import 'dart:convert';

class CollectionSalePrice {
  final double price;
  final String cvtDatetime;

  const CollectionSalePrice({
    required this.price,
    required this.cvtDatetime,
  });

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'cvtDatetime': cvtDatetime,
    };
  }

  factory CollectionSalePrice.fromJson(Map<String, dynamic> json) {
    return CollectionSalePrice(
      price: json['price'] as double,
      cvtDatetime: json['cvtDatetime'] as String,
    );
  }

  @override
  String toString() {
    return 'CollectionSalePrice{price: $price, cvtDatetime: $cvtDatetime}';
  }
}

class CollectionChartData {
  final String collectionName;
  final List<CollectionSalePrice>? collectionSalePrice;

  const CollectionChartData({
    required this.collectionName,
    required this.collectionSalePrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'collectionName': collectionName,
      'collectionSalePrice': collectionSalePrice
          ?.map((collectionSalePrice) => collectionSalePrice.toJson())
          .toList(),
    };
  }

  factory CollectionChartData.fromJson(Map<String, dynamic> json) {
    return CollectionChartData(
        collectionName: json['collectionName'],
        collectionSalePrice: (json['collectionSalePrice'] as List<dynamic>?)
            ?.map((collectionSalePrice) => CollectionSalePrice.fromJson(collectionSalePrice))
            .toList());
  }

  @override
  String toString() {
    return 'CollectionCharData{collectionName: $collectionName, collectionSalePrice: $collectionSalePrice}';
  }
}

final String json = '''{
 "collectionChartDataList": [
   {
     "collectionName": "collectionName",
     "collectionSalePrice": null
   },
   {
     "collectionName": "collectionName",
     "collectionSalePrice": [
       {
         "price": 59.75,
         "cvtDatetime": "2023-03-26T08:08:35"
       },
       {
         "price": 60.00,
         "cvtDatetime": "2023-03-26T08:08:45"
       }
     ]
   }
 ]
}''';

void main() {
  final collectionChartData = jsonDecode(json);
  final resultList = collectionChartData['collectionChartDataList']
      .map<CollectionChartData>((r) {
    return CollectionChartData.fromJson(r);
  }).toList();

  print(resultList);
}
