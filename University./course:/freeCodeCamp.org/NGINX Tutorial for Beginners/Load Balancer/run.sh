source fn/var.sh
source fn/stop.sh

start(){
    port=${num}${num}${num}${num}
    docker run --rm --name ${name}${num} -p $port:7777 -d myserver
}

instance(){
    stop
    start
}

main(){
    num=1 ; instance
    num=2 ; instance
    num=3 ; instance
    num=4 ; instance
}

main