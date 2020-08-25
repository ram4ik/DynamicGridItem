//
//  ContentView.swift
//  DynamicGridItem
//
//  Created by ramil on 25.08.2020.
//

import SwiftUI

struct ContentView: View {
    private let columns = [
        GridItem(.adaptive(minimum: 50, maximum: 150)),
        GridItem(.adaptive(minimum: 400, maximum: 600)),
        GridItem(.adaptive(minimum: 250, maximum: 350))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0 ..< 100) { value in
                    Image(systemName: "swift")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
