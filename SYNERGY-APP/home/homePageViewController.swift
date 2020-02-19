//
//  homePageViewController.swift
//  SYNERGY-APP
//
//  Created by Vandana Mittal on 2/4/20.
//  Copyright © 2020 Rohan Mittal. All rights reserved.
//

import UIKit
import SafariServices

class homePageViewController: UIViewController {

   
    @IBOutlet weak var todayDay: UITextView!
    @IBOutlet weak var hours: UITextView!
    
    @IBOutlet weak var minutes: UITextView!
    @IBOutlet weak var seconds: UITextView!
    
        
    
    
    @IBAction func registerButton(_ sender: Any) {
        
      register()
        
    }
    
    @IBAction func registerButtonMain(_ sender: Any) {
        register()
    }
    

    func register(){
          guard let url = URL(string: "http://info.vit.ac.in/events-vit/Synergy-2020/apply.asp") else {
                 return
             }

             let safariVC = SFSafariViewController(url: url)
             present(safariVC, animated: true, completion: nil)
                           
    }
    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()

            
//            todayDay.alignTextVerticallyInContainer()
//            hours.alignTextVerticallyInContainer()
//            minutes.alignTextVerticallyInContainer()
//            seconds.alignTextVerticallyInContainer()
//
            fontAdjust()
            
             _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getCurrentTime), userInfo: nil, repeats: true)
            
            // Do any additional setup after loading the view.
        }
        
        func fontAdjust()
        {
            // iphone 5s,SE screen width 320
            // iphone 6,6s,7,etc width 375
            // iphone 7 plus, 8 plus, xs max,etc width 414
        
        
            if (self.view.frame.width == 320) {

                todayDay.font = UIFont(name: todayDay.font!.fontName, size: 41)
                hours.font = UIFont(name: hours.font!.fontName, size: 41)
                 minutes.font = UIFont(name: minutes.font!.fontName, size: 41)
                seconds.font = UIFont(name: seconds.font!.fontName, size: 41)
                
            } else if (self.view.frame.width == 375) {

                todayDay.font = UIFont(name: todayDay.font!.fontName, size: 52)
                 hours.font = UIFont(name: hours.font!.fontName, size: 52)
                minutes.font = UIFont(name: minutes.font!.fontName, size: 52)
                seconds.font = UIFont(name: seconds.font!.fontName, size: 52)
                

            } else if (self.view.frame.width == 414) {

                todayDay.font = UIFont(name: todayDay.font!.fontName, size: 60)
                 hours.font = UIFont(name: hours.font!.fontName, size: 60)
                minutes.font = UIFont(name: minutes.font!.fontName, size: 60)
                seconds.font = UIFont(name: seconds.font!.fontName, size: 60)

            }

        }
        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

        @objc func getCurrentTime()
        {
            let date = Date()
            let calendar = Calendar.current
            
            
            let components = calendar.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date as Date)
            
            let currentDate = calendar.date(from: components)
            
            let userCalendar = Calendar.current
            
            // here we set the due date. When the timer is supposed to finish
            let competitionDate = NSDateComponents()
            competitionDate.year = 2020
            competitionDate.month = 02
            competitionDate.day = 22
            competitionDate.hour = 10
            competitionDate.minute = 0
            competitionDate.second = 0
            let competitionDay = userCalendar.date(from: competitionDate as DateComponents)!
            
            //here we change the seconds to hours,minutes and days
            let CompetitionDayDifference = calendar.dateComponents([.day, .hour, .minute, .year, .month, .second], from: currentDate!, to: competitionDay)
            
            
            //finally, here we set the variable to our remaining time
            let daysLeft = CompetitionDayDifference.day
            let hoursLeft = CompetitionDayDifference.hour
            let minutesLeft = CompetitionDayDifference.minute
            //     let monthsLeft = CompetitionDayDifference.month
            //   let yearsLeft = CompetitionDayDifference.year
            let secondsLeft = CompetitionDayDifference.second
            
            
            todayDay.text = "\(daysLeft ?? 0)"
            //   todayMonth.text = "\(monthsLeft ?? 0)\nMonths"
            //    todayYear.text = "\(yearsLeft ?? 0)\nYears"
            hours.text = "\(hoursLeft ?? 0)"
            minutes.text = "\(minutesLeft ?? 0)"
            seconds.text = "\(secondsLeft ?? 0)"
            
            //   print(CompetitionDayDifference)
            
            //   print("day:", daysLeft ?? "N/A", "hour:", hoursLeft ?? "N/A", "minute:", minutesLeft ?? "N/A")
            
            //
            
            
            
            
        }
        
        
    }


    extension UITextView{
        
        func alignTextVerticallyInContainer()
        {
            var topCorrect = (self.bounds.size.height - self.contentSize.height*self.zoomScale)/2
            topCorrect=topCorrect<0.0 ? 0.0:topCorrect;
            self.contentInset.top = topCorrect
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
