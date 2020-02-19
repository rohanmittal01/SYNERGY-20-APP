//
//  sponsorsViewController.swift
//  SYNERGY-APP
//
//  Created by Vandana Mittal on 2/9/20.
//  Copyright © 2020 Rohan Mittal. All rights reserved.
//

import UIKit
import SafariServices

class sponsorsViewController: UIViewController {

    
    @IBAction func registerButton(_ sender: Any) {
                             
        guard let url = URL(string: "http://info.vit.ac.in/events-vit/Synergy-2020/apply.asp") else {
             return
         }

         let safariVC = SFSafariViewController(url: url)
         present(safariVC, animated: true, completion: nil)
    }
    
    
    
      let    imageArray = [UIImage(named: "codingNinjas"), UIImage(named: "collegeFever"), UIImage(named: "creativeTim"), UIImage(named: "github"), UIImage(named: "jetbrains"), UIImage(named: "mlh")]
         let strURlToOpen = ["https://www.codingninjas.com/", "https://www.thecollegefever.com/", "https://www.creative-tim.com/", "https://www.github.com/", "https://www.jetbrains.com/", "https://mlh.io"]
      
      
    
    @IBOutlet weak var iCarouselView: iCarousel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iCarouselView.type = .coverFlow
         iCarouselView.contentMode =  .scaleAspectFit
         iCarouselView.isPagingEnabled = true
             
             
             let shadowSize: CGFloat = 20
             let shadowDistance: CGFloat = 20
             let contactRect = CGRect(x: -shadowSize, y: iCarouselView.frame.height - (shadowSize * 0.4) + shadowDistance, width: iCarouselView.frame.width + shadowSize * 2, height: shadowSize)
        
             
             iCarouselView.layer.shadowPath = UIBezierPath(ovalIn: contactRect).cgPath
                 iCarouselView.layer.shadowRadius = 5
             iCarouselView.layer.shadowOpacity = 0.8

        

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

 extension sponsorsViewController : iCarouselDelegate, iCarouselDataSource{
        
        
        func numberOfItems(in carousel: iCarousel) -> Int {
            
            return imageArray.count
        }
        
        func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
            
            
            
            let imageView = UIImageView()
            
        
         
                
            imageView.frame=CGRect(x: 0, y:0, width:iCarouselView.frame.width, height:iCarouselView.frame.height)
                
                imageView.contentMode = .scaleAspectFit
        
            imageView.image = imageArray[index]
            
            
               //image Tap Feature
         /*   iCarouselView.isUserInteractionEnabled = true
            iCarouselView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTap)))
          */
            
            
            
            
            imageView.backgroundColor = .init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
            imageView.layer.shadowPath = UIBezierPath(rect: iCarouselView.bounds).cgPath
            imageView.layer.shadowRadius = 8
            imageView.layer.shadowOffset = .zero
            imageView.layer.shadowOpacity = 1
            

            
            return imageView
            
        }
       
       
        
        func carousel(_ carousel: iCarousel, didSelectItemAt index: Int) {
            if let url = URL(string: strURlToOpen[index]) {
                if #available(iOS 10, *){
                    UIApplication.shared.open(url)
                }else{
                    UIApplication.shared.openURL(url)
                }
                
            }
            
        }
        
        

}

