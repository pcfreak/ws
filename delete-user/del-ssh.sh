#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="akuhaa021"

read -p "Username SSH to Delete : " Pengguna

if getent passwd $Pengguna > /dev/null 2>&1; then
        userdel $Pengguna
        echo -e "User $Pengguna was removed."
else
        echo -e "Failure: User $Pengguna Not Exist."
fi
