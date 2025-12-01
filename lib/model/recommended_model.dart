class RecommendedModel {
  String name;
  String img;

  RecommendedModel({
    required this.name,
    required this.img,
  });

  static List<RecommendedModel> recommendedData = [
    RecommendedModel(
      name: "Explore Aspen",
      img: "assets/images/location_3.png",
    ),
    RecommendedModel(
      name: "Luxurious Aspen",
      img: "assets/images/location_4.png",
    ),
    
  ];
}
