//
//  PickupImages.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/06.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

struct PickupImages: View {
    let pickupUrl1: String
    let pickupUrl2: String
    let pickupUrl3: String
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    let partentWidth: CGFloat
    let imageSpacing: CGFloat = 3

    init(partentWidth: CGFloat, pickupUrl1: String, pickupUrl2: String, pickupUrl3: String) {
        self.pickupUrl1 = pickupUrl1
        self.pickupUrl2 = pickupUrl2
        self.pickupUrl3 = pickupUrl3
        let spacings = imageSpacing * 2
        self.partentWidth = (partentWidth - spacings) / 3
        self.imageWidth = (partentWidth - spacings) / 3
        self.imageHeight = (partentWidth - spacings) / 3
    }

    var body: some View {
        HStack(alignment: .center, spacing: imageSpacing) {
            URLImage(url: pickupUrl1) {
                $0.resizable()
                .aspectRatio(contentMode: .fill)
                    .frame(width: self.imageWidth,
                           height: self.imageHeight)
                .clipped()
            }
            URLImage(url: pickupUrl2) {
                $0.resizable()
                .aspectRatio(contentMode: .fill)
                    .frame(width: self.imageWidth,
                           height: self.imageHeight)
                .clipped()
            }
            URLImage(url: pickupUrl3) {
                $0.resizable()
                .aspectRatio(contentMode: .fill)
                    .frame(width: self.imageWidth,
                           height: self.imageHeight)
                .clipped()
            }
        }.cornerRadius(10)
    }
}

struct PickupImages_Previews: PreviewProvider {
    static var previews: some View {
        PickupImages(partentWidth: 360,
                     pickupUrl1: "https://picsum.photos/500",
                     pickupUrl2: "https://picsum.photos/500",
                     pickupUrl3: "https://picsum.photos/500")
    }
}


