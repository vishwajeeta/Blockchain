#sending transaction on ethereum
from web3 import Web3
#use genash
#connect to blockchain
ganach_url="http://127.0.0.1:7545"
web3=Web3(Web3.HTTPProvider(ganach_url))
print(web3.isConnected())
print(web3.eth.blockNumber)

account_1="0x03..........."
account_2="0xBB..........."
#account_1 [private key]
private_key="PRIVATE _ KEY" #we can sign transaction with private key

#get the nonce [so blockchain don't send ether twice]
nonce=web3.eth.getTransactionCount(account_1)
#build a transaction
#1.build disnary that contain all transaction information
tx={
    'nonce':nonce,
    'to':account_2,
    'value':web3.toWei(1,'ether'),
    'gas': 2000000,
    'gasPrice':web3.toWei('50','gwei')
}
#sign transaction
signed_tx=web3.eth.account.signTransaction(tx,private_key)
#send transaction
#get transaction hash
tx_hash=web3.eth.sendRawTransaction(signed_tx.rawTransaction)
#print(tx_hash)
print(web3.toHex(tx_hash))
