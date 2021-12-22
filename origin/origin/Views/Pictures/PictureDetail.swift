//
//  PictureDetail.swift
//  origin
//
//  Created by Edmond Phillips on 12/13/21.
//

import SwiftUI

struct PictureDetail: View {
    @EnvironmentObject var modelData: ModelData
    var picture: Picture
    
    var pictureIndex: Int {
        modelData.pictures.firstIndex(where: { $0.id == picture.id })!
    }
    var body: some View {
        ScrollView {
            MapView(coordinate: picture.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: picture.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(picture.date)
                    .font(.title)
                HStack {
                    Text(picture.name)
                        .font(.subheadline)
                        Spacer()
                    Text(picture.artist)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(picture.name)")
                    .font(.title2)
                Text(picture.description)
            }
            .offset(y: -80)
            .padding()
        }
        .navigationTitle(picture.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PictureDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        PictureDetail(picture: modelData.pictures[2])
            .environmentObject(modelData)
    }
}
