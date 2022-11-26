pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Finance is ERC20, Ownable{

    constructor() ERC20("TimtalToken", "TI") {}
    
    function mint(address to, uint256 amount) public  returns(uint){
        amount = amount/1e18;
        _mint(to, amount);
        return amount;
    }

}
