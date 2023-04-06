from http.client import LineTooLong
from brownie import accounts,config, network

LOCAL_NETWORK=['development','ganache-locall','ganach']

def get_acc(index=None,id=None ):
    if index:
        return accounts[index]
    if id :
        return accounts.load(id)
    if network.show_active() in LOCAL_NETWORK:
        return accounts[0]