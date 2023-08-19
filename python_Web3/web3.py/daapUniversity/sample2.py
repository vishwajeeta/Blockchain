#read smart contract information
from web3 import Web3
import json
infura_URL="https://mainnet.sldk"
web3=Web3(Web3.HTTPProvider(infura_URL))
#json array that describe with the smart contract
abi=json.load('[{"contract":}]')
#address that deployed smart contract on the blockchain
address=''
#reconstruct our contract
contract=web3.eth.contract(address=address,abi=abi)
totalSupply=contract.functions.totalSupply().call()
#balance
web3.fromWei(totalSupply,'ether')

#calling functions
#token name
print(contract.functions.name().call())
#print symobl
print(contract.functions.symobl().call())
balance=contract.functions.balanceOf('0x2345jk67').call()
web3.fromWei(balance,'ether')