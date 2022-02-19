

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // current date generate
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        print(dateFormatter.string(from: date))
        
        
        addUser()
        
    }
    
    
    func addUser(){
        
        var request = URLRequest(url: URL(string: "http://localhost:3000/users")!)
        
        request.httpMethod = "POST"
        let postStr = "username=ugur67&fullname=ugur hamzaoglu&password=123456"
        request.httpBody = postStr.data(using: .utf8)
        
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
                    guard let data = data, error == nil else {
                        print("ERR")
                        return
                    }
                    
                    do {
                        
                        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                            print(json)
                        }
                    }catch {
                        print("err")
                    }
        }.resume()
        
    }


}

