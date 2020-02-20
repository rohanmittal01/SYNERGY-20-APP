
import UIKit
import SafariServices
class infoViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var settingsTable: UITableView!
    
    
    
    
    
    
    
    
    @IBAction func registerButton(_ sender: Any) {
        
  
          guard let url = URL(string: "http://info.vit.ac.in/events-vit/Synergy-2020/apply.asp") else {
                return
            }

            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func liveChat(_ sender: Any) {
        
        guard let url = URL(string: "https://tawk.to/chat/5c3db6b351410568a106b27e/default") else {
                   return
               }

               let safariVC = SFSafariViewController(url: url)
               present(safariVC, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
        var indexPos=0
    
    var tableArray = ["About IETE       >",
                      "Contact Us       >",
                      "Developer Info   >"]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTable.dataSource = self
        settingsTable.delegate = self
      //  settingsTable.separatorStyle = UITableViewCell.separatorStyle.singleline
        settingsTable.separatorColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        

        // Do any additional setup after loading the view.
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableArray.count
    }
    
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingsTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! infoTableViewCell
        cell.myLabel.text = tableArray[indexPath.row]
      //  print("done 1")
        
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.init(red: 40/255, green: 54/255, blue: 85/255, alpha: 1)
        cell.selectedBackgroundView = backgroundView
        
        settingsTable.separatorColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {


        indexPos=indexPath.row
        if(indexPos==0)
        {
            DispatchQueue.main.async(){
               self.performSegue(withIdentifier: "about_iete", sender: self)
            }//self.performSegue(withIdentifier: "about_iete", sender: self)
            print("1")
        }
        else if(indexPos==1)
        {
             DispatchQueue.main.async(){
                self.performSegue(withIdentifier: "Contact_Us", sender: self)
             }
        }
        else if(indexPos==2)
        {
            self.performSegue(withIdentifier: "developer_info", sender: self)
        }
        
           settingsTable.deselectRow(at: indexPath, animated: true)

    }
    
    

}


extension infoViewController: SFSafariViewControllerDelegate{
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}
