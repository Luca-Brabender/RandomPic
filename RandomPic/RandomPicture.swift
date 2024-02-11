//
//  RandomPicture.swift
//  RandomPic
//
//  Created by Luca Brabender on 11.02.24.
//

import Foundation

struct RandomPicture: Codable {
    let message: String
    let status: String
    
    init(){
        message = ""
        status = ""
    }
}
