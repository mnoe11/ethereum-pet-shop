pragma solidity ^0.4.17;

contract Adoption {
  address[16] public adopters;

  // Adopt the pet with id petId
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15, "Invalid petId index");

    adopters[petId] = msg.sender;

    return petId;
  }

  // Get all adopters
  function getAdopters() public view returns (address[16]) {
    return adopters;
  }
}
