// SPDX-License-Identifier: MIT

// Repetition Repetition Repetition

// Millysmith's Workstation

pragma solidity ^0.8.19; // It is used to dictate the Solidity version

contract SimpleStorage {

    uint256 myfavouriteNumber;

// uint256[] public listOfPeople; // using this to visualize how to create 'struct'

    struct Person {
        uint256 favouriteNumber;
        string name;
    } // I have made a TYPE person

    // To define a Custom 'struct'.  NB- To declare a Custom TYPE, WE define it BOTH left & Right
//1st method
//FMAT- Type  visi  nmofType
    // Person public Pat = Person({favouriteNumber: 7, name: "pat"});
    // Person public  Collins= Person({favouriteNumber: 14, name: "collins"}); 
//the 1st Method is kind of tedious so we use 2nd method 

//2nd Method - Array Method 

mapping (string => uint256) public nameToFavouriteNumber; // MAPPING is DSA Used to 'Find' Data randomly fast from an array of list


Person[] public listOfPerson; // this Empty [] so we to create a function to ADD to it 

    // This function stores the Variable in the state 
    function store(uint256 _favouriteNumber) public virtual   {
        myfavouriteNumber = _favouriteNumber; 
    }
    
    // this Function will retrieve the variable
    function retrieve() public view returns(uint256) {
     return myfavouriteNumber;
    }
    
    // function addPerson(string memory _name, uint256 _favouriteNumber) public {
    //     Person memory newPerson = Person(_favouriteNumber, _name );
    //     listOfPerson.push(newPerson);

    // }

                                //OR

     function addPerson (string memory _name, uint256 _favouriteNumber) public {
        listOfPerson.push(Person(_favouriteNumber, _name)); 

        nameToFavouriteNumber[_name]= _favouriteNumber; // this how we call a mapping in a function
 }

}
 // This is how address of the deployed contract looks like similar to that of metamask - 0x0fC5025C764cE34df352757e82f7B5c4Df39A836

contract SimpleStorage2{}
contract SimpleStorage3{}
contract SimpleStorage4{}

//And so on...