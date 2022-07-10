//
//  HamburgerBarVC.swift
//  HealthFoodMe
//
//  Created by 강윤서 on 2022/07/10.
//

import UIKit

class HamburgerBarVC: UIViewController {

    private lazy var hamburgerBarView = UIView()
    private lazy var helloLabel = UILabel()
    private lazy var nameLabel = UILabel()
    private lazy var sirLabel = UILabel()
    private lazy var todayHelfmeLabel = UILabel()
    private lazy var editNameButton = UIButton()
    private lazy var scrapListButton = UIButton()
    private lazy var myReviewButton = UIButton()
    private lazy var reportStoreButton = UIButton()
    private lazy var repostCorrectionButton = UIButton()
    private lazy var settingButton = UIButton()
    private lazy var logoutButton = UIButton()
    private lazy var firstDividingLineView = UIView()
    private lazy var secondDividingLineView = UIView()
    private lazy var thirdDividingLineView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        setLayout()
    }
    
    private func setUI() {
        let blackColorWithAlpha: UIColor = UIColor(.black).withAlphaComponent(0.6)
        view.backgroundColor = blackColorWithAlpha
        hamburgerBarView.backgroundColor = .helfmeWhite
        
        editNameButton.setImage(UIImage(named: "btn_edit"), for: .normal)
    }
    
    private func setLayout() {
        view.addSubviews(hamburgerBarView, helloLabel, nameLabel,
                         sirLabel, todayHelfmeLabel, editNameButton,
                         scrapListButton, myReviewButton, reportStoreButton,
                         repostCorrectionButton, settingButton, logoutButton,
                         firstDividingLineView, secondDividingLineView, thirdDividingLineView)
        
        hamburgerBarView.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.71)
            make.height.equalToSuperview()
            make.top.equalTo(0)
            make.leading.equalTo(0)
        }
    }
}
