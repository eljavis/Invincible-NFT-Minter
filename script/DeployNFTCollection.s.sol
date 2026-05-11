// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.34;

import {Script} from "forge-std/Script.sol";
import {HeroNFTCollection} from "../src/HeroNFTCollection.sol";

contract DeployNFTCollection is Script {

    function run() external returns(HeroNFTCollection) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);


        string memory name_ = "My Favorite Invincible Heroes NFT";
        string memory symbol_ = "MFIHNFT";
        uint256 totalSupply_ = 5;
        uint256 mintPrice_ = 1 ether;
        string memory baseUri_ = "ipfs://bafybeigm4h4qlrrmc57depl34gogcy5t3qfr5b4eh4a3vb27lk53xdlszm/";
        HeroNFTCollection nftCollection = new HeroNFTCollection(name_, symbol_, totalSupply_, mintPrice_, baseUri_);
        
        vm.stopBroadcast();
        
        return nftCollection;
    }

    

}