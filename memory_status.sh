check_disk_space() {
     used_space=$(df / -h | awk 'NR==2 {print $5}' | tr -d '%')  # Get the used disk space percentage

    if [[ used_space -gt 90 ]]; 
then  
        echo "Warning: Disk space is running low at ${used_space}% on /."
    else
        echo "Sufficient disk space available: ${used_space}% on /."
    fi
}


 

check_disk_space
                                
