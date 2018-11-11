//
//  ListController.swift
//  Getitdone
//
//  Created by Albert on 28/8/18.
//  Copyright © 2018 Albert Mialet Gimenez. All rights reserved.
//

import UIKit

class ListController: UIViewController {
    func openAddItemPopup() {
        print("TEXT RANDOM")
    }
    
    let header = GDHeaderView(title: "Stuff to get done", subtitle: "4 left")
    let popup = GDNewItemPopup()
    
    let bg:UIView = GDGradient.init(cornerRadius: 24)
    
    var keyBoardHeight:CGFloat = 333
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        let keyBoardSize = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size
        self.keyBoardHeight = keyBoardSize.height
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        
        view.addSubview(bg)
        
        bg.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 100, right: 20)
//        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
//        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(popup)
        popup.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        popup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        popup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        popup.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        popup.textField.delegate = self
        popup.delegate = self
        header.delegate = self
    }
}

extension ListController: GDHeaderDelegate {
    
}

extension ListController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        popup.animateView(transform: CGAffineTransform(translationX: 0, y: -self.keyBoardHeight), duration: 0.5)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        popup.animateView(transform: CGAffineTransform(translationX: 0, y: 0), duration: 0.6)
    }

}

extension ListController: GDNewItemDelegate {
    func addItemToList(text:String) {
        print("text in para is: \(text)")
    }
}
