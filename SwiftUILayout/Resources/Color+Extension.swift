//
//  Color+Extension.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/06.
//  Copyright © 2020 lcr. All rights reserved.
//

import Foundation
import SwiftUI

enum MyColor {
    case black
    case followDefault
    case followButtonBlack
    case followButtonBrown
    case followButtonCream
    case followButtonRed
    case profileGray
    case profileBlue
    case profileCream
    case profileTextCream
    var name: String {
        switch self {
        case .black: return "myBlack"
        case .followDefault: return "FollowButtonDefaultColor"
        case .followButtonBlack: return "FollowButtonBlackColor"
        case .followButtonBrown: return "FollowButtonBrownColor"
        case .followButtonCream: return "FollowButtonCreamColor"
        case .followButtonRed: return "FollowButtonRedColor"
        case .profileGray: return "ListBackGrayColor"
        case .profileBlue: return "ProfileBlueColor"
        case .profileCream: return "ProfileCreamColor"
        case .profileTextCream: return "ProfileTextCreamColor"
        }
    }
    var color: Color {
        return Color(name)
    }
    var uiColor: UIColor? {
        return UIColor(named: name)
    }
}
