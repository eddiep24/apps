//
//  PictureList.swift
//  origin
//
//  Created by Edmond Phillips on 12/13/21.
//

import SwiftUI

struct PictureList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredPictures: [Picture] {
        modelData.pictures.filter { picture in
            (!showFavoritesOnly || picture.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                
                ForEach(filteredPictures) {picture in
                NavigationLink {
                    
                    List(filteredPictures) { picture in }
                    PictureDetail(picture: picture)
                } label: {
                    PictureRow(picture: picture)
                    }
                }
            }
            .navigationTitle("Masterpieces")
        }
    }
}

struct PictureList_Previews: PreviewProvider {
    static var previews: some View {
        PictureList()
            .environmentObject(ModelData())
    }
}
