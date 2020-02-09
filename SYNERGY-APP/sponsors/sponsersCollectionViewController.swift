//
//  sponsersCollectionViewController.swift
//  sponsorsTesting
//
//  Created by Vandana Mittal on 2/9/20.
//  Copyright © 2020 Rohan Mittal. All rights reserved.
//

import UIKit

class sponsersCollectionViewController: UIViewController{
   
    
    @IBAction func registerButton(_ sender: Any) {
        
        if let url = URL(string: "http://info.vit.ac.in/events-vit/Synergy-2020/apply.asp") {
                                 UIApplication.shared.open(url)
                             }
        
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    let    imageArray = [UIImage(named: "codingNinjas"), UIImage(named: "collegeFever"), UIImage(named: "creativeTim"), UIImage(named: "github"), UIImage(named: "jetbrains"), UIImage(named: "mlh")]
        let strURlToOpen = ["https://www.codingninjas.com/", "https://www.thecollegefever.com/", "https://www.creative-tim.com/", "https://www.github.com/", "https://www.jetbrains.com/", "https://mlh.io"]
     
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
         pageControl?.numberOfPages = 6
        // Do any additional setup after loading the view.
    }
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension sponsersCollectionViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0//collectionView.frame.height
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! sponsorsCollectionViewCell
            
        cell.sponsorsImage.image = imageArray[indexPath.row]
        
  //      cell.frame.height = collectionView.frame.height
  //      cell.frame.width = collectionView.frame.width
            
            return cell
        }
         

 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return imageArray.count
 }
 
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pageControl.currentPage = Int(collectionView.contentOffset.x/CGFloat(view.frame.size.width))
    }
 
}
