//
//  AppService.swift
//  StockTwits iOS Take Home
//
//  Created by Daniel Sun on 3/27/19.
//  Copyright © 2019 stocktwits. All rights reserved.
//

import Foundation

public enum Result<T> {
    case success(value: T)
    case failure(error: Error)
}

public typealias JSONObject = [String : Any]
public typealias JSONObjectArray = [JSONObject]

internal protocol MockAppServiceProtocol {
    /**
     Mimics a network service to load json for apps.
     
     - Parameter expectSuccess: Testing parameter that determines result of network call.
     
     - Parameter completion: A callback that contains the result of the network call.
     */
    func loadApps(expectSuccess: Bool, completion: ((Result<JSONObjectArray>) -> ())?)
}

internal struct MockAppService: MockAppServiceProtocol {
    func loadApps(expectSuccess: Bool, completion: ((Result<JSONObjectArray>) -> ())?) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            
            guard expectSuccess else {
                completion?(Result.failure(error: GenericError.generic))
                return
            }
            
            let json: JSONObjectArray = [
                ["name" : "Notezzz",
                 "imageURL" : "https://s3.amazonaws.com/beautifulnow_production/uploads/ckeditor_assets/pictures/14047/content_c1_Image_by_Alexey_Trofimov._Lake_Baikal_Treasures._Lake_Baikal__Russia.jpg",
                 "description" : "The best note taking app ever",
                 "priceType" : "paid",
                 "price" : "3.99",
                 "inAppPurchases" : true
                ],
                ["name" : "Seamless",
                 "imageURL" : "https://s3.amazonaws.com/beautifulnow_production/uploads/ckeditor_assets/pictures/14048/content_c2_Image_by_Alexey_Trofimov._Lake_Baikal_Treasures._Lake_Baikal__Russia.jpg",
                 "description" : "Stop going out. Order in.",
                 "priceType" : "free",
                 "inAppPurchases" : false
                ],
                ["name" : "Darkroom",
                 "imageURL" : "https://s3.amazonaws.com/beautifulnow_production/uploads/ckeditor_assets/pictures/14050/content_c3-Image-by-Alexey-Trofimov.-Lake-Baikal-Treasures.-Lake-Baikal_-Russia.jpg",
                 "description" : "Most powerful camera app in the world",
                 "priceType" : "paid",
                 "price" : "10.99",
                 "inAppPurchases" : true
                ],
                ["name" : "Chase",
                 "imageURL" : "https://s3.amazonaws.com/beautifulnow_production/uploads/ckeditor_assets/pictures/10624/content_c1-Image-by-Katerina-Plotnikova.jpg",
                 "description" : "JPMorgan Chase mobile banking app",
                 "priceType" : "free",
                 "inAppPurchases" : false
                ],
                ["name" : "Mario",
                 "imageURL" : "http://d2uqfpnktc64mn.cloudfront.net/uploads/ckeditor_assets/pictures/19117/content_c1-Image-by-NASA-Goddard-Space-Flight-Center-GOES-Satellite-Captures-Spring-Equinox.jpg",
                 "description" : "It's the super fun super mario run!",
                 "priceType" : "free",
                 "inAppPurchases" : true
                ],
                ["name" : "Starbucks",
                 "imageURL" : "http://d2uqfpnktc64mn.cloudfront.net/uploads/ckeditor_assets/pictures/19118/content_c2-Image-by-Tau-olunga-Ecliptic-path-.jpg",
                 "description" : "Best coffee shop in the world now has a mobile app.",
                 "priceType" : "free",
                 "inAppPurchases" : false
                ],
                ["name" : "Plant tracker",
                 "imageURL" : "http://d2uqfpnktc64mn.cloudfront.net/uploads/ckeditor_assets/pictures/19119/content_c3-Image-by-Stonehenge-Stone-Circle-Stonehenge-Midsummer-Sunrise-England.jpg",
                 "description" : "Stop letting your plants die and keep track!",
                 "priceType" : "paid",
                 "price" : "1.99",
                 "inAppPurchases" : true
                ]
            ]
            
            completion?(Result.success(value: json))
        }
    }
}
