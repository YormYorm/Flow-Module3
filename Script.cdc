// Import CarStruct Contract
import CarStruct from 0x01

pub fun main(id: UInt64): CarStruct.Car? {
  return CarStruct.getCar(id: id)!
}
