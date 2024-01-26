// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

      // using this below, Imports everyThing from SimpleStorage, What if we don't want to Import everything we only need a specific??? => its old Format 
// import "./SimpleStorage.sol";
    
    // New Format: this Format helps us to be "specific" on how we import Contract
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
// Recap on Format to declare a custom 'Type'
// uint256 public name;
// Type Visibility nameOfType;

// SimpleStorage public simpleStorage; 
// instead of the above we create a running list to store the contract we create

SimpleStorage[] public listOfSimpleStorageContract;


// lets create a fn  That will deploy a contract from another Contract
function createSimpleStorageContract() public {
SimpleStorage newContract = new SimpleStorage();
listOfSimpleStorageContract.push(newContract);
}

// let's create a Fn that Interacts with other fn in another Contract

function sfStore(uint256 _simpleStorageContractIndex, uint256 _simpleStorageContractNumber )public{

/*  myFavoriteNumber = listOfSimpleStorageContract[_simpleStorageContractIndex];
myFavoriteNumber.store(_simpleStorageContractNumber); */
                                    // OR

listOfSimpleStorageContract[_simpleStorageContractIndex].store(_simpleStorageContractNumber);

// the explanation of the code above in this Fn: what I literally did was to create a varible called "myFavoriteNumber" and it will be = the list of the Contract Array/ Contract Run list then using a particular index Number (NB: array start counting from 0) to store a Particular Number to that Particular index in that specific contract address.
}

// let's create a fn for retrieve still interacting with the Fn from another Contract
function sfGet(uint _simpleStorageContractIndex) public view returns(uint256){
    
    /*SimpleStorage myFavoriteNumber = listOfSimpleStorageContract[_simpleStorageContractIndex];
    return myFavoriteNumber.retrieve();*/

                                    // OR

    return listOfSimpleStorageContract[_simpleStorageContractIndex].retrieve();
}
// Explanation of the above code: the code is used to get the Number stored on each contract address using the index of the particuar Contract.




//Array Type   // visibity //nameOfTheArrayType to addTo


//We need To Create a Running List to store the Diff "SimpleStorage" we create


}