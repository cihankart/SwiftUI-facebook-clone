//
//  FBPostView.swift
//  Facebook
//
//  Created by Cihan Kart on 20.12.2020.
//

import Foundation
import SwiftUI

struct FBPost: View {
    
    @State var isLiked: Bool = false
    
    let model: FBPostModel

    var body: some View {
        VStack{
            //stack for profile picture and name
            HStack {
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack{
                    HStack{
                        Text(model.name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack{
                        Text("12 minuntes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }
            Spacer()
            
            
            //stack for content
            HStack {
                Text(model.post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
            
            
            //stack for like,comment and share
            HStack {
                
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Text(isLiked ? "Liked" :"Like")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Comment")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Share")
                })
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}
