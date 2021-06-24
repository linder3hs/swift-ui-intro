//
//  MapView.swift
//  semana16
//
//  Created by Linder Hassinger on 24/06/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        VStack(alignment: .leading)  {
            VStack {
                Map(coordinateRegion: $region)
                    .ignoresSafeArea(edges: .top)
                CircleImageView()
                    .offset(y: -110)
                    .padding(.bottom, -110)
            }
            VStack {
                Text("Apple Park")
                    .font(.title)
                HStack {
                    Text("Steve Jobs -")
                        .font(.subheadline)
                    Text("USA")
                        .font(.subheadline)
                }
                
            }.padding()
            Divider().padding()
            VStack {
                Text("Tecsup")
                    .font(.title)
                HStack {
                    Text("PMA -")
                        .font(.subheadline)
                    Text("Lima")
                        .font(.subheadline)
                }
                
            }.padding()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().previewDevice("iPhone 11")
    }
}
