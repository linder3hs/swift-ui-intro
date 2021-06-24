//
//  ContentView.swift
//  semana16
//
//  Created by Linder Hassinger on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            //VSTACK HTACK
            VStack {
                Text("Hello, world!")
                    .font(.title)
                    .foregroundColor(.green)
                    .padding()
                HStack {
                    Text("Linder Hassinger")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.orange)
                    Text("Peru")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.red)
                }
                NavigationLink(destination: MapView()) {
                    Text("Go Map")
                        .font(.body)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(10.0)
                        .background(Color.red)
                        .cornerRadius(8)
                }
            }.navigationBarTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11")
    }
}
