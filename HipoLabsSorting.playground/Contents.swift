import UIKit

let array = ["Ömer Emre Aslan","Eray Diler","Göktuğ Berk Ulu","Salih Karasuluoğlu"]


func findingNoOfCh( array : [String]) {
        var SearchHash : Dictionary<Character , Int> = [:]
        for string in array {
            for  (_ , ch) in string.enumerated() {
                if ch.isWhitespace {
                    continue
                }
                let alreadyExit : Bool = SearchHash[ch] != nil

                if alreadyExit {
                    SearchHash[ch]! += 1
                    print("no of times \(ch) is \(SearchHash[ch]!) times")
                }else {
                    SearchHash[ch] = 1
                    print("no of times \(ch) is \(SearchHash[ch]!) times")
                }
            }
            SearchHash = [:]
        }
}

func sortingMembers(array : [String] , ch : Character) -> [String] {
        
        var SearchHash : Dictionary<Character , Int> = [:]
        var history : [Dictionary<Character , Int>] = [[:]]

        let array = array
        var returningarray : [Dictionary<String , Int>] = [[:]]

        var x : Int = 0
        for string in array {
            for  (_ , ch) in string.enumerated() {
                if ch.isWhitespace {
                    continue
                }
                let alreadyExit : Bool = SearchHash[ch] != nil
                
                if alreadyExit {
                    SearchHash[ch]! += 1
                }else {
                    SearchHash[ch] = 1
                }
            }
            history.append(SearchHash)
            SearchHash = [:]
            
        }
        history.removeFirst()
        print(history)
        returningarray.removeFirst()
        for (index  , eachhistory) in history.enumerated() {
            if let amount = eachhistory[ch]  {
                
                print(amount)
                if amount > x {
                    x  = amount
                    returningarray.insert([array[index] : amount], at: 0)
                    continue
                }
                if amount == x && array[index-1].count != array[index].count {
                    if  array[index-1].count < array[index].count{
                        returningarray.insert([array[index] : amount], at: index-1)
                    }else {
                        returningarray.append([array[index] : amount])
                    }
                    
                    
                }else if amount == x && array[index-1].count == array[index].count {
                    if array[index] > array[index - 1] {
                        returningarray.insert([array[index] : 0], at: index-1)
                    }else {
                        returningarray.append([array[index] : 0])
                    }
                }
            }
            returningarray.insert([array[index] : 0], at: returningarray.endIndex)
        }
        var finalarray = [String]()
        for array in returningarray {
            for (data,_) in array {
                finalarray.append(data)
            }
        }
        print(finalarray)
        return finalarray
        
    }
let new_array = sortingMembers(array: array, ch: "a")




