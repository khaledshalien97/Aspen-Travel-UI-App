class PopularModel {
  String name;
  String desc;
  double evaluation;
  int review;
  int price;
  String img;

  PopularModel({
    required this.name,
    required this.desc,
    required this.evaluation,
    required this.review,
    required this.price,
    required this.img,
  });

  static List<PopularModel> popularData = [
    PopularModel(
      name: "Alley Palace",
      desc: "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining, shopping and more...",
      evaluation: 4.1,
      review: 332,
      price: 199,
      img: "assets/images/location_1.png",
    ),
    PopularModel(
      name: "Coeurdes Alpes",
      desc: "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining, shopping and more...",
      evaluation: 4.5,
      review: 542,
      price: 220,
      img: "assets/images/location_2.png",
    ),
    
  ];
}
