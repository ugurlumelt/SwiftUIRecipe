//
//  RecipeView.swift
//  SwiftUIRecipe
//
//  Created by Meltem Uğurlu on 18.07.2024.
//

import SwiftUI

struct RecipeView: View {
    var body: some View {
        GeometryReader{ geometry in
            let screenWidth = geometry.size.width
            let screenHeight = geometry.size.height
            
            VStack{
                Image("hamburger").resizable().frame(width: screenWidth, height: screenHeight/3).cornerRadius(30)
                
                VStack(alignment: .leading){
                    Text("Hamburger").font(.system(size: 30)).foregroundStyle(.red).bold()
                    
                    HStack{
                        Text("Enjoy")
                        Spacer()
                        Text("Great Food")
                    }
                }.padding()
                
                
                Text("Season ground beef with salt and pepper, shape into patties, cook, and top with cheddar. Toast the buns, then add the patty, tomato, lettuce, and pickles. Spread ketchup and mayonnaise, and close the burger. Serve hot. Enjoy!").multilineTextAlignment(.center).padding()
                
                Spacer()
                
                HStack(spacing: 0){
                    Button("like"){
                        
                    }.foregroundStyle(.black)
                        .frame(width: screenWidth/2, height: screenHeight/10)
                        .background(.yellow)
                        .bold()
                        .cornerRadius(10)
                    
                    Button("comment"){
                        
                    }.foregroundStyle(.black)
                        .frame(width: screenWidth/2, height: screenHeight/10)
                        .background(.orange)
                        .bold()
                        .cornerRadius(10)
                }
                
            }
            
        }
    }
}

#Preview {
    RecipeView()
}
