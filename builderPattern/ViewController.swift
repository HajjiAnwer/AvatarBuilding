//
//  ViewController.swift
//  builderPattern
//
//  Created by Hajji Anwer on 4/8/20.
//  Copyright © 2020 Hajji Anwer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewImage: UIView!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let avatar = AvatarBuilder(view: view2,imageAvatar: image)
        viewImage = avatar.circularView().circularImage(url: "starbucks").scaleToSize().border(borderWidth: 2, borderColor: UIColor.gray.cgColor).shadow(opacity: 0.3, color:UIColor.black.cgColor).build()
        view2.layer.cornerRadius = 5
        view2.layer.opacity = 1
        view2 = avatar.shadow(opacity: 0.2, color: UIColor.black.cgColor).build()
    }


}

