pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DockyToken is ERC20("DuckyToken", "DUCKY"), Ownable {
    /**
     * @dev Burns a specific amount of tokens.
     * @param value The amount of lowest token units to be burned.
     */
    function burn(uint256 value) external {
      _burn(msg.sender, value);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}

