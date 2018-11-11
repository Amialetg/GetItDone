//
//  NetItemPopup.swift
//  Getitdone
//
//  Created by Albert on 02/11/2018.
//  Copyright © 2018 Albert Mialet Gimenez. All rights reserved.
//

import UIKit

class GDNewItemPopup:GDGradient {
    
    let cancel = GDButton(title: "  cancel  ", type: .roundedText, radius: 4)
    let add = GDButton(title: "  add  ", type: .roundedText, radius: 4)
    let textField = GDTextField(placeholder: "go buy Ikea Frames!", inset: 6)
    
    var delegate: GDNewItemDelegate?
    
    @objc func handleCancel() {
        textField.resignFirstResponder()
    }
    
    @objc func handleAdd() {
        if let delegate = self.delegate, let textFieldText = textField.text {
            delegate.addItemToList(text: textFieldText)
        }
    }
    
    override init(frame: CGRect = .zero, cornerRadius: CGFloat = 0) {
        super.init(frame: frame, cornerRadius: cornerRadius)
        
        let inset:CGFloat = 12
        
        self.layer.cornerRadius = 14
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(add)
        add.rightAnchor.constraint(equalTo: rightAnchor, constant: inset * -1).isActive = true
        add.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        add.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(textField)
        textField.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        textField.rightAnchor.constraint(equalTo: rightAnchor, constant: inset * -1).isActive = true
        textField.topAnchor.constraint(equalTo: cancel.bottomAnchor, constant: 8).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        
        cancel.addTarget(self, action: #selector(self.handleCancel), for: .touchUpInside)
        add.addTarget(self, action: #selector(self.handleAdd), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
