//
//  URLImageView.swift
//  SwiftUILayout
//
//  Created by okano on 2020/09/07.
//  Copyright © 2020 lcr. All rights reserved.
//

import Combine
import SwiftUI

class ImageLoader: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()

    var image: Image? {
        willSet {
            objectWillChange.send()
        }
    }

    func load(url: String) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: image)
            }
        }.resume()
    }
}

