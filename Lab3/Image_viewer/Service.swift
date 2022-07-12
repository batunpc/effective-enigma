//
//  Service.swift
//  Image_viewer
//
//  Created by Batuhan Ipci on 2022-07-11.
//

import Foundation
import UIKit

class Service {
    func downloadImg(urlString:String, imgView:UIImageView){
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("There was an error at Service: \(error.localizedDescription)")
                }else{
                    if let safeData = data{
                        if let img = UIImage(data: safeData){
                            DispatchQueue.main.async {
                                imgView.image = img
                            }
                        }
                    }
                }
            }
            task.resume()
        }
//        if let imgUrl = URL(string: urlString){
//            URLSession.shared.dataTask(with: imgUrl) { data, response, error in
//                if let error = error {
//                    print("There was an error: \(error.localizedDescription)")
//                }else{
//
//                        var dataObj = Data()
//                        if let myData = data {
//                            dataObj = myData
//                        }
//                        let img = UIImage(data:dataObj)
//
//                        DispatchQueue.main.async {
//                            imgView.image = img
//                        }
//
//
//                }
//            }.resume()
//        }
    }
}
