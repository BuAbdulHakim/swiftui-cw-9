//
//  Movie.swift
//  SwiftUI-CW_9
//
//  Created by NasserAlsaqabi on 02/01/2021.
//
import Foundation

struct Movie: Identifiable{
    let id = UUID()
    
    let title: String
    let characters: [String]
}

let movies = [
    Movie(title: "Toy_Story", characters: ["Woody", "Buzz"]),
    Movie(title: "Cars", characters: ["Lightning McQueen", "Mater", "Doc Hudson"]),
    Movie(title: "The_Karate_Kid", characters: ["Daniel LaRusso", "Mr. Miyagi", "Johnny Lawrence"])
]
