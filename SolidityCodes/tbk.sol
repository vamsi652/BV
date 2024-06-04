// SPDX-License-Identifier:MIT
pragma solidity >=0.4.0;
contract vendor{
    struct l1{
        string ven_id;
        string ven_acc;
    }
    l1[] public arr;
    constructor() public{
        l1 memory s1;
        l1 memory s2;
        l1 memory s3;
        s1.ven_id="vendor1";
        s1.ven_acc="0x3cafa78b9063d0Af0fcf41B20F9777F6d2b4c2C1";
        s2.ven_id="vendor2";
        s2.ven_acc="0x94E07ce2B86D7B05A81622f83EeA4a4e07EB04e8";
        s3.ven_id="vendor3";
        s3.ven_acc="0x902CF045AA3Be561447673AE4D136E5049a262eb";
        arr.push(s1);
        arr.push(s2);
        arr.push(s3);
    }
    function get(string memory ven_id) public view returns (string memory){
        for(uint i=0;i<arr.length;i++)
        {
            if(keccak256(abi.encodePacked((arr[i].ven_id)))==keccak256(abi.encodePacked((ven_id)))){
                return arr[i].ven_acc;
            }
        }
    }
}
