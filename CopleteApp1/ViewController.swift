//
//  ViewController.swift
//  CopleteApp1
//
//  Created by user on 29/12/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var buttonFirst = UIButton(type: .system)
    private var buttonSecond = UIButton(type: .system)
    private var buttonThird = UIButton(type: .system)
    private var buttonFour = UIButton(type: .system)
    private var buttonFifth = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(buttonFirst)
        buttonFirst.backgroundColor = .systemGreen
        buttonFirst.layer.cornerRadius = 20
        buttonFirst.setTitle("First App", for: .normal)
        buttonFirst.setTitleColor(.white, for: .normal)
        buttonFirst.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        buttonFirst.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.top.equalToSuperview().offset(200)
        }
        
        view.addSubview(buttonSecond)
        buttonSecond.backgroundColor = .systemGreen
        buttonSecond.layer.cornerRadius = 20
        buttonSecond.setTitle("Second App", for: .normal)
        buttonSecond.setTitleColor(.white, for: .normal)
        buttonSecond.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        buttonSecond.snp.makeConstraints { make in
            
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.top.equalTo(buttonFirst.snp.bottom).offset(50)
        }
        
        view.addSubview(buttonThird)
        buttonThird.backgroundColor = .systemGreen
        buttonThird.layer.cornerRadius = 20
        buttonThird.setTitle("Third App", for: .normal)
        buttonThird.setTitleColor(.white, for: .normal)
        buttonThird.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        buttonThird.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.top.equalTo(buttonSecond.snp.bottom).offset(50)
        }
        view.addSubview(buttonFour)
        buttonFour.backgroundColor = .systemGreen
        buttonFour.layer.cornerRadius = 20
        buttonFour.setTitle("Four App", for: .normal)
        buttonFour.setTitleColor(.white, for: .normal)
        buttonFour.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        buttonFour.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.top.equalTo(buttonThird.snp.bottom).offset(50)
        }
        view.addSubview(buttonFifth)
        buttonFifth.backgroundColor = .systemGreen
        buttonFifth.layer.cornerRadius = 20
        buttonFifth.setTitle("Fifth App", for: .normal)
        buttonFifth.setTitleColor(.white, for: .normal)
        buttonFifth.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        buttonFifth.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.top.equalTo(buttonFour.snp.bottom).offset(50)
        }
    }
        @objc func VCChange (sender: UIButton) {
            if sender.titleLabel?.text == "First App" {
                navigationController?.pushViewController(ViewController1(), animated: true)
            } else if sender.titleLabel?.text == "Second App" {
                navigationController?.pushViewController(ViewController2(), animated: true)
            } else if sender.titleLabel?.text == "Third App" {
                navigationController?.pushViewController(ViewController3(), animated: true)
            } else if sender.titleLabel?.text == "Four App" {
                navigationController?.pushViewController(ViewController4(), animated: true)
            } else if sender.titleLabel?.text == "Fifth App" {
                navigationController?.pushViewController(ViewController5(), animated: true)
    }
}

}
