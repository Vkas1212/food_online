import 'package:food_online/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = CategoryModel();

  categoryModel.name = "Pizza";
  categoryModel.image = "images/category/pizza.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "Momo";
  categoryModel.image = "images/category/momos.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "Bibimbap";
  categoryModel.image = "images/category/bibimbap.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "KFC";
  categoryModel.image = "images/category/fried-chicken.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "Pasta";
  categoryModel.image = "images/category/paella.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "Ramen";
  categoryModel.image = "images/category/ramen.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "Rice";
  categoryModel.image = "images/category/rice.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "Spaguetti";
  categoryModel.image = "images/category/spaguetti.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.name = "Taco";
  categoryModel.image = "images/category/taco.png";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  return category;
}
