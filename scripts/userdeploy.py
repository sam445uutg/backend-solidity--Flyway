from brownie import network , users ,accounts
from scripts.help_scripts import get_acc

#create contract deploy
def deploy_contract():
    acc = get_acc()
    user_contract= users.deploy({"from":acc})

# create user data info
def create_user():
    acc = get_acc()
    user_contract= users[-1]
    user_contract.createuser("0x0EbF54effDD31F6803444894cc1d06fD83236817","ufvbg","dftyuh",{"from":acc})
   

#display user
def view_user():
    acc= get_acc()
    user_contract = users[-1]
    print(user_contract.getuser("0x0EbF54effDD31F6803444894cc1d06fD83236817"))

# delete particular user data from userdata 
def delete_user():
    acc = get_acc()
    user_contract = users[-1]
    userdel=user_contract.deleteuser("0x0EbF54effDD31F6803444894cc1d06fD83236817",{"from":acc})
    userdel.wait(1)


# main function def run

def main():
    deploy_contract()
    create_user()
    view_user()
    delete_user()
