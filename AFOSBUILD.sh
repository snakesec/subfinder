cd v2/cmd/subfinder

go build

if [ $? -eq 0 ];
then
    echo "Go build... PASS"
else
    exit 1
fi

strip subfinder

if [ $? -eq 0 ];
then
    echo "Strip file... PASS"
else
    exit 1
fi

cp -Rf subfinder /opt/ANDRAX/bin

if [ $? -eq 0 ];
then
    echo "Copy package... PASS"
else
    exit 1
fi
