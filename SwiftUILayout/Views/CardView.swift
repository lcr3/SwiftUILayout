//
//  CardView.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/06.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

struct CardView: View {
    let user: User
    let contentWidth: CGFloat = 280
    let subContentsAreaPadding: CGFloat = 14

    var body: some View {
        VStack(alignment: .center) {
            URLImage(url: user.backGroundUrl) {
                $0.resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 130)
                .clipped()
            }
            ProfileView(url: user.profileUrl)
                .offset(y: -70)
                .padding(.bottom, -80)

            Text(user.title)
                .font(.body)
                .foregroundColor(user.titleColor)
                .padding(.top, 20)
                .padding(.bottom, 20)

            VStack(alignment: .center) {
                FollowButton(color: user.followButtonColor)
                PickupImages(partentWidth: contentWidth - subContentsAreaPadding * 2,
                             pickupUrl1: user.pickupUrl1,
                             pickupUrl2: user.pickupUrl2,
                             pickupUrl3: user.pickupUrl3)
            }
            .padding(.all, subContentsAreaPadding)
        }
        .frame(width: contentWidth, alignment: .center)
        .background(user.profileColor)
        .cornerRadius(8)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: user1)
    }
}
