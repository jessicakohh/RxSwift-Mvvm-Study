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
    private let cityLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let tempLabel: UILabel = {
       let label = UILabel()
        return label
    }()
    
    private let humidityLabel: UILabel = {
        let label = UILabel()
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
            make.top.equalToSuperview().offset(75)
            make.left.equalToSuperview().offset(45)
        }
        
        tempLabel.snp.makeConstraints { make in
            make.bottom.equalTo(cityLabel).offset(50)
            make.left.equalToSuperview().offset(45)
        }
        
        humidityLabel.snp.makeConstraints { make in
            make.bottom.equalTo(cityLabel).offset(50)
            make.left.equalToSuperview().offset(45)
        }
    }



}
