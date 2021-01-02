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
            
            List{
                NavigationLink(
                    destination: Image("Toy_Story").resizable().scaledToFit(),
                    label: {
                        MovieRow(movieName: "Toy_Story", movieCharacters: ["Woody", "Buzz"])
                    })
                NavigationLink(
                    destination: Image("Cars").resizable().scaledToFit(),
                    label: {
                        MovieRow(movieName: "Cars", movieCharacters: ["Lightning McQueen", "Mater", "Doc Hudson"])
                    })
                NavigationLink(
                    destination: Image("The_Karate_Kid").resizable().scaledToFit(),
                    label: {
                        MovieRow(movieName: "The_Karate_Kid", movieCharacters: ["Daniel LaRusso", "Mr. Miyagi", "Johnny Lawrence"])
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
    let movieName:String
    let movieCharacters:[String]
    
    var body: some View {
        HStack(alignment: .center){
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                Text(movieCharacters.joined(separator: ", "))
            }
        }.padding(.vertical)
    }
}
