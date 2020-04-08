//
//  AvatarBuilder.swift
//  builderPattern
//
//  Created by Hajji Anwer on 4/8/20.
//  Copyright © 2020 Hajji Anwer.
//

import Foundation
import UIKit

class AvatarBuilder : AvatarProtocol{
    
    var view: UIView
    var imageAvatar : UIImageView
    init(view:UIView,imageAvatar:UIImageView) {
        self.view = view
        self.imageAvatar = imageAvatar
    }
    
    func circularView() -> AvatarBuilder {
        view.layer.cornerRadius = 0.5 * (view.bounds.size.width)
        view.clipsToBounds = true
        return self
    }
    
    func border(borderWidth: CGFloat, borderColor: CGColor) -> AvatarBuilder {
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = borderColor
        return self
    }
    
    func shadow() -> AvatarBuilder {
        return self
    }
    
    func image(url:String) -> AvatarBuilder {
        imageAvatar = UIImageView(image: UIImage(named: url))
        imageAvatar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(imageAvatar)
        return self
    }
    
    func zoomOut() -> AvatarBuilder {
        
        return self
    }
       
    func backgroundColorWhenIsTransparant(color: UIColor) -> AvatarBuilder {
        if (imageAvatar.image?.isTransparent() ?? true)  {
             imageAvatar.image = (UIImage.init().changeBackgroundColor(image: imageAvatar.image ?? UIImage(), backgroundColor: color)) 
        }
        view.addSubview(imageAvatar)
        return self
    }
    
    func zoomIn() -> AvatarBuilder {
        return self
    }
    
    func build() -> UIView {
        return self.view
    }
    
}

extension UIImage{
    func isTransparent() -> Bool {
        guard let alpha: CGImageAlphaInfo = self.cgImage?.alphaInfo else { return false }
        return alpha == .first || alpha == .last || alpha == .premultipliedFirst || alpha == .premultipliedLast
    }
    
    func changeBackgroundColor(image: UIImage, backgroundColor: UIColor)->UIImage?{
        UIGraphicsBeginImageContextWithOptions(image.size, false, image.scale)
        backgroundColor.setFill()
        let path = UIBezierPath(rect: CGRect(origin: .zero, size: image.size))
        path.fill()
        image.draw(at: .zero)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}
