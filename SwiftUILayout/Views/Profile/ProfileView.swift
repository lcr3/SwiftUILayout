//
//  ProfileView.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/06.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    let url: String

    var body: some View {
        URLImage(url: url) {
            $0.resizable()
            .resizable()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(url: "")
    }
}
