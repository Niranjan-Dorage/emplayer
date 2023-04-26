class Category {
  String title;
  String imgUrl;
  Category({required this.title, required this.imgUrl});

  static List<Category> getCategories() {
    return <Category>[
      Category(
        title: "Today's Top Hits",
        imgUrl:
            "https://c.saavncdn.com/editorial/wt15-49_20230324114819.jpg?bch=1680264743",
      ),
      Category(
        title: "Chill Vibes",
        imgUrl:
            "https://c.saavncdn.com/editorial/wt15-49_20230324114819.jpg?bch=1680264743",
      ),
      Category(
        title: "Workout",
        imgUrl:
            "https://c.saavncdn.com/editorial/wt15-49_20230324114819.jpg?bch=1680264743",
      ),
      Category(
        title: "Study",
        imgUrl:
            "https://c.saavncdn.com/editorial/wt15-49_20230324114819.jpg?bch=1680264743",
      ),
    ];
  }
}
