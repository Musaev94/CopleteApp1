//
//  ViewController.swift
//  FifthApphw
//
//  Created by user on 23/12/21.
//

import UIKit
import SnapKit
import SwiftUI


class ViewController5: UIViewController {
    
    var textField = UITextField()
    var buttonSearch = UIButton(type: .system)
    var label = UILabel()
    var sklad: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor.white
        
        label.text = "📠 Введите текст"
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
        buttonSearch.setTitle("Посчитать", for: .normal)
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
        
        sklad = String(textField.text ?? "")
        
               var probel = 0
        
               for i in sklad {
                   if i == " " {
                       probel += 1
                   }
               }
               var symbols = sklad.count
               
             
               let countMaker = NextPage()
        countMaker.labelSearch.text = textField.text
               navigationController?.pushViewController(countMaker, animated: true)
        countMaker.labelSearch.text = String("В  данном тексте: \n \n \(symbols) символов \n\n \(probel + 1) слов \n\n \(probel) пробелов")
    }

}



