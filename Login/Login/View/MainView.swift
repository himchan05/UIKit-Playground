//
//  MainView.swift
//  Login
//
//  Created by 박힘찬 on 2023/06/02.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

class MainView: UIViewController {
    
    private let text: UILabel = {
        let label = UILabel()
        label.text = "마이스팟에 오신 걸 환영합니다."
        label.textColor = UIColor.green
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        return label
    }()
    
    override func viewDidLoad() {
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(text)
        
        text.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.centerX.equalToSuperview()
            make.height.equalTo(100)
        }
    }
}
