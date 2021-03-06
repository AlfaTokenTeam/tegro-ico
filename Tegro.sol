pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Tegro is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Tegro(address _owner)  UpgradeableToken(_owner) {
    name = "Tegro";
    symbol = "TGR";
    totalSupply = 10000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}