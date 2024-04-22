//
//  NetworkConstant.swift
//  Movie-MVVM
//
//  Created by Abdurrahman Karaoluk on 22.04.2024.
//

import Foundation

class NetworkConstant {
    
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        //Singletone
    }
    
    public var apiKey: String {
        get {
            //API KEY from https://www.themoviedb.org/
            return "fe904076943b205d7d76d8f5ce1ffb67"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
