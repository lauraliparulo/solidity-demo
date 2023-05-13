// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;
contract CountLetters {

uint256 public count;
string public letter_to_search;

constructor(string memory letter) {
 letter_to_search = letter;
}

    function countLetters(string memory submittedText) public returns(uint256) {

        bytes32 string_rep = bytes32(abi.encodePacked(submittedText));

        bytes32 i_letter_Byte = bytes32(abi.encodePacked(letter_to_search));
    
       for (uint i = 0;  i < string_rep.length ; i++) {

            if (string_rep[i] == i_letter_Byte[0]) {
                count++;
            }
        }


        return count;

    }

    function getCount() view public returns(uint256) {
        return count;
    }

    function setLetterToSearch(string memory letter) public {
        letter_to_search = letter;
    }

}