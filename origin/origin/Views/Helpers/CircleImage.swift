//
//  SwiftUIView.swift
//  origin
//
//  Created by Edmond Phillips on 12/10/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("abductionofganymede"))
    }
}
// artgalleryfinal (1)
