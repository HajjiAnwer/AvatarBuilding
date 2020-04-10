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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let avatar = AvatarBuilder(view: viewImage,imageAvatar: image)
//        viewImage = avatar.circularView().border().circularImageView(url: "image1").build()
//        viewImage = avatar.shadow().build()
        viewImage = avatar.image(url: "starbucks").circularView().border(borderWidth: 3, borderColor: UIColor.red.cgColor).shadow().build()
        
    }


}

