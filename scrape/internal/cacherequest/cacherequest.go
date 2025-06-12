package cacherequest

import (
	"strings"

	"github.com/huncholane/hygofit-scrape/internal/cache"
	"github.com/huncholane/hygofit-scrape/internal/request"
)

func CacheGetRequest(endpoint string) ([]byte, error) {
	filename := strings.ReplaceAll(endpoint, "/", "_")
	content, err := cache.ReadCacheFile(filename)
	if err != nil {
		content, err = request.Request(endpoint)
		if err != nil {
			return []byte{}, err
		}
		cache.WriteCacheFile(filename, content)
	}
	return content, nil
}

func AsyncCacheGetRequest(endpoint string, callback func([]byte, error)) {
	go func() {
		body, err := CacheGetRequest(endpoint)
		callback(body, err)
	}()
}
