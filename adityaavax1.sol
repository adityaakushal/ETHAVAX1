//1.SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract aditya_handling{
    uint256 public z;
    constructor (){
        z=17;
    }
   
    function firsterror()public view returns(bool){
        require((z*z)<(z+z),"Value of multiplication should be greater than addition");
        return true;
    }
    function seconderror(uint a)public view returns(bool){
        if(a**z>100){
            revert("a to the power of z should be lesser than 100");
        }
        return true;
    }
    function thirderror()public pure returns(bool){
        assert(false);
        return true;
    }
}
