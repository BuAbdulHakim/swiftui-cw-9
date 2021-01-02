//
//  MovieDetailView.swift
//  SwiftUI-CW_9
//
//  Created by NasserAlsaqabi on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movieName:String
    let movieCharacters:[String]
    var body: some View {
        ZStack{
            Group{
                Image(movieName)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }
            .edgesIgnoringSafeArea(.all)
            
        VStack(alignment: .center){
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .background(Color.blue)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth:6))
            
                Text(movieName)
                    .font(.system(size:50))
                    .bold()
                Text(movieCharacters.joined(separator: ", "))
                    .font(.title)
            
            Spacer()
            
        }.padding(.vertical)
        .foregroundColor(.white)
        .shadow(radius: 8)
        }
        
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movieName: "Toy_Story", movieCharacters: ["Woody", "Buzz"])
    }
}
