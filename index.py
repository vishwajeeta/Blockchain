from web3 import Web3#importing web3
infura_url="https://mainnet.infura.io/v3/24f22edb93064ddba91764383908095a" #web site api address
#creating web3 connection
web3=Web3(Web3.HTTPProvider(infura_url))
print(web3.isConnected()) # true or false (internet)
print(web3.eth.blockNumber) #to check block number
print(web3.eth.getBalance("0x264BFac925e7Ea3B0404D92B66CD582C7c69f815")) #your private address
