//
//  ContentView.swift
//  PreviewHelp
//
//  Created by Isaac Carrington on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(Favourites.self) private var favourite
    var basket = Basket()
    @State private var selectedFruit: String = ""
    var body: some View {
        VStack {
            Text(favourite.favFruit.name)
            Text(favourite.favFruit.color)
            Picker("Please choose a fruit", selection: $selectedFruit) {
                ForEach(basket.basketContents, id: \.name) { fruit in
                    Text(fruit.name)
                }
            }
            Button {
                print("saving")
                if let index = basket.basketContents.firstIndex(where: { $0.name == selectedFruit }) {
                    print("The index of the \(selectedFruit) fruit is: \(index)")
                    favourite.favFruit = basket.basketContents[index]
                } else {
                    print("The 'orange' fruit was not found in the basket.")
                }
                
            } label: {
                Text("SAVE")
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView().environment(Banana()).environment(Favourites())
}
