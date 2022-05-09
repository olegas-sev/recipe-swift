//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by Olegas Sevcenko on 2022-04-23.
//

import Foundation

class RecipesViewModel: ObservableObject {
    let defaults = UserDefaults.standard
    
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        // Here you can fetch data locally or from 3rd party 
        // 1) Loading locally stored recipes
        recipes = Recipe.all
    }

    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
