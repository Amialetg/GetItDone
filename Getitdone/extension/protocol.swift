//
//  protocol.swift
//  Getitdone
//
//  Created by Albert on 02/11/2018.
//  Copyright © 2018 Albert Mialet Gimenez. All rights reserved.
//

import Foundation

protocol GDHeaderDelegate {
    func openAddItemPopup()
}

protocol GDNewItemDelegate {
    func addItemToList(text:String)
}
