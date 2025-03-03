pragma solidity ^0.8.0;

contract AITaskSubmission {
    struct Task {
        uint taskId;
        address requester;
        uint reward;
        string dataHash;
        bool completed;
    }
    
    mapping(uint => Task) public tasks;
    uint public taskCounter;
    
    function submitTask(string memory dataHash, uint reward) public returns (uint) {
        taskCounter++;
        tasks[taskCounter] = Task(taskCounter, msg.sender, reward, dataHash, false);
        return taskCounter;
    }
}