# ETH-AVAX1

In my project, we have used the error handlers - require, revert and assert to show the working. We have taken a sample uint variable z and initialised it to 17 to show the working .

## Description

The project shows the working of the three error handlers wherein require takes in 2 arguments where second argument is optional , revert and assert takes in only one argument . The remaining gas fees gets sent back to the user and the error gets handled. The first two functions is set to view as it wants to read the variable z from the contract whereas the third function is set to pure as it does not read or write any variables into the contract .

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., adityaavax1.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to more than "0.8.18" (or another compatible version), and then click on the "Compile adityaavax1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "adityaavax1" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with the mint and burn functions to add or remove tokens from the balance of that account address respectively.

## Authors

Aditya K
@adityaaakushal@gmail.com


## License

This project is licensed under the MIT License
