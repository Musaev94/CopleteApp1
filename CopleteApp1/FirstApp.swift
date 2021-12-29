//
//  ViewController.swift
//  FirstApphw
//
//  Created by user on 23/12/21.
//

import UIKit
import SnapKit
import SwiftUI


class ViewController1: UIViewController {
    
    var textField = UITextField()
    var buttonSearch = UIButton(type: .system)
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor.white
        
        label.text = "🔎 Введите текст"
        label.font = UIFont.systemFont(ofSize: 17)
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(300)
            make.centerX.equalToSuperview()
        }
        
        textField.backgroundColor = .systemPink
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.textColor = .white
        textField.layer.cornerRadius = 15
        textField.textAlignment = .center
        
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.top.equalTo(label).inset(40)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
            
        }
        
        buttonSearch.backgroundColor = .systemBlue
        buttonSearch.setTitle("Поиск", for: .normal)
        buttonSearch.setTitleColor(.white, for: .normal)
        buttonSearch.layer.cornerRadius = 15
        buttonSearch.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        
        view.addSubview(buttonSearch)
        buttonSearch.snp.makeConstraints { make in
            make.top.equalTo(textField).inset(60)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        buttonSearch.addTarget(self, action: #selector(clickButton(view:)), for: .touchUpInside)
    }
    
    @objc func clickButton(view: UIButton) {
        
        var controller = SearchPage()
        controller.s = textField.text ?? ""
        navigationController?
            .pushViewController(controller, animated: true)
        
    }


}


