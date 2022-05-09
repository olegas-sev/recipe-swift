//
//  ContentView.swift
//  RecipeSaver
//
//  Created by Olegas Sevcenko on 2022-04-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
