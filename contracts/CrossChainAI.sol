pragma solidity ^0.8.0;

interface IBridge {
    function sendTask(bytes memory data, address targetChain) external returns (bool);
}

contract CrossChainAI {
    IBridge bridge;
    
    constructor(address bridgeAddress) {
        bridge = IBridge(bridgeAddress);
    }
    
    function executeAITask(bytes memory data, address targetChain) public {
        require(bridge.sendTask(data, targetChain), "Cross-chain execution failed");
    }
}