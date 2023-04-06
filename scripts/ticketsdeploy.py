from brownie import history, network , accounts
from scripts.help_scripts import get_acc

#deploy contract
def deploy_contract():
    acc = get_acc()
    tick_contract = history.deploy({"from":acc})
    
## geta all history trips 
def gethist():
    acc= get_acc()
    tick_contract= history[-1]
    print(tick_contract.gethistory("0x0EbF54effDD31F6803444894cc1d06fD83236817")) 

## delete all user data
def delhist():
    acc = get_acc()
    tick_contract= history[-1]
    deluser=tick_contract.delhistorg("0x0EbF54effDD31F6803444894cc1d06fD83236817",{"from":acc})
    deluser.wait(1)




def add_hist():
    acc= get_acc()
    tick_contract = history[-1]
    addtrip = tick_contract.addhistory("wefr","wqefr",11,3,2022,4500,"0x0EbF54effDD31F6803444894cc1d06fD83236817",{"from":acc})
    addtrip.wait(1)

def main():
    deploy_contract()
    add_hist()
    gethist()
    delhist()