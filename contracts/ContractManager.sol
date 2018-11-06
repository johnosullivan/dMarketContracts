pragma solidity ^0.4.16;

contract ContractManager {

    address private owner;
    bool public isSetterEnabled;

    modifier isManagerOwner {
        require(msg.sender == owner);
        _;
    }

    struct contractStructure {
        address contractAddress;
    }

    mapping (bytes32 => contractStructure) contractMap;

    constructor() public {
        owner = msg.sender;
    }

    function setAddress(bytes32 name, address _address) public isManagerOwner {
        require(_address != 0x00);
        require(!isSetterEnabled);

        contractMap[name].contractAddress = _address;
    }

    function removeContractAddress(bytes32 name) public isManagerOwner {
        delete contractMap[name];
    }

    function getContractAddress(bytes32 name) public constant returns (address) {
        return contractMap[name].contractAddress;
    }

}
