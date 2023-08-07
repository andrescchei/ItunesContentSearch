//
//  Networking.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 7/8/2023.
//

import Foundation
import RxSwift

public enum RequestType: String {
    case GET
}

public enum APIError: Error {
    case network, invalidBaseUrl
}

struct APIRequest {
    let method: RequestType
    let requestModel: Codable
    func request(with url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(requestModel) else {
            return request
        }
        request.httpBody = data
        return request
    }
}

protocol RxApiClient {
    func send<T: Codable>(path: String, apiRequest: APIRequest) -> Observable<T>
}

class ImplRxApiClient: RxApiClient {
    let endpoint = ProcessInfo.processInfo.environment["endpoint"] ?? ""
    func send<T: Codable>(path: String, apiRequest: APIRequest) -> Observable<T> {
        return Observable<T>.create { [weak self] observer in
            guard let _endpoint = self?.endpoint,
                let baseURL = URL(string: _endpoint + path)
            else {
                observer.onError(APIError.invalidBaseUrl)
                return Disposables.create()
            }
            let request = apiRequest.request(with: (baseURL))
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                do {
                    let model: T = try JSONDecoder().decode(T.self, from: data ?? Data())
                    observer.onNext(model)
                } catch let error {
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
}
