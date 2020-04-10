//
//  AvatarProtocol.swift
//  builderPattern
//
//  Created by Hajji Anwer on 4/8/20.
//  Copyright © 2020 Hajji Anwer. All rights reserved.
//

import Foundation
import UIKit
protocol AvatarProtocol {
    func circularView() -> AvatarBuilder
    func border(borderWidth : CGFloat, borderColor : CGColor) -> AvatarBuilder
    func shadow() ->AvatarBuilder
    func image(url:String) ->AvatarBuilder
    func zoomOut(url:String,size:CGFloat) ->AvatarBuilder
    func zoomIn() -> AvatarBuilder
    func backgroundColorWhenIsTransparant(url:String,color:UIColor) ->AvatarBuilder
}
