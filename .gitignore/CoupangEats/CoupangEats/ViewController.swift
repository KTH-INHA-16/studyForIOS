//
//  ViewController.swift
//  CoupangEats
//
//  Created by 김태훈 on 2020/11/28.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var bottomCollectionView: UICollectionView!
    @IBOutlet weak var searchButton: UIButton!
    
    let categoryList = [
        Category(name: "1인분"),
        Category(name: "한식"),
        Category(name: "치킨"),
        Category(name: "분식"),
        Category(name: "돈까스"),
        Category(name: "족발보쌈"),
        Category(name: "찜탕")
    ]
    
    let famousList = [
        Famous(name: "피자헛 진흥점", point: "4.7(6)", kilo: "2.0km", couponeKind: "이천"),
        Famous(name: "KFC 인하대점", point: "3.9(20)", kilo: "0.6km", couponeKind: "무료"),
        Famous(name: "파파존스 인하대점", point: "4.2(23)", kilo: "3.4km", couponeKind: "이천"),
        Famous(name: "BHC 인하대점", point: "3.5(35)", kilo: "1.2km", couponeKind: "이천")
    ]
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionFooter:
            guard let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "reusableView", for: indexPath) as? ReusableView else { return UICollectionReusableView() }
                footer.buttonUI()
                return footer
        default:
            assert(false,"NO")
    
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topCollectionView {
            return categoryList.count
        }
        if collectionView == bottomCollectionView {
            return famousList.count
        }
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == topCollectionView {
        
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridTopCell", for: indexPath) as? GridTopCell else {
                return UICollectionViewCell()
            }
            let info = categoryList[indexPath.item]
            cell.updateUI(info)
            return cell
        }
        else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridBottomCell", for: indexPath) as? GridBottomCell else {
                return UICollectionViewCell()
            }
            let info = famousList[indexPath.item]
            cell.updateUI(info)
            return cell
        }
    }
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        famousButton.layer.cornerRadius = 0.5 * famousButton.bounds.size.width

        topCollectionView.dataSource = self
        bottomCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

class ReusableView: UICollectionReusableView {
    @IBOutlet weak var moreButton: UIButton!
    
    func buttonUI() {
        moreButton.layer.cornerRadius = 0.5 * moreButton.bounds.size.width
//        moreButton.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
//        moreButton.layer.borderWidth = 2
        moreButton.layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        moreButton.layer.shadowOpacity = 0.9
        moreButton.layer.shadowOffset = CGSize.zero
        moreButton.layer.shadowRadius = 0.5 * moreButton.bounds.size.width

        
    }
}

class GridTopCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    
    func updateUI(_ info: Category) {
        imgView.image = info.image
        if(info.name=="족발보쌈") {
            nameLable.text = "족발/보쌈"
        }else if(info.name=="찜탕") {
            nameLable.text = "찜/탕"
        } else {
            nameLable.text = info.name
        }
    }
}

class GridBottomCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var pointAndDistance: UILabel!
    @IBOutlet weak var coupon: UIImageView!
    @IBOutlet weak var noFree: UILabel!
    
    func updateUI(_ info: Famous) {
        imgView.image = info.image
        pointAndDistance.text = "\(info.point) · \(info.kilo)"
        nameLable.text = info.name
        if info.couponeKind == "무료" {
            noFree.text = "무료배달"
        } else {
            coupon.image = info.coupone
        }
    }
}

