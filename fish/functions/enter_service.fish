function enter_service --description 'Enters a Docker service with name $argv[1]'
    set service $argv[1]
    docker exec -ti $service.1.(docker service ps -f "name=$service.1" $service -q --no-trunc | head -n1) /bin/sh
end
