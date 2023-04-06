
//SPDX-License-identifier : MIT
pragma solidity ^0.8.0;

contract users{
    struct userdata{
        address add;
        string username;
        string email;
    }
    mapping (address=>userdata)  public addmapuserdata;
    function createuser(address _add,string memory _username, string memory _email )external  returns(string memory){
        userdata memory u1;
        u1.add=_add;
        u1.username=_username;
        u1.email = _email;
        addmapuserdata[_add]=u1;
        return ("address adding sccuess");
    }
    function deleteuser(address _add)public payable{
        delete addmapuserdata[_add];
    }
    function getuser(address _add) public view returns (userdata memory){
        return addmapuserdata[_add];
    }

    
}