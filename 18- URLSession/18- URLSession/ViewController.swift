

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // current date generate
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        print(dateFormatter.string(from: date))
        
        
        //addUser()
        //allDatas()
        
        fetchUserDatas()
    }
    
    // CODABLE
    func fetchUserDatas(){
                 let url = "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php"
        
                URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {
                    data, response, error in
        
                    guard let data = data, error == nil else {
                        return
                    }
        
    
        
                    do {
                         let json = try JSONDecoder().decode(Welcome.self, from:data)
                        
                        for item in json.kisiler! {
                            print(item.kisiID!, item.kisiAd!)
                            
                        }
                        
                           
                    } catch(let error) {
                        print("err", error)
                    }
        
        
                }).resume()
        
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
                        print("wqeqw")
                        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                            print(json)
                        }
                    }catch {
                        print("err")
                    }
        }.resume()
        
    }
    
    
    func allDatas(){
        
        
        guard let url = URL(string: "http://localhost:3000/users") else {
            return
            
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            guard let data = data else {
                return
            }
            
            
            do {
                
                let json = try JSONSerialization.jsonObject(with:data, options: .mutableContainers)
                    print(json)
                
            }catch {
                print("err")
            }
            
        }.resume()
        
        
    }
}

