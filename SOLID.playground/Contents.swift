
import Foundation

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
    func makeVisaPayment(_ amount: Decimal)
    func makeMastercardPayment(_ amount: Decimal)
    func makeAppleWalletPayment(_ amount: Decimal)
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
