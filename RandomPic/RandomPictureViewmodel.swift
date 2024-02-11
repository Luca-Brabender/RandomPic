//
//  PostViewModel.swift
//  RandomPic
//
//  Created by Luca Brabender on 11.02.24.
//

import Foundation


@MainActor class RandomPictureViewmodel: ObservableObject{
    @Published var pictureData = RandomPicture()
    
    func fetchData() async {
        guard let downloadedPosts: RandomPicture = await WebService().downloadData(fromURL: "https://dog.ceo/api/breeds/image/random") else {return}
        pictureData = downloadedPosts
    }
    
}
