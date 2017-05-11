//
//  Rewards.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import Foundation


class Rewards {
    var coins : UInt32
    init(coins : UInt32) {
        self.coins = coins
    }

    func DailyReward () {
let GiftCoins = arc4random_uniform(25) + 1

coins = GiftCoins + coins  //The Coins recieved from the daily gift is added to the total amount of coins
        }
    
//    switch (purchase) {
//    var price
//if coins < price
//    }
    
}


class Background {
    var BkgndCol : Bool
    init (BkgndCol: Bool) {
   self.BkgndCol = BkgndCol

    }
    
    func SetColour () {
    BkgndCol = true
    
    }
}
