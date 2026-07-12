
#!/bin/bash

echo "=================================="
echo " Linux Service Monitoring Tool "
echo "=================================="

# Ask user for service name
read -p "Enter Service Name: " service

# Check service status
if systemctl is-active --quiet $service
then
    echo ""
    echo "Service Name : $service"
    echo "Status       : Running"
else
    echo ""
    echo "Service Name : $service"
    echo "Status       : Not Running"
fi

