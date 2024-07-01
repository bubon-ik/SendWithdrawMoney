// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract SendWithdrawMoney {

    uint public balanceReceived;
    function deposit() public payable {
        balanceReceived += msg.value;
    }
        function getContractBalance() public view returns (uint) {
            return address(this).balance;
        }

        function WithdrawAll () public {
            address payable to = payable (msg.sender);
            to.transfer(getContractBalance());
        }

        function withdrawToAdress (address payable to) public {
            to.transfer(getContractBalance());
        }

}