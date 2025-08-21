// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimpleStorage1 {
    /*  1. Data Types   */

    // variable declaration: type visibility name

    // int & uint
    int256 public value;
    uint256 public unsignedNumber = 1;
    // boolean
    bool public isTrue = true;
    // address
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // fixed & ufixed
    //fixed public fixedNumber = -1.23;
    //ufixed public unsignedFixedNumber = 1.23;
    // bytes32
    bytes32 public myBytes32 = 0x00;
    // enum
    enum Status {Pending, Shipped, Accepted, Rejected, Canceled}

    /*   2. Reference Types   */

    // array
    uint256[] public arrayOfUint = new uint256[](1);
    // string
    string public myString = "This is a string !";
    // bytes
    bytes public myBytes = "This is a bytes !";
    // struct
    struct Person {
        uint256 age;
        string name;
        bool isStudent;
    }

    /*   3. Functions   */

    // constructor
    constructor(uint256 _value) {
        unsignedNumber = _value;
    }
    // visibility: external, public, internal, private

    // function name() visibility mutability return_type {}
    function setValue(uint256 _value) private myModifier(_value) {
        unsignedNumber = _value;

        emit ValueUpdated(_value);
    }

    // view function
    function getValue() public view returns(uint256){
        return unsignedNumber;
    }

    // pure function
    function add(uint a, uint b) public pure virtual returns(uint) {
        return a + b;
    }

    // override, virtual

    // payable
    function sendEther() external payable {
        // This function accepts funds
    }

    // modifiers
    modifier myModifier(uint uintValue) {
        if(uintValue == 0) {
            return;
        }
        _;
    }

    /*   4. Special Keywords   */

    // block
    uint chainId = block.chainid;
    // msg
    address transactionSender = msg.sender;
    uint msgValue = msg.value;
    // tx
    uint gasPrice = tx.gasprice;

    /*    5. Contract Structures    */

    // events
    event ValueUpdated(uint value);
    // errors
    error InsufficientBalance(uint balance, uint withdrawAmount);
    // interface
    // library
}

interface myInterface {
    function myFunc() external;
}

library myLibrary {}
