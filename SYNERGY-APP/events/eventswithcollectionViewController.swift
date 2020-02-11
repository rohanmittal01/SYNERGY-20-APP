//
//  eventswithcollectionViewController.swift
//  SYNERGY-APP
//
//  Created by Vandana Mittal on 2/8/20.
//  Copyright © 2020 Rohan Mittal. All rights reserved.
//

import UIKit

class eventswithcollectionViewController: UIViewController{
    
    

    @IBOutlet weak var collectionView: UICollectionView!
 
    
     var eventnames = ["MACHINE LEARNING", "CYBER SECURITY", "Internet Of Things","UI/UX", "CODE OLYMPIA", "PAPER PRESENTATION", "ACCESS DENIED"]
            
        var eventDesc = ["""
    One of today’s most interesting topics is the heavily hyped, self-driving car. How is it made? How does it work? What technology is used? and many more such questions. It all starts with the concept of Machine Learning. Humans can expand their knowledge to adapt the changing environment, but how can you make computers learn? Get the answer to this question and many more. Be a part of the IETE Workshop on Machine Learning and expand your knowledge. Get a chance to learn and grow how you have actually wished to. Synergy 2020’s Workshop gives you not only the opportunity you want, but the one you deserve!
    """,
                             
                         """

    Heard of WannaCry? No, its not something wanting to cry, but the ransomware attack that spread in 2017.
            In this cyber world, security of information is very important. Join the Synergy 2020 Workshop on Cyber Security and learn about various cyber attacks and how to protect yourself from them, be it Malware and Denial of Service or Cryptojacking and SQL injection.

            This workshop provides you with all that you need to not only save yourself, but also someday, even your Country!
    """,
                             
                         """

    IOT has the potential to change the world, and so does the youth of this nation. A world where the real, digital and virtual are converging to create smart environments.

            Synergy’20’s workshop on ‘IOT’ gives you a golden opportunity to experience the revolution by taking your first step towards this enthralling subject.
            The workshop is aimed to highlight the basic concepts and features of IOT, and building projects utilizing the Arduino platform.
            The world is moving fast, you need to too! So don’t miss this opportunity and register soon to grab your seat or somebody else will!
    """ ,
                            
            "“People ignore design that ignores people.” – Frank Chimero Design is everywhere. From the dress you’re wearing to the smartphone you’re holding, it’s design. Learn about UI/UX from the masters. IETE-SF brings to you a workshop on UI/UX in Synergy 2020. This workshop provides you all you require to become the best of the best.",
               
            """
    Make it work, make it right, make it fast!
            This is the motto of every good programmer out there.
            Unlike most other coding contests, we bring to u codeolympia , a 12-hour coding contest, which will intrigue you and drain you at the same time, but in the end it will leave you with a step taken forward.

            In association with hackerrearth, codeolympia provides a great opportunity for anyone to dive into the programming world or even to nourish their skills. With a cash prize of Rs 9000, along with refreshments and various goodies by none other than Hackerrank, Codeolympia will surely bring out the code-wizard in u!

        Reg fees - 250 per head
        TEAM OF 2
    """,
               
            """
    “No research without action, no action without research” ~ Kurt Lewis
            Done with your research but deprived of the action?
            Waiting for a trustworthy panel of judges?
            If yes, then we are back with Paper Presentation session with IETE-ISF's Synergy'20. Synergy'20's Paper Presentation is the perfect platform for you to showcase all your innovative ideas and dedicated research in front of highly experienced panel of judges.

            In case your research is in the fields of computer-science, electronic/electrical fields, then it's your platform, let out the speaker in you by preparing a presentation to voice your ideas/research and grab exciting prizes.

            Its time for your hard work over these years to get acknowledged and your idea to bring change and transform lives! Hence register without a second thought because, for every opportunity we turn down, we are losing a door towards success. If your idea gets selected, it will be published in

            1)International Journal for Research in Applied Science and Engineering Technology (IJRASET)

            i. Thomoson Reuters indexing
            ii. Scientific journal with an impact factor of 6.887
            iii. ISRA journal impact factor of 4.895

            2)Journal of Advanced Research in Dynamical and Contril Systems

            i. Scopus Indexed Journal
            ii. SJR of 0.11

            Mail your CSE/ IT/ EEE/ ECE/ EIE related abstracts to synergypapers20@gmail.com by 10th January 2020. Please download the below template to submit your abstracts. The format given in the template has to be strictly followed. Registrations will open after the list of selected abstracts is released in the 1st week of February 2020.

            Registration Fee: - 500 / per participant
    """,
               
            "AccessDenied is a 30-hour hackathon organized by IETE-ISF for innovators across the country. It is an great opportunity to put your technical skills to use. Apply your textbook knowledge to real life ideas and stand a chance to win exclusive goodies, schwags, certificates and cash prizes. Mark your calendars for 22nd to 24th February, 2020."

            ]
            
    
    @IBAction func registerButton(_ sender: Any) {
        
        if let url = URL(string: "http://info.vit.ac.in/events-vit/Synergy-2020/apply.asp") {
                          UIApplication.shared.open(url)
                      }
               
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


   
}



extension eventswithcollectionViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0//collectionView.frame.height
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! eventswithCollectionViewCell
            
            cell.eventNames.text = eventnames[indexPath.row]
            cell.eventDesc.text = eventDesc[indexPath.row]
            
  //      cell.frame.height = collectionView.frame.height
  //      cell.frame.width = collectionView.frame.width
            
            return cell
        }
         

 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return eventnames.count
 }
 
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
 
}



