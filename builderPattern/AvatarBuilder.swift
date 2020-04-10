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
        self.view.layer.cornerRadius = 0.5 * (view.bounds.size.width)
        self.view.clipsToBounds = true
        return self
    }
    
    func border(borderWidth: CGFloat = 1.0 , borderColor: CGColor = UIColor.gray.cgColor) -> AvatarBuilder {
        self.view.layer.borderWidth = borderWidth
        self.view.layer.borderColor = borderColor
        return self
    }
    
    func shadow(opacity: Float = 0.1, color:CGColor = UIColor.black.cgColor) -> AvatarBuilder {
        self.view.layer.masksToBounds = false
        self.view.layer.shadowColor = color
        self.view.layer.shadowOffset = CGSize.zero
        self.view.layer.shadowRadius = 5
        self.view.layer.shadowOpacity = opacity
        self.view.layer.shadowPath = UIBezierPath(rect: view.bounds).cgPath
        self.view.layer.shouldRasterize = true
        self.view.layer.rasterizationScale = UIScreen.main.scale
        return self
    }
    func circularImage(url:String) -> AvatarBuilder {
        imageAvatar.image =  UIImage(named: url)
        imageAvatar.frame = self.view.frame
        self.imageAvatar.layer.cornerRadius = 0.5 * (imageAvatar.bounds.size.width)
        self.imageAvatar.clipsToBounds = true
        self.view.addSubview(imageAvatar)
        return self
    }
    
    func image(url:String) -> AvatarBuilder {
        let image =  UIImage(named: url)
        imageAvatar.image = image
        self.view.addSubview(imageAvatar)
        return self
    }
    
    func backgroundColorWhenIsTransparant(url:String,color: UIColor) -> AvatarBuilder {
        imageAvatar.image = UIImage(named: url)
        if (imageAvatar.image?.isTransparent() ?? false)  {
            imageAvatar.image = (UIImage.init().changeBackgroundColor(image: imageAvatar.image ?? UIImage(), backgroundColor: color))
        }
        return self
    }
    
    func scaleToSize() -> AvatarBuilder {
        imageAvatar.image = imageAvatar.image?.scaleToSize(aSize: CGSize(width: imageAvatar.frame.width , height: imageAvatar.frame.height ))
        self.view.addSubview(imageAvatar)
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
    
    func scaleToSize(aSize :CGSize) -> UIImage {
      if (self.size.equalTo(aSize)) {
        return self
      }
      UIGraphicsBeginImageContextWithOptions(aSize, false, 0.0)
      self.draw(in: CGRect(x: 0.0, y: 0.0, width: aSize.width, height: aSize.height))
      let image = UIGraphicsGetImageFromCurrentImageContext()
      UIGraphicsEndImageContext()
      return image!
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
