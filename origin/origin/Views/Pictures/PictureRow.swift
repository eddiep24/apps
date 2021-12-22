//
//  PictureRow.swift
//  origin
//
//  Created by Edmond Phillips on 12/12/21.
//

import SwiftUI

struct PictureRow: View {
    var picture: Picture
    var body: some View {
        HStack {
            picture.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(picture.name)
            
            Spacer()
            
            if picture.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct PictureRow_Previews: PreviewProvider {
    static var pictures = ModelData().pictures
    
    static var previews: some View {
        Group {
            PictureRow(picture: pictures[0])
            PictureRow(picture: pictures[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
