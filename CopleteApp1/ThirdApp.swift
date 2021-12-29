//
//  ViewController.swift
//  ThirdApphw
//
//  Created by user on 23/12/21.
//

import UIKit
import SnapKit

class ViewController3: UIViewController {
    
    var textField = UITextField()
    
    var button = UIButton(type: .system)
    
    var label = UILabel()
    
    var names = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        textField.backgroundColor = .systemPink
        textField.textAlignment = .center
        textField.layer.cornerRadius = 15
        textField.textColor = .white
        textField.font = .systemFont(ofSize: 17)
        
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(300)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Start", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(nil, action: #selector(clickButton(sender: )), for: .touchUpInside)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(textField).inset(60)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        
        label.textColor = .black
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 17)
        label.lineBreakMode = .byCharWrapping
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(button).inset(80)
            make.centerX.equalToSuperview()
        }
    }
         @objc func clickButton(sender: UIButton) {
            
             names = String(textField.text ?? "")
             
             if (label.text == nil) {
                 label.text = names
             } else {
                 label.text = "\(label.text ?? "")\n\(names)"
             }
        
             textField.text = ""
        
        }
    }
    





