fix_permission(){
    sudo chmod a+x /home
    sudo chmod a+x /home/$USER
    chmod a+x /home/$USER/Documents
}

copy_files(){
    sudo cp etc/nginx/nginx.conf /etc/nginx/
    cp -r mysite ~/Documents/
}

start(){
    sudo systemctl reload nginx.service
    sudo systemctl restart nginx.service
}

open(){
    xdg-open http://localhost:8080
}

debug(){
    cat /var/log/nginx/error.log
}

main(){
    fix_permission
    copy_files
    start
    open
}
