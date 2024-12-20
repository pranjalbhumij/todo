//
//  ModelData.swift
//  Todo
//
//  Created by Baba Yaga on 20/12/24.
//

import Foundation

class ModelData {
    public static var tasks: [Task] = loadData()
}

func loadData<T: Decodable>() -> T {
    guard let file = Bundle.main.url(forResource: "model_data.json", withExtension: nil) else {
        fatalError("Could not find file")
    }
    do {
        let data = try Data(contentsOf: file)
        let decodedData = try JSONDecoder().decode(T.self, from: data)
        return decodedData
    } catch {
        fatalError("Could not load file data \(error)")
    }
}
