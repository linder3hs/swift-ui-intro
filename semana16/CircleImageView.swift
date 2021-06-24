//
//  CircleImageView.swift
//  semana16
//
//  Created by Linder Hassinger on 24/06/21.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("bg")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 3))
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView().previewDevice("iPhone 11")
    }
}
