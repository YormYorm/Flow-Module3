pub contract CarStruct {

    // Define the structure for a Car
    pub struct Car {
        pub let id: UInt64
        pub let model: String
        pub let year: UInt64

        // Constructor for creating a Car
        init(id: UInt64, model: String, year: UInt64) {
            self.id = id
            self.model = model
            self.year = year
        }
    }

    // Store cars using their Id as keys in a dictionary
    pub var cars: {UInt64: Car}

    // Initialize the contract with an empty cars dictionary
    init() {
        self.cars = {}
    }

    // Add a Car to the dictionary using its Id as the key
    pub fun addCar(id: UInt64, model: String, year: UInt64) {
        let car = Car(id: id, model: model, year: year)
        self.cars[id] = car
    }

    // Retrieve a Car by its Id from the dictionary
    pub fun getCar(id: UInt64): Car? {
        return self.cars[id]
    }
}

