// SPDX-License-Identifier: GPL-3.0
        
pragma solidity >=0.4.22 <0.9.0;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

// This import is required to use custom transaction context
// Although it may fail compilation in 'Solidity Compiler' plugin
// But it will work fine in 'Solidity Unit Testing' plugin
import "remix_accounts.sol";
import "../contracts/CountLetters.sol";
// <import file to test>

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract testSuite {


    CountLetters count;
    /// 'beforeAll' runs before all other tests
    /// More special functions are: 'beforeEach', 'beforeAll', 'afterEach' & 'afterAll'
    function beforeAll() public {
        // <instantiate contract>
        count = new CountLetters("i");
    }

    function checkSuccess() public {
        // Use 'Assert' methods: https://remix-ide.readthedocs.io/en/latest/assert_library.html
        Assert.ok(count.countLetters("chek chits string") == 2, "should be true");
    }
    
    function checkFailure() public {
        Assert.ok(count.countLetters("chek chits string") != 3, "should be true");
    }

}