//
//  User.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/07.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

struct User {
    let profileUrl: String
    let backGroundUrl: String
    let pickupUrl1: String
    let pickupUrl2: String
    let pickupUrl3: String
    let title:String
    let titleColor: Color
    let profileColor: Color
    let followButtonColor: FollowButtonColor

    init(profileUrl: String,
         backGroundUrl: String,
         pickupUrl1: String,
         pickupUrl2: String,
         pickupUrl3: String,
         title: String,
         titleColor: Color = .black,
         profileColor: Color = .white,
         followButtonTextColor: Color = .white,
         followButtonBackColor: Color = MyColor.followDefault.color) {
        self.profileUrl = profileUrl
        self.backGroundUrl = backGroundUrl
        self.pickupUrl1 = pickupUrl1
        self.pickupUrl2 = pickupUrl2
        self.pickupUrl3 = pickupUrl3
        self.title = title
        self.titleColor = titleColor
        self.profileColor = profileColor
        self.followButtonColor = FollowButtonColor(textColor: followButtonTextColor,
                                                   backgroundColor: followButtonBackColor)
    }
}

struct FollowButtonColor {
    let textColor: Color
    let backgroundColor: Color

    init(textColor: Color = .white, backgroundColor: Color = MyColor.followDefault.color) {
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }
}
