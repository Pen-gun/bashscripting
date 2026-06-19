#! /usr/bin/bash

select cars in "BMW" "Mercedes" "Audi" "Toyota"

do
    case $cars in
        "BMW")
            echo "You selected BMW"
            ;;
        "Mercedes")
            echo "You selected Mercedes"
            ;;
        "Audi")
            echo "You selected Audi"
            ;;
        "Toyota")
            echo "You selected Toyota"
            ;;
        *)
            echo "Invalid selection"
            ;;
    esac    
done