//
//  ViewController.swift
//  CalculatorSnapKit
//
//  Created by user on 27/12/21.
//

import UIKit
import SnapKit

class ViewController4: UIViewController {
    
    
    var clearButton = UIButton(type: .system)
    var otricButton = UIButton(type: .system)
    var procentButton = UIButton(type: .system)
    var delenieButton = UIButton(type: .system)
    
    var sevenButton = UIButton(type: .system)
    var eightButton = UIButton(type: .system)
    var nineButton = UIButton(type: .system)
    var umnojenieButton = UIButton(type: .system)
    
    var fourButton = UIButton(type: .system)
    var fiveButton = UIButton(type: .system)
    var sixButton = UIButton(type: .system)
    var minusButton = UIButton(type: .system)
    
    var oneButton = UIButton(type: .system)
    var twoButton = UIButton(type: .system)
    var threeButton = UIButton(type: .system)
    var plusButton = UIButton(type: .system)
    
    var zeroButton = UIButton(type: .system)
    var fractionButton = UIButton(type: .system)
    var resultButton = UIButton(type: .system)
   
    var resultLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        clearButton.backgroundColor = .darkGray
        clearButton.setTitle("AC", for: .normal)
        clearButton.setTitleColor(.white, for: .normal)
        clearButton.layer.cornerRadius = (view.frame.width * 0.1)
        clearButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(clearButton)
        clearButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.top.equalToSuperview().inset(340)
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        otricButton.backgroundColor = .darkGray
        otricButton.setTitle("+/-", for: .normal)
        otricButton.setTitleColor(.white, for: .normal)
        otricButton.layer.cornerRadius = (view.frame.width * 0.1)
        otricButton.titleLabel?.font = .systemFont(ofSize: 30)

        view.addSubview(otricButton)
        otricButton.snp.makeConstraints { make in
            make.left.equalTo(clearButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalToSuperview().inset(340)
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        procentButton.backgroundColor = .darkGray
        procentButton.setTitle("%", for: .normal)
        procentButton.setTitleColor(.white, for: .normal)
        procentButton.layer.cornerRadius = (view.frame.width * 0.1)
        procentButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(procentButton)
        procentButton.snp.makeConstraints { make in
            make.left.equalTo(otricButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalToSuperview().inset(340)
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        delenieButton.backgroundColor = .orange
        delenieButton.setTitle("÷", for: .normal)
        delenieButton.setTitleColor(.white, for: .normal)
        delenieButton.layer.cornerRadius = (view.frame.width * 0.1)
        delenieButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(delenieButton)
        delenieButton.snp.makeConstraints { make in
            make.left.equalTo(procentButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalToSuperview().inset(340)
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        sevenButton.backgroundColor = .darkGray
        sevenButton.setTitle("7", for: .normal)
        sevenButton.setTitleColor(.white, for: .normal)
        sevenButton.layer.cornerRadius = (view.frame.width * 0.1)
        sevenButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(sevenButton)
        sevenButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.top.equalTo(clearButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        eightButton.backgroundColor = .darkGray
        eightButton.setTitle("8", for: .normal)
        eightButton.setTitleColor(.white, for: .normal)
        eightButton.layer.cornerRadius = (view.frame.width * 0.1)
        eightButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(eightButton)
        eightButton.snp.makeConstraints { make in
            make.left.equalTo(sevenButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(otricButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        nineButton.backgroundColor = .darkGray
        nineButton.setTitle("9", for: .normal)
        nineButton.setTitleColor(.white, for: .normal)
        nineButton.layer.cornerRadius = (view.frame.width * 0.1)
        nineButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(nineButton)
        nineButton.snp.makeConstraints { make in
            make.left.equalTo(eightButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(procentButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        umnojenieButton.backgroundColor = .orange
        umnojenieButton.setTitle("✕", for: .normal)
        umnojenieButton.setTitleColor(.white, for: .normal)
        umnojenieButton.layer.cornerRadius = (view.frame.width * 0.1)
        umnojenieButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(umnojenieButton)
        umnojenieButton.snp.makeConstraints { make in
            make.left.equalTo(nineButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(delenieButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        fourButton.backgroundColor = .darkGray
        fourButton.setTitle("4", for: .normal)
        fourButton.setTitleColor(.white, for: .normal)
        fourButton.layer.cornerRadius = (view.frame.width * 0.1)
        fourButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(fourButton)
        fourButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.top.equalTo(sevenButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        fiveButton.backgroundColor = .darkGray
        fiveButton.setTitle("5", for: .normal)
        fiveButton.setTitleColor(.white, for: .normal)
        fiveButton.layer.cornerRadius = (view.frame.width * 0.1)
        fiveButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(fiveButton)
        fiveButton.snp.makeConstraints { make in
            make.left.equalTo(fourButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(eightButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        sixButton.backgroundColor = .darkGray
        sixButton.setTitle("6", for: .normal)
        sixButton.setTitleColor(.white, for: .normal)
        sixButton.layer.cornerRadius = (view.frame.width * 0.1)
        sixButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(sixButton)
        sixButton.snp.makeConstraints { make in
            make.left.equalTo(fiveButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(nineButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
                }

        minusButton.backgroundColor = .orange
        minusButton.setTitle("﹣", for: .normal)
        minusButton.setTitleColor(.white, for: .normal)
        minusButton.layer.cornerRadius = (view.frame.width * 0.1)
        minusButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(minusButton)
        minusButton.snp.makeConstraints { make in
            make.left.equalTo(sixButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(umnojenieButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        oneButton.backgroundColor = .darkGray
        oneButton.setTitle("1", for: .normal)
        oneButton.setTitleColor(.white, for: .normal)
        oneButton.layer.cornerRadius = (view.frame.width * 0.1)
        oneButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(oneButton)
        oneButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.top.equalTo(fourButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        twoButton.backgroundColor = .darkGray
        twoButton.setTitle("2", for: .normal)
        twoButton.setTitleColor(.white, for: .normal)
        twoButton.layer.cornerRadius = (view.frame.width * 0.1)
        twoButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(twoButton)
        twoButton.snp.makeConstraints { make in
            make.left.equalTo(oneButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(fiveButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        threeButton.backgroundColor = .darkGray
        threeButton.setTitle("3", for: .normal)
        threeButton.setTitleColor(.white, for: .normal)
        threeButton.layer.cornerRadius = (view.frame.width * 0.1)
        threeButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(threeButton)
        threeButton.snp.makeConstraints { make in
            make.left.equalTo(twoButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(sixButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        plusButton.backgroundColor = .orange
        plusButton.setTitle("+", for: .normal)
        plusButton.setTitleColor(.white, for: .normal)
        plusButton.layer.cornerRadius = (view.frame.width * 0.1)
        plusButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(plusButton)
        plusButton.snp.makeConstraints { make in
            make.left.equalTo(threeButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(minusButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }


        zeroButton.backgroundColor = .darkGray
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.layer.cornerRadius = (view.frame.width * 0.1)
        zeroButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(zeroButton)
        zeroButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.top.equalTo(oneButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.equalTo(view.frame.width * 0.2)
            make.width.equalTo(view.frame.width * 0.44)
        }

        fractionButton.backgroundColor = .darkGray
        fractionButton.setTitle(",", for: .normal)
        fractionButton.setTitleColor(.white, for: .normal)
        fractionButton.layer.cornerRadius = (view.frame.width * 0.1)
        fractionButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(fractionButton)
        fractionButton.snp.makeConstraints { make in
            make.left.equalTo(zeroButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(threeButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        resultButton.backgroundColor = .orange
        resultButton.setTitle("=", for: .normal)
        resultButton.setTitleColor(.white, for: .normal)
        resultButton.layer.cornerRadius = (view.frame.width * 0.1)
        resultButton.titleLabel?.font = .systemFont(ofSize: 35)

        view.addSubview(resultButton)
        resultButton.snp.makeConstraints { make in
            make.left.equalTo(fractionButton.snp.right).offset(view.frame.width * 0.04)
            make.top.equalTo(plusButton.snp.bottom).offset(view.frame.width * (0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }

        resultLabel.text = "0"
        resultLabel.textColor = .white
        resultLabel.font = .systemFont(ofSize: 70)
        resultLabel.textAlignment = .right

        view.addSubview(resultLabel)
        resultLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.bottom.equalTo(clearButton.snp.top).offset(view.frame.width * (0.06))
            make.width.equalTo(view.frame.width * 0.92)
            make.height.equalTo(view.frame.width * 0.5)
        }
    }
}


