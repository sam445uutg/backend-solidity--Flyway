//SPDX-License-identifier : MIT
pragma solidity ^0.8.0;

contract history{
    struct   ticketinfo{
        string  source;string destination;
        int32  day;int32 month; int32 year;
        int64  amt ;
    }
    ticketinfo[] public tickets;
    
     mapping (address=> ticketinfo[])  mapuserwithhistory;
    function addhistory(string memory _source, string memory _destination, int32 _day, int32 _month, int32 _year, int64 _amt, address useraddress ) public {
        ticketinfo memory t1  ;
        t1.source= _source;
        t1.destination= _destination;
        t1.day= _day;
        t1.month= _month;
        t1.year = _year;
        t1.amt = _amt;
        tickets.push(t1);
        mapuserwithhistory[useraddress].push(t1);
    }
    function gethistory(address useraddress) public view returns (ticketinfo[] memory)  {
         return mapuserwithhistory[useraddress];
    }
    function delhistorg(address useraddress) public  payable returns (string memory){
        delete mapuserwithhistory[useraddress];
        return ("delete");

    }
     


    
}
