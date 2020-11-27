//
//  HistoryTableViewCell.swift
//  ArithmeticsCalculator
//
//  Created by Student on 11/16/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

// HistoryTavleView Cell class
class HistoryTableViewCell: UITableViewCell {
    
// UI Labels for the queries and answers
    @IBOutlet weak var queriesLBL: UILabel!
    @IBOutlet weak var answersLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    

}
