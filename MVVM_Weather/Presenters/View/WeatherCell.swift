//
//  HomeViewCell.swift
//  MVVM_Weather
//
//  Created by juyeong koh on 2023/03/13.
//

import UIKit
import SnapKit

class WeatherCell: UICollectionViewCell {
    
    // MARK: - Properties
    lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.text = "서울"
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        return label
    }()
    
    lazy var tempLabel: UILabel = {
       let label = UILabel()
        label.text = "기온: _ 도"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    lazy var humidityLabel: UILabel = {
        let label = UILabel()
        label.text = "습도: _ %"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()

    // MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    func configureUI() {
        contentView.addSubview(cityLabel)
        contentView.addSubview(tempLabel)
        contentView.addSubview(humidityLabel)
        
        cityLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.left.equalToSuperview().offset(45)
        }
        
        tempLabel.snp.makeConstraints { make in
            make.bottom.equalTo(cityLabel).offset(50)
            make.left.equalToSuperview().offset(45)
        }
        
        humidityLabel.snp.makeConstraints { make in
            make.bottom.equalTo(tempLabel).offset(20)
            make.left.equalToSuperview().offset(45)
        }
    }



}
