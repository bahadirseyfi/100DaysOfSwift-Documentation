
import UIKit

// SINGLE RESPONSIBILITY PRENCIPLE

struct Developer {
    
    let name : String
    let salary : Decimal
}

class TaxCalculator{
    
    private let taxPercentage : Decimal
    
    init(taxPercentage: Decimal) {
        self.taxPercentage = taxPercentage
    }
    
    func calculateTax(forSalary salary: Decimal) -> Decimal {
        return salary * taxPercentage
    }
}



// OPEN CLOSED PRENCIPLE


protocol PaymentManagerProtocol {
  //  func makeVisaPayment(_ amount: Decimal)
  //  func makeMastercardPayment(_ amount: Decimal)
  //  func makeAppleWalletPayment(_ amount: Decimal)
    func payAmount(_ amount: Decimal, method: PaymentMethodProtocol)
}

protocol PaymentMethodProtocol{
    func payAmount(_ amount: Decimal)
}

class VisaPaymentMethod: PaymentMethodProtocol {
    func payAmount(_ amount: Decimal) {
        // ...
    }
}

class MastercardPaymentMethod: PaymentMethodProtocol {
    func payAmount(_ amount: Decimal) {
        // ...
    }
}

// Interface Segregation Principle

enum TemperatureUnit {
    case celsius
    case fahrenheit
}

enum SpeedUnit {
    case kilometeres
    case miles
}

protocol SpeedSettingsProtocol : class {
    var speedUnit: SpeedUnit { get set }
}

protocol TemperatureSettingsProtocol : class {
    var temperatureUnit : TemperatureUnit { get set }
}

class TemperatureController {
    private let settings: TemperatureSettingsProtocol
    
    init(settings: TemperatureSettingsProtocol) {
        self.settings = settings
    }
    
func toggle(){
    switch settings.temperatureUnit {
        case .celsius:
            settings.temperatureUnit = .fahrenheit
    case .fahrenheit:
            settings.temperatureUnit = .celsius
        }
    }
    
}

// Depedency Inversion Principle

// Figure - I
/*
class CarViewModel {
    let make : String = "Porsche"
    let model : String = "911"
}

class CarViewController : UIViewController {
    
    var viewModel : CarViewModel!
    
    @IBOutlet private var makeLabel : UILabel!
    @IBOutlet private var modelLabel :  UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeLabel.text = viewModel.make
        modelLabel.text = viewModel.model
    }
}
*/
// Figure - II

protocol CarViewModelProtocol {
    var make: String { get }
    var model: String { get }
}

class CarViewModel : CarViewModelProtocol {
    let make : String = "Porsche"
    let model : String = "911"
}

class CarViewController : UIViewController {
    
    var viewModel : CarViewModelProtocol!
    
    @IBOutlet private var makeLabel : UILabel!
    @IBOutlet private var modelLabel :  UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeLabel.text = viewModel.make
        modelLabel.text = viewModel.model
    }
}
