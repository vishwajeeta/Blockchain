from web3 import Web3
infura_URL="https://mainnet.infura.io/v3.................................8c"
web3=Web3(Web3.HTTPProvider(infura_URL))
web3.isConnected()
web3.eth.blockNumber
balance=web3.eth.getBalance('0x98jduf9 ....public address')
web3.fromWei(balance,'ether')
