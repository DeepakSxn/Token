// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    address private owner;

    constructor() ERC20("Tempest", "TEM") {
        owner = msg.sender;
    } 

    modifier onlyOwner {
        require(owner == msg.sender, "only owner can mint Tokens");
        _;
    }

 
    function mint(address _to, uint _val) public onlyOwner {
        _mint(_to, _val);
    }

    function burnByAnyone(uint _val) public {
        _burn(msg.sender, _val);
    }

   
    function transferToAnyone(address _to, uint _val) public {
        _transfer(msg.sender, _to, _val);
    }
}
