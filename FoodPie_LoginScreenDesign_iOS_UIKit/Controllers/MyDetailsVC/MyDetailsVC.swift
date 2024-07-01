//
//  MyDetailsVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 22/03/24.
//

import UIKit
class MyDetailsVC: UIViewController {
    
    // MARK: - IBOUTLETS
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var salaryLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var companyLbl: UILabel!
    @IBOutlet weak var temperatureLbl: UILabel!
    
    // MARK: -
    var myDetailsModel: MyDetailsModel?
    
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchDetails()
    }
    
        // MARK: - WEB SERVICE METHODS
        // TODO: FETCH DATA FROM API
        internal func fetchDetails(){
            guard let endPoint = URL(string: "https://mocki.io/v1/20b4bee5-aff9-4f86-aa41-c6020801cdec") else{
                print("endPoint is not valid url")
                return
            }
            
            let session = URLSession.shared
            let task = session.dataTask(with: endPoint) {(data,response,error) in
                if let error = error {
                    print("Error: \(error)")
                    return
                }
                
                guard let data = data else {
                    print("No data received")
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    self.myDetailsModel = try decoder.decode(MyDetailsModel.self, from: data)
                    
                    DispatchQueue.main.async {
                        
                        if let name = self.myDetailsModel?.personal.name {
                            self.nameLbl.text = "Name: \(name)"
                        }
                        
                        if let phoneNumber = self.myDetailsModel?.personal.phone_number {
                            self.phoneLbl.text = "Phone: \(phoneNumber)"
                        }
                        if let salaryPackage = self.myDetailsModel?.personal.salary_package {
                            self.salaryLbl.text = "Salary: \(salaryPackage)"
                        }
                        if let city = self.myDetailsModel?.location.city {
                            self.cityLbl.text = "City: \(city)"
                        }
                        if let company = self.myDetailsModel?.location.company {
                            self.companyLbl.text = "Company: \(company)"
                        }
                        if let temperature = self.myDetailsModel?.location.weather.temp_c {
                            self.temperatureLbl.text = "Temperature: \(temperature)°C"
                        }
                    }

                } catch {
                    print("Error decoding JSON: \(error.localizedDescription)")
                }
            }
            task.resume()
        }
    
    // TODO: DEINIT
    deinit{
        print("MyDetailsVC has been REMOVED...!")
    }
    // MARK: - ACTIONS
}
