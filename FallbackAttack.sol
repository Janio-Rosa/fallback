// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Fallback.sol";

contract FallbackAttack {

    Fallback public victim;

    constructor (address payable _victimAddr){
        victim = Fallback(_victimAddr);
    }

    function attack()public {
        victim.contribute();
        
    }

    
}