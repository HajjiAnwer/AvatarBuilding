//
//  ViewController.swift
//  builderPattern
//
//  Created by Hajji Anwer on 4/8/20.
//  Copyright © 2020 Hajji Anwer.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var constraintHeightTable: NSLayoutConstraint!
    @IBOutlet weak var height: NSLayoutConstraint!
    @IBOutlet weak var viewImage: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        table.tableFooterView = UIView()
        let avatar = AvatarBuilder(view: viewImage)
        
        viewImage = avatar.scaleImage(url: "image1", scale: 0.6).border().cornerRadius(radius: 10).shadow(opacity: 1, color: UIColor.blue.cgColor
        ).backgroundColorWhenIsTransparant(url: "image1", color: .purple).build()
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        height.constant = table.contentSize.height + 1
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellModel") as? TableViewCell
        cell?.label.text = "Anwer"
        return cell ?? UITableViewCell()
    }
    
    
    
    
}
