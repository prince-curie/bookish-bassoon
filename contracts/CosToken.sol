// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CosToken is ERC20 {
    // price for 1 CosToken
    uint64 price = 1 * 10 ** 15 wei;

    event TokenBought(address indexed receiver, uint quantity);

    constructor() ERC20('CosToken', 'CTN') {
        super._mint(msg.sender, 1000000);
    }

    function buyToken(address receiver, uint quantity) public payable {
        uint total = quantity * price;

        require(msg.value >= total, 'CosToken::Insufficent cash to make purpose');

        _mint(receiver, quantity);

        uint change = msg.value - total;

        if(change > 0) {
            payable(msg.sender).transfer(change);
        }

        emit TokenBought(receiver, quantity);
    }
}