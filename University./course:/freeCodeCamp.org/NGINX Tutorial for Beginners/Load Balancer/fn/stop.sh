source fn/var.sh

stop(){
    docker stop ${name}${num}
}

list(){
    docker ps --all
}