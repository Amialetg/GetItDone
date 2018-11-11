//
//  GDTableView.swift
//  Getitdone
//
//  Created by Albert on 10/11/2018.
//  Copyright © 2018 Albert Mialet Gimenez. All rights reserved.
//

import UIKit

class GDTableView: UITableView {
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame , style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
