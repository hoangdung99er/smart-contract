// SPDX-License-Identifier: UNLICENSED
// Solidity is fairly language use for Ethereum BlockChain and it combination few languages
pragma solidity ^0.8.0;

// serve purpose 
contract Transactions {
    // hold number of transactions
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct{
        // type and name of the property
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
