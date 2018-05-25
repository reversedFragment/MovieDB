//
//  Movie.swift
//  BadamsMovieDatabase
//
//  Created by Ben Adams on 5/25/18.
//  Copyright © 2018 Ben Adams. All rights reserved.
//

import Foundation

// To parse the JSON, add this file to your project and do:
//
//   let movie = try? JSONDecoder().decode(Movie.self, from: jsonData)
//
// To read values from URLs:
//
//   let task = URLSession.shared.movieTask(with: url) { movie, response, error in
//     if let movie = movie {
//       ...
//     }
//   }
//   task.resume()

import Foundation

class Movie: Codable {
    let id: Int
    let voteAverage: Double
    let title: String
    let posterPath: String
    let overview: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case voteAverage = "vote_average"
        case title = "title"
        case posterPath = "poster_path"
        case overview = "overview"
    }

    init(id: Int, voteAverage: Double, title: String, posterPath: String, overview: String) {
        self.id = id
        self.voteAverage = voteAverage
        self.title = title
        self.posterPath = posterPath
        self.overview = overview
    }
}


