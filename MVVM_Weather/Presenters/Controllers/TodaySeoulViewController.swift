//
//  WeatherViewController.swift
//  MVVM_Weather
//
//  Created by juyeong koh on 2023/03/10.
//

import UIKit


class TodaySeoulViewController: UIViewController {
    
    // MARK: - Properties
    let collectionViewCell = WeatherCell()
    let apiManager = APIManager()
    let viewModel = WeatherViewModel()

    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = UIColor(red: 0.27, green: 0.54, blue: 0.69, alpha: 1.00)
        view.addSubview(collectionViewCell)
    }
    
}

// MARK: - extension

extension TodaySeoulViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
   
        
        return cell
    }
    
    
}
