//
//  ViewController.swift
//  builderPattern
//
//  Created by Hajji Anwer on 4/8/20.
//  Copyright © 2020 Hajji Anwer.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var viewImage: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let avatar = AvatarBuilder(view: viewImage)
        viewImage = avatar.border(borderWidth: 2.0,borderColor: UIColor.gray.cgColor).circularImage(url: "image1").build()
    }



}

