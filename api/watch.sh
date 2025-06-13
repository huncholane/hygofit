port="${PORT:-8080}"
stop() {
	kill -9 $(lsof -t -i ":$port")
}
start() {
	go run main.go &
}

start
fswatch -o . | while read; do
	clear
	echo "🔁 Changes detected. Restarting..."
	stop
	start
done
