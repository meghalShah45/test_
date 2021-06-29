class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.total_expense = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  int money;
  int total_expense;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'Fuel',
      lessonCount: 24,
      money: 25,
      total_expense: 20000,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Repair',
      lessonCount: 22,
      money: 18,
      total_expense: 20000,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'Service',
      lessonCount: 24,
      money: 25,
      total_expense: 20000,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'PUC / Insurance',
      lessonCount: 22,
      money: 18,
      total_expense: 20000,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'Tyre Care',
      lessonCount: 22,
      money: 18,
      total_expense: 20000,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Total Fuel',
      lessonCount: 12,
      money: 25,
      total_expense: 20000,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Total Service',
      lessonCount: 28,
      money: 208,
      total_expense: 20000,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Total Repair',
      lessonCount: 12,
      money: 25,
      total_expense: 20000,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'PUC / Insurance',
      lessonCount: 28,
      money: 208,
      total_expense: 20000,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Tyre Care',
      lessonCount: 28,
      money: 188,
      total_expense: 20000,
      rating: 4.9,
    ),
  ];
}
