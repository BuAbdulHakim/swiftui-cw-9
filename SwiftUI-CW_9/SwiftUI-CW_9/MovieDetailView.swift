//
//  MovieDetailView.swift
//  SwiftUI-CW_9
//
//  Created by NasserAlsaqabi on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        ZStack{
            Group{
                Image(movie.title)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }
            .edgesIgnoringSafeArea(.all)
            
        VStack(alignment: .center){
            Image(movie.title)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .background(Color.blue)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth:6))
            
            Text(movie.title)
                    .font(.system(size:50))
                    .bold()
            Text(movie.characters.joined(separator: ", "))
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
        MovieDetailView(movie: Movie(title: "Toy_Story", characters: ["Woody", "Buzz"]))
    }
}
