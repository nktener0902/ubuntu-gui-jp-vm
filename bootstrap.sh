#/bin/bash -eux

if type ansible-galaxy > /dev/null 2>&1
then
    ansible-galaxy install gantsign.keyboard
else
    echo "Not found ansible-galaxy command..."
    exit 1
fi

if type vagrant > /dev/null 2>&1
then
    vagrant up
else
    echo "Not found vagrant command..."
    exit 1
fi
