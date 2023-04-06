pragma solidity ^0.8.0;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;
   // uint256 USD_amt= 5*(10**18);
    
    constructor() {
        priceFeed = AggregatorV3Interface(
            0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
        );
    }

    
    function getLatestPrice(uint256 USD) public view returns (uint256) {
        uint256 USD_amt = USD*(10**18);
       
        (,int price,,,) = priceFeed.latestRoundData();
        uint256 adjuest_price = uint256(price)* 10**10;
        uint256 cost_to_enter =((USD_amt*10**18) / adjuest_price);
        return cost_to_enter;
    }
}
