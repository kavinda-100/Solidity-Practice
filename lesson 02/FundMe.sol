// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

    uint256 internal minimumUSD = 5e18;
    address[] internal funders;
    mapping (address funder => uint256 amountFunded) public fundedAmountByFunder;

    function fund() public payable {
        require(msg.value.getConverionRate() >= minimumUSD, "You need to send some Ether. minimum 1 ETH");
        funders.push(msg.sender);
        fundedAmountByFunder[msg.sender] += msg.value;
    }

    function withdraw() public {}

    function getHowmanyFunders() public view returns (uint256) {
        return funders.length;
    }
}