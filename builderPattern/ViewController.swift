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
        // Do any additional setup after loading the view.
        viewImage = avatar.circularView().border(borderWidth: 2.0, borderColor: UIColor.black.cgColor).image(url: "image1").build()
    }


}

