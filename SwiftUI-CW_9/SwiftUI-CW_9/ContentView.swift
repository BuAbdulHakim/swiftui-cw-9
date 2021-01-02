//
//  ContentView.swift
//  SwiftUI-CW_9
//
//  Created by NasserAlsaqabi on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            
            List(movies){ movie in
                NavigationLink(
                    destination: MovieDetailView(movie: movie),
                    label: {
                        MovieRow(movie: movie)
                    })
                
            }.navigationBarTitle("Movies")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        HStack(alignment: .center){
            Image(movie.title)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(movie.title)
                    .font(.largeTitle)
                Text(movie.characters.joined(separator: ", "))
            }
        }.padding(.vertical)
    }
}
