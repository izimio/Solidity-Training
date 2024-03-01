# Solidity Exercises

This is a set of exercises accompanies the RareSkills [learn solidity](https://rareskills.io/learn-solidity) tutorial so you can learn Solidity by doing bite-sized exercises. It's intended for experienced programmers who want to get the the point quickly and immediately practice what they learn.

## Installation

Install foundry

```
curl -L https://foundry.paradigm.xyz | bash
```
Complete the exercises in order and test with

```
cd <Problem Name>
forge test -vvv
```

for example, in the Add/ directory, open `src/Add.sol` and change the code so it compiles. The solution is

```solidity
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
```

Save your changes, then, in the same directory, test it with

```
forge test -vvv
```

--------------------------------------------

# Completed Exercises



| Exercise             | Status |
|----------------------|--------|
| AccessModifiers      | ✅     |
| Add                  | ✅     |
| BasicBank            | ✅     |
| BasicBankV2          | ✅     |
| BasicStorage         | ✅     |
| BlockNumber          | ✅     |
| CodeSize             | ✅     |
| CrossContract        | ✅     |
| Decoder              | ✅     |
| DeployContract       | ✅     |
| Deployer             | ✅     |
| Distribute           | ✅     |
| DistributeV2         | ✅     |
| Divide               | ✅     |
| Donations            | ✅     |
| Emitter              | ❌     |
| Encoder              | ❌     |
| Enum                 | ❌     |
| EverythingWorks      | ❌     |
| Exponent             | ❌     |
| FilterOddNumbers     | ❌     |
| FizzBuzz             | ❌     |
| Fibonacci            | ❌     |
| IfStatement          | ❌     |
| IdiotBetting         | ❌     |
| Immutable            | ❌     |
| InheritanceOverride  | ❌     |
| InsertInArray        | ❌     |
| IsPrime              | ❌     |
| IsSorted             | ❌     |
| Keccak               | ❌     |
| ListOfNumbers        | ❌     |
| Mean                 | ❌     |
| MultiInheritance     | ❌     |
| NestedArray          | ❌     |
| NestedMapping        | ❌     |
| NotEnough            | ❌     |
| OneWeekLockup        | ❌     |
| OriginVsSender       | ❌     |
| Owner                | ❌     |
| PriceIsRight         | ❌     |
| PublicFunction       | ❌     |
| PublicVariable       | ❌     |
| PureVsView           | ❌     |
| Receive              | ❌     |
| ReducingPayout       | ❌     |
| SelfDestroyer        | ❌     |
| SpecialNumbers       | ❌     |
| Stack                | ❌     |
| StudentDB            | ❌     |
| SumArray             | ❌     |
| Super                | ❌     |
| TicTacToe            | ❌     |
| TimelockEscrow       | ❌     |
| TripleNestedMapping  | ❌     |
| Tupledore            | ❌     |
| Typecast             | ❌     |
| Unchecked            | ❌     |
| Withdraw             | ❌     |
| WhoCalledMe          | ✅     |