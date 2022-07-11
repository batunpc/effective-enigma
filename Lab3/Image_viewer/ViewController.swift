//
//  ViewController.swift
//  Image_viewer
//
//  Created by Batuhan Ipci on 2022-07-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var planetImg: UIImageView!
    @IBOutlet weak var choosePlanetPC: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        choosePlanetPC.delegate = self
        choosePlanetPC.dataSource = self

    }
    
    //MARK: set image data from online
//    planetImg.image = UIImage(data: <#T##Data#>)
    
}

//MARK: planet picker view setup
extension ViewController : UIPickerViewDataSource , UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Model().listOfImages.count //num of element in dictionary
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let items = Model().listOfImages
        let planetName = Array(items)
        return (planetName[row].key)
    }
    
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        //UIView(frame: CGRect(x: <#T##Int#>, y: <#T##Int#>, width: <#T##Int#>, height: <#T##Int#>))
//        return UILabel()
//    }
    
  
    
    //MARK: create class that does networking and have function that does this
//    func getData(url : String){
//        let xurl =
//        "https://images.freeimages.com/images/large-previews/1c9/maine-at-4-45-am-1370871.jpg"
//        if let myUrl = URL(string: xurl){
//            // could take a while
//        let myQ = DispatchQueue(label: "a")
//            myQ.async {
//                if let myImgData = try? Data(contentsOf: myUrl){
//                    DispatchQueue.main.async {
//                        self.planetImg.image = UIImage(data: myImgData)
//                    }
//
//                }
//            }
//
//        }
//
//    }
    
}

