class Item {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final double discount;
  final double ratings;

  Item(
      {this.name,
        this.imagePath,
        this.price,
        this.description,
        this.category,
        this.discount,
        this.id,
        this.ratings});
}