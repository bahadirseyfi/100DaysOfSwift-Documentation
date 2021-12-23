import UIKit

let linkArama = "https:\"/\"/www.skechers.com.tr\"/arama?q=test&personaclick_search_query=flex&personaclick_input_query=test&recommended_by=bulk&bulk_code=test&utm_source=personaclick&utm_medium=bulk_mobile_push&utm_campaign=bulk-2021-12-08-0"

let link1 =     "https://www.skechers.com.tr/p-flex-advantage-3-0-stally-erkek-gri-spor-ayakkabi-s52957-ccbk?utm_source=personaclick&utm_medium=email&utm_campaign=dlites&slid=SlC_0vG0pBCQGsWrnu1w0pxKGSQ"
let clientLink1 = "https:\"/\"/www.skechers.com.tr\"/p-flex-advantage-3-0-stally-erkek-gri-spor-ayakkabi-s52957-ccbk?utm_source=personaclick&utm_medium=bulk_mobile_push&utm_campaign=bulk-2021-12-08-0&slid=SlC_0vG0pBCQGsWrnu1w0pxKGSQ&recommended_by=bulk&bulk_code=test"

let link2 = " https://www.skechers.com.tr/bot-c-6006?recommended_by=bulk&bulk_code=489715453-3748-61825db52b95a&utm_source=personaclick&utm_medium=bulk_email&utm_campaign=sogugakarsitarzdurus&utm_link_map=3"

let clientLink2 = "https:\"/\"/www.skechers.com.tr\"/bot-c-6006?recommended_by=bulk&bulk_code=test&utm_source=personaclick&utm_medium=bulk_mobile_push&utm_campaign=bulk-2021-12-08-0&utm_link_map=3"

let denemeStr = "https:\"/\"/www.skechers.com.tr\"/p-flex-advantage-3-0-stally-erkek-gri-spor-ayakkabi-s52957-ccbk?utm_source=personaclick&utm_medium=bulk_mobile_push&utm_campaign=bulk-2021-12-08-0&slid=SlC_0vG0pBCQGsWrnu1w0pxKGSQ&recommended_by=bulk&bulk_code=test"

let linkCart = "https:\"/\"/www.skechers.com.tr\"/cart?personaclick_campaign=email&personaclick_mail_code=569963485-685-em-Ka4OJLqt&personaclick_source=chain&recommended_by=bulk&utm_campaign=bulk-2021-12-08-0&utm_medium=bulk_mobile_push&utm_source=personaclick&bulk_code=test"

let deneme2Str = "&utm_medium=bulk_mobile_push&utm_campaign=bulk-2021-12-08-0&recommended_by=bulk&bulk_code=test"

//func generateLink(url: String) -> String {
//    return url.replacingOccurrences(of: "\"", with: "")
//}

func generateLink(url: String) -> String {
    
    let str = url.replacingOccurrences(of: "\"", with: "")
    
    if str.contains("arama") {
        guard let indexChar = str.firstIndex(of: "&") else { return "" }
        let name = str.prefix(upTo: indexChar)
        return String(name)
    } else if str.contains("cart"){
        guard let indexChar = str.firstIndex(of: "?") else { return "" }
        let name = str.prefix(upTo: indexChar)
        return String(name)
    } else {
        guard let indexChar = str.firstIndex(of: "?") else { return "" }
        let name = str.prefix(upTo: indexChar)
        return String(name)
    }
}

extension String {
    func generate() -> String {
        let str = self.replacingOccurrences(of: "\"", with: "")
        
        if str.contains("arama") {
            guard let indexChar = str.firstIndex(of: "&") else { return "" }
            let name = str.prefix(upTo: indexChar)
            return String(name)
        } else if str.contains("cart"){
            guard let indexChar = str.firstIndex(of: "?") else { return "" }
            let name = str.prefix(upTo: indexChar)
            return String(name)
        } else {
            guard let indexChar = str.firstIndex(of: "?") else { return "" }
            let name = str.prefix(upTo: indexChar)
            return String(name)
        }
    }
}

//print(takeLink(str: generateLink(url: clientLink1)))
//print("client link2: ", generateLink(url: clientLink2))
//print(takeLink(str: generateLink(url: linkCart)))
//print(takeLink(str: generateLink(url: linkArama)))

//print(generateLink(url: clientLink1))
//print(generateLink(url: linkCart))
//print(generateLink(url: linkArama))

print(linkCart.generate())
