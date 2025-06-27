port="${PORT:-8080}"
stop() {
	kill -9 $(lsof -t -i ":$port")
}
wait_for_port_free() {
	while lsof -t -i ":$port" >/dev/null; do
		sleep 0.1
	done
}
start() {
	go run cmd/server/server.go &
}
restart() {
	stop
	wait_for_port_free
	start
}

restart
while true; do
	inotifywait -e modify,create,delete,move -r .
	clear
	echo "🔁 Change detected. Restarting..."
	restart
done
