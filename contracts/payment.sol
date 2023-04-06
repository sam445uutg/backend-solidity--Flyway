//SPDX-License-identifier  : MIT

pragma solidity ^0.8.0;
contract payment {
    address [] public customser;
    bytes32 [] public payementIDs;
    bytes32 public keypayemnt;

    mapping (address =>bytes32) keypayemntaddress;
    function getPayement_id (string memory name, string memory destination, uint32 day, uint32 month, uint32 year, uint256 amt,address walletaddress) external  {
        bytes32  Idencrpyt = keccak256(abi.encodePacked(name,destination, day, month, year,amt,walletaddress));
        payementIDs.push(Idencrpyt);
        keypayemnt= Idencrpyt;
        keypayemntaddress[walletaddress]= keypayemnt;
        customser.push(walletaddress);
        
    }
    function veiw_all_tranction(address _adds) public view returns(bytes32){
        return keypayemntaddress[_adds]; 
    }
    


}

