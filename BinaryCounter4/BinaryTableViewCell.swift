//
//  BinaryTableViewCell.swift
//  BinaryCounter4
//
//  Created by Kioja Kudumu on 11/10/17.
//  Copyright © 2017 Kioja Kudumu. All rights reserved.
//

import UIKit

protocol BinaryTableViewCellDelegate: class {
    func valueChangedBy(value: Int)
}

class BinaryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    weak var delegate: BinaryTableViewCellDelegate?
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        
        var value = Int(valueLabel!.text!)
        
        if sender.titleLabel!.text == "-" {
            value = -value!
        }
        
        delegate?.valueChangedBy(value: value!)
        
    }
    
}
