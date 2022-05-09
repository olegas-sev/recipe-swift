//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Olegas Sevcenko on 2022-04-22.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
