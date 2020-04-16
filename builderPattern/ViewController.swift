//
//  ViewController.swift
//  builderPattern
//
//  Created by Hajji Anwer on 4/8/20.
//  Copyright © 2020 Hajji Anwer.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var constraintHeightTable: NSLayoutConstraint!
    @IBOutlet weak var height: NSLayoutConstraint!
    @IBOutlet weak var viewImage: UIView!
    var status = false
    var url : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        table.tableFooterView = UIView()
        let avatar = AvatarBuilder(view: viewImage)
        
        viewImage = avatar.circularView().scaleImage(url: "https://logo.clearbit.com/dsw.com", scale: 1,type: .cercle).border().build()
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        status = !status
        status ? (url = "https://logo.clearbit.com/trycarriage.com") : (url = "https://logo.clearbit.com/dsw.com")
        let avatar = AvatarBuilder(view: viewImage)

        viewImage = avatar.circularView().scaleImage(url: url ?? "", scale: 1,type: .cercle).border().build()
//        let next : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let nextController = next.instantiateViewController(identifier: "nextView") as! NextControllerViewController
//        nextController.modalPresentationStyle = .fullScreen
//        self.show(nextController, sender: self)
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



