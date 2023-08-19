// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract looping {
    //create an array of numbers
    uint256[] public numbers;
    constructor (uint256[] memory _numbers) public {
        numbers=_numbers;
        
    }
    function sumWithForLoop( ) public view returns(uint256){
        uint256 sum=0;
        for (uint256 i = 0; i < array.length; i++) {
            sum+=numbers[i];
        }
        return sum;
    }
    function sumWithWhileLoop( ) public view returns(uint256){
        uint256 sum=0;
        uint256 i=0;
        while(i<numbers.length){
            sum +=numbers[i];
            i++;
        }
        return sum;
    }
    
    function sumWith_do_WhileLoop( ) public view returns(uint256){
        uint256 sum=0;
        uint256 i=0;
        do{sum+=numbers[i];
        i++;
        }while(i<numbers.length);
        return sum;
    }
}