//
//  FollowButton.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/06.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

struct FollowButton: View {
    let color: FollowButtonColor
    var body: some View {
        Button(action:{}) {
            Text("Follow")
                .font(.body)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundColor(color.textColor)
                .background(color.backgroundColor)
                .cornerRadius(6)
        }

    }
}

struct FollowButton_Previews: PreviewProvider {
    static var previews: some View {
        FollowButton(color: FollowButtonColor())
    }
}
