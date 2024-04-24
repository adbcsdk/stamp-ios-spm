//
//  File.swift
//  
//
//  Created by 신아람 on 4/23/24.
//

import Foundation
import UIKit
import StampSDKBF

open class StampSDK {
    
    private var stamp = StampSDKMin.shared
    
    public init() {
    }
    
    public func initialize(mkey: String, mckey: String, userID: String, completion: @escaping (Bool, String) -> ()) {
        stamp.initialize(mkey: mkey, mckey: mckey, userID: userID, completion: completion)
    }
    
    public func show(on viewController: UIViewController) {
        stamp.show(on: viewController)
    }
}
