//
//  Constraints.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/07.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

let user1 = User(profileUrl: "https://picsum.photos/500?grayscale",
                 backGroundUrl: "https://picsum.photos/280/130",
                 pickupUrl1: "https://picsum.photos/500",
                 pickupUrl2: "https://picsum.photos/500",
                 pickupUrl3: "https://picsum.photos/500",
                 title: "AVGVSTVS",
                 profileColor: MyColor.profileGray.color,
                 followButtonBackColor: MyColor.followButtonBlack.color)

let user2 = User(profileUrl: "https://picsum.photos/500??blur",
                 backGroundUrl: "https://picsum.photos/280/130",
                 pickupUrl1: "https://picsum.photos/500",
                 pickupUrl2: "https://picsum.photos/500",
                 pickupUrl3: "https://picsum.photos/500",
                 title: "TIBERIVS")

let user3 = User(profileUrl: "https://picsum.photos/500",
                 backGroundUrl: "https://picsum.photos/280/130",
                 pickupUrl1: "https://picsum.photos/500",
                 pickupUrl2: "https://picsum.photos/500",
                 pickupUrl3: "https://picsum.photos/500",
                 title: "GAIVS",
                 titleColor: .white,
                 profileColor: MyColor.profileBlue.color,
                 followButtonTextColor: MyColor.profileBlue.color,
                 followButtonBackColor: .white)

let user4 = User(profileUrl: "https://picsum.photos/500",
                 backGroundUrl: "https://picsum.photos/280/130",
                 pickupUrl1: "https://picsum.photos/500",
                 pickupUrl2: "https://picsum.photos/500",
                 pickupUrl3: "https://picsum.photos/500",
                 title: "CLAVDIVS",
                 titleColor: MyColor.followButtonRed.color,
                 profileColor: MyColor.profileCream.color,
                 followButtonTextColor: MyColor.profileCream.color,
                 followButtonBackColor: MyColor.followButtonRed.color)
let user5 = User(profileUrl: "https://picsum.photos/500?grayscale",
                 backGroundUrl: "https://picsum.photos/280/130",
                 pickupUrl1: "https://picsum.photos/500",
                 pickupUrl2: "https://picsum.photos/500",
                 pickupUrl3: "https://picsum.photos/500",
                 title: "NERO",
                 titleColor: MyColor.profileTextCream.color,
                 profileColor: .white,
                 followButtonTextColor: .white,
                 followButtonBackColor: MyColor.followButtonBrown.color)

let userDatase = [user1, user2, user3, user4,user5]
