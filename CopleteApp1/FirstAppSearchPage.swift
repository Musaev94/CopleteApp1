//
//  SearchPage.swift
//  FirstApphw
//
//  Created by user on 23/12/21.
//

import Foundation
import SnapKit

class SearchPage: UIViewController {
    
    var s: String = ""
    
    var labelSearch = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        labelSearch.textColor = .black
        labelSearch.text = s
        labelSearch.numberOfLines = 0
        
        view.addSubview(labelSearch)
        labelSearch.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.right.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(50)
        }
    }
}

