// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
 
contract Simplebank {
  function addFunds() external payable{
    funders.push(msg.sender);
    fundersSetSum.push(msg.value);
  }
  
  address[] public funders;
  uint[] public fundersSetSum;
}


// truffle console
// truffle migrate --reset
// const instance = await Simplebank.deployed()
// instance.addFunds({value:"500000000000000000", from:accounts[0]})
// instance.addFunds({value:"500000000000000000", from:accounts[1]})
// const funds = instance.funds()
