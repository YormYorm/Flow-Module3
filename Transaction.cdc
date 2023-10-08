// Import CarStruct Contract
import CarStruct from 0x01

// Transaction to add a car
transaction(id: UInt64, model: String, year: UInt64) {
    
    prepare(acct: AuthAccount) {}

    execute {
      CarStruct.addCar(id: id, model: model, year: year)
      log("Added Successfully")
    }
}
