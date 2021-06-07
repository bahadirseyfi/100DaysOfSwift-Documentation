//
//  NetworkManager.swift
//  URLSessionAPI
//
//  Created by bahadir on 21.05.2021.
//

import Foundation

public class NetworkManager {
    func requestData(from url: String, completion: (Data?, Error) -> Void) {
      //  let urlString = "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY"
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                debugPrint(error)
                return
            }
            guard let httpResponse = response as? HTTPURLResponse else {
                debugPrint("Failed to downcast httpResponse")
                return
            }
            if (200...299) ~= httpResponse.statusCode {
                debugPrint("Bad Status")
               // return
            }
            if let data = data {
//                debugPrint(data)
//                let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String:String]
//                DispatchQueue.main.async {
//                    self.textView.text = json?["explanation"]
//                }
                do {
                    let decodedObject = try JSONDecoder().decode(, from: data)
                } catch (let error) {
                    // completion(.failure(A
                }
            }
        }
        task.resume()
    }
}
