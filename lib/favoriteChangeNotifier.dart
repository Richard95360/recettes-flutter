import 'package:flutter/foundation.dart';
import 'package:projettest1/recipe.dart';
import 'package:projettest1/recipeBox.dart';
import 'package:projettest1/recipeBox.dart';

class FavoriteChangeNotifier with ChangeNotifier {
   Recipe recipe;

    FavoriteChangeNotifier(this.recipe);

    bool get isFavorited => recipe.isFavorite;
    int get favoriteCount => recipe.favoriteCount+ (isFavorited? 1 : 0);
   set isFavorited(bool isFavorited) {
     recipe.isFavorite = isFavorited;
     RecipeBox.box?.put(recipe.key(), recipe);
     notifyListeners();
   }
}