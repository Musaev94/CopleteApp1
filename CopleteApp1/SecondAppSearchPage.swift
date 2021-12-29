//
//  222.swift
//  SeconApphw
//
//  Created by user on 24/12/21.
//

import Foundation
import UIKit

class foot: UIViewController {
    
    var s = ""
    
    var label2 = UILabel()
    
    override func viewDidLoad() {
        
        label2.textColor = .black
        label2.numberOfLines = 0
        label2.font = .systemFont(ofSize: 17)
        
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            //make.top.equalTo(button).inset(60)
            make.left.equalTo(50)
            make.right.equalTo(50)
        }
        
}
}
