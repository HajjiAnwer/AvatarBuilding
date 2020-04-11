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
    func shadow(opacity: Float, color:CGColor ) ->AvatarBuilder
    func scaleImage(url:String,scale:CGFloat) ->AvatarBuilder
    func backgroundColorWhenIsTransparant(url:String,color:UIColor) ->AvatarBuilder
    func downloadImageWithURL(url:String) ->UIImageView
}
