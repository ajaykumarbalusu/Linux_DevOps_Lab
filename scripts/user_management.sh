#!/bin/bash

# ==========================================
# Script Name : user-management.sh
# Author      : Ajay Kumar Balusu
# Description : User Management Automation
# ==========================================

LOG_FILE="../logs/user-management.log"

# Function to write logs
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" >> "$LOG_FILE"
}

# Function to add user
add_user() {

    read -p "Enter Username: " username

    if id "$username" &>/dev/null
    then
        echo "User already exists."
        log_message "FAILED - User $username already exists."
    else
        sudo useradd "$username"

        if [ $? -eq 0 ]
        then
            echo "User created successfully."
            log_message "SUCCESS - User $username created."
        else
            echo "Failed to create user."
            log_message "FAILED - Unable to create $username."
        fi
    fi
}

# Function to delete user
delete_user() {

    read -p "Enter Username: " username

    if id "$username" &>/dev/null
    then
        sudo userdel -r "$username"

        if [ $? -eq 0 ]
        then
            echo "User deleted successfully."
            log_message "SUCCESS - User $username deleted."
        else
            echo "Failed to delete user."
            log_message "FAILED - Unable to delete $username."
        fi
    else
        echo "User does not exist."
        log_message "FAILED - User $username not found."
    fi
}

# Function to lock user
lock_user() {

    read -p "Enter Username: " username

    sudo passwd -l "$username"

    if [ $? -eq 0 ]
    then
        echo "User locked."
        log_message "SUCCESS - User $username locked."
    else
        echo "Unable to lock user."
        log_message "FAILED - Unable to lock $username."
    fi
}

# Function to unlock user
unlock_user() {

    read -p "Enter Username: " username

    sudo passwd -u "$username"

    if [ $? -eq 0 ]
    then
        echo "User unlocked."
        log_message "SUCCESS - User $username unlocked."
    else
        echo "Unable to unlock user."
        log_message "FAILED - Unable to unlock $username."
    fi
}

# Function to check user
check_user() {

    read -p "Enter Username: " username

    if id "$username" &>/dev/null
    then
        echo "User exists."
    else
        echo "User does not exist."
    fi
}

# Main Menu
while true
do
    echo "================================="
    echo " Linux User Management Tool"
    echo "================================="
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Lock User"
    echo "4. Unlock User"
    echo "5. Check User"
    echo "6. Exit"
    echo "================================="

    read -p "Enter Choice: " choice

    case $choice in

        1)
            add_user
            ;;

        2)
            delete_user
            ;;

        3)
            lock_user
            ;;

        4)
            unlock_user
            ;;

        5)
            check_user
            ;;

        6)
            echo "Exiting..."
            exit 0
            ;;

        *)
            echo "Invalid Choice."
            ;;

    esac

    echo
done
