# Istanbul fault tolerance and recoverability

 Tags: basic-istanbul

[Istanbul consensus](https://github.com/ethereum/EIPs/issues/650) can tolerate at most of F faulty nodes in a N validator nodes network, where N = 3F + 1.

This test is to validate the above feature. Assume that our network has 7 nodes which are all validators.

## Modify number of validators from less than 2F + 1 to more than 2F + 1

* The consensus should work at the beginning
* Among "7" validators, stop "3" validators so there are less than 2F + 1 validators in the network
* The consensus should stop
* Resume the stopped validators
* The consensus should work after resuming