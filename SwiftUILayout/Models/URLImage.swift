//
//  URLImageViewModel.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/07.
//  Copyright © 2020 lcr. All rights reserved.
//

import SwiftUI

struct URLImage<Content>: View where Content: View {
    @ObservedObject var imageLoader = ImageLoader()

    private let url: String
    private let content: (_ image: Image) -> Content
    private let placeholder: Image

    init(url: String, placeholder: Image = Image("top"), content: @escaping (_ image: Image) -> Content) {
        self.url = url
        self.content = content
        self.placeholder = placeholder
    }

    var body: some View {
        ZStack {
            if imageLoader.image != nil {
                content(imageLoader.image!)
            } else {
                content(placeholder)
            }
        }.onAppear {
            self.imageLoader.load(url: self.url)
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "") {
            $0
        }
    }
}
