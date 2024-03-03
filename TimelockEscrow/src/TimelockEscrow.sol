// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TimelockEscrow {
    address public seller;

    /**
     * The goal of this exercise is to create a Time lock escrow.
     * A buyer deposits ether into a contract, and the seller cannot withdraw it until 3 days passes. Before that, the buyer can take it back
     * Assume the owner is the seller
     */
    struct BuyOrder {
        uint256 dueDate;
        uint256 amount;

    }

    mapping(address => BuyOrder) orders;
    
    constructor() {
        seller = msg.sender;
    }

    // creates a buy order between msg.sender and seller
    /**
     * escrows msg.value for 3 days which buyer can withdraw at anytime before 3 days but afterwhich only seller can withdraw
     * should revert if an active escrow still exist or last escrow hasn't been withdrawn
     */
    function createBuyOrder() external payable {
        require(orders[msg.sender].dueDate == 0, "You already have a pending order");
        orders[msg.sender] = BuyOrder(block.timestamp + 3 days, msg.value);
    }

    /**
     * allows seller to withdraw after 3 days of the escrow with @param buyer has passed
     */
    function sellerWithdraw(address buyer) external {
        require(block.timestamp >= orders[buyer].dueDate, "Too early");
        payable(msg.sender).transfer(orders[buyer].amount);

        orders[buyer].dueDate = 0;
        orders[buyer].amount = 0;
    }

    /**
     * allowa buyer to withdraw at anytime before the end of the escrow (3 days)
     */
    function buyerWithdraw() external {
        require(orders[msg.sender].dueDate != 0, "You not have a pending order");
        require(orders[msg.sender].dueDate > block.timestamp, "Too Late :(");

        payable(msg.sender).transfer(orders[msg.sender].amount);

        orders[msg.sender].dueDate = 0;
        orders[msg.sender].amount = 0;
    }

    // returns the escrowed amount of @param buyer
    function buyerDeposit(address buyer) external view returns (uint256) {
        require(orders[buyer].dueDate != 0, "You not have a pending order");

        return orders[buyer].amount;
    }
}
