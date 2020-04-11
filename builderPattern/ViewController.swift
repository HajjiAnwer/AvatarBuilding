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
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var sCView: UIScrollView!
    @IBOutlet weak var viewZoomed: UIView!
    @IBOutlet weak var imageZoomed: UIScrollView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let avatar = AvatarBuilder(view: viewImage)
        viewImage = avatar.image(url: "close", scale: 0.1).build()
    }



}

