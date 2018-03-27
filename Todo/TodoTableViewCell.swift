//
//  TodoTableViewCell.swift
//  Todo
//
//  Created by Sergiy Poddubka on 27.03.18.
//  Copyright © 2018 Sergiy Poddubka. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
