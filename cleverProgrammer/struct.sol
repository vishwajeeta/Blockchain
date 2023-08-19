// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract structure{
    struct person{
        string name;
        uint value;
        bool human;
    }
    //<datatype><variable_name>=<instance>
    person myperson=person("vishwa",10,true);
}