//
//  TableViewCell.swift
//  builderPattern
//
//  Created by Hajji Anwer on 4/12/20.
//  Copyright © 2020 Hajji Anwer. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
