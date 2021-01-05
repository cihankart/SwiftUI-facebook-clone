//
//  StoriesView.swift
//  Facebook
//
//  Created by Cihan Kart on 20.12.2020.
//

import Foundation
import SwiftUI

struct StoriesView: View {
    
    let stories: [String]
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 3) {
                ForEach(stories, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .background(Color.gray)
                        .clipped()
                    Spacer(minLength: 5)
                }
                .cornerRadius(15)


            }
            .padding()
        }
    }
}
