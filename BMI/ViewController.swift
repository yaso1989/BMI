import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    
    @IBAction func CalcButt(_ sender: Any)
    {
        if let heightT = heightinput.text,
            let weightT = weightInput.text,
            let height = Double(heightT),
           let weight = Double(weightT)
        {
            let bmi = calcBmi(height:height, weight:weight)
            let classify = classification(bmi :bmi)
            
            message.text="BMI CLassification = \(classify)"
        }
        
        else
        {
            message.text="BMI CLassification =  Invalid Input"
        }
    }
    func calcBmi(height: Double, weight: Double) -> Double
    {
        return weight/(height * height)
    }
    
    func classification(bmi : Double) ->String
    {
        switch bmi
        {
        case 0...18.4:
            return("Underweight")
        case 18.5...24.9:
            return("Normal Weight")
        case 25.0...29.9:
            return("Overweight")
        case 30.0...100.0:
            return("Obesity")
        default:
            return("Unknown")
        }
        
    }
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var heightinput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

