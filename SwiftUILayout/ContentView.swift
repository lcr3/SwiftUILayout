//
//  ContentView.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/06.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let backgroundColor = Color(.sRGB, red: 225, green: 227, blue: 241, opacity: 1.0)
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle().foregroundColor(backgroundColor).edgesIgnoringSafeArea(.all)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack() {
                        ForEach(0..<userDatase.count) { count in
                            GeometryReader { geo in
                                CardView(user: userDatase[count])
                                    .rotation3DEffect(Angle(degrees:
                                        (Double(geo.frame(in: .global).minX) / -20)
                                    ), axis: (x: 0, y: 10, z: 0))
                            }.frame(width: 280, height: 360)
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
