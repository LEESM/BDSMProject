// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract BdsmStats is ERC1155 {
    uint public constant OUT_COUNT = 0;
    uint public constant B_OF_BD = 1;
    uint public constant D_OF_BD = 2;
    uint public constant D_OF_DS = 3;
    uint public constant S_OF_DS = 4;
    uint public constant S_OF_SM = 5;
    uint public constant M_OF_SM = 6;
    string public constant Bio = "";
    string public constant Profile = "";

    constructor(uint memory B_OF_BD_, uint memory D_OF_BD_,uint memory D_OF_DS_,uint memory S_OF_DS_,uint memory S_OF_SM_,uint memory M_OF_SM_) public ERC1155 {
        _mint(msg.sender, OUT_COUNT, 0, "");
        _mint(msg.sender, B_OF_BD, B_OF_BD_, "");
        _mint(msg.sender, D_OF_BD, D_OF_BD, "");
        _mint(msg.sender, D_OF_DS, D_OF_DS_, "");
        _mint(msg.sender, S_OF_DS, S_OF_DS_, "");
        _mint(msg.sender, S_OF_SM, S_OF_SM_, "");
        _mint(msg.sender, M_OF_SM, M_OF_SM_, "");
    }

    function _sortingSexualPreference() public {
        uint sp = 1;
        if (balanceOf(address, 2)>balanceOf(address, 1)){
            sp = 2;
        } else if (balanceOf(address, 3)>balanceOf(address, 2)){
            sp = 3;
        } else if (balanceOf(address, 4)>balanceOf(address, 3)){
            sp = 4;
        } else if (balanceOf(address, 5)>balanceOf(address, 4)){
            sp = 5;
        } else if (balanceOf(address, 6)>balanceOf(address, 5)){
            sp = 6;
        }
        return sp;
    }

    struct Matching{
        user1
        user2

    }
}

