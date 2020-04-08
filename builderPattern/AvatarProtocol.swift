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
    func zoomOut() ->AvatarBuilder
    func zoomIn() -> AvatarBuilder
    func backgroundColorWhenIsTransparant(color:UIColor) ->AvatarBuilder
}
