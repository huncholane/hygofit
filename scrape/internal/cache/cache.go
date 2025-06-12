package cache

import (
	"os"
	"path/filepath"
)

func GetCacheFile(filename string) (string, error) {
	home, err := os.UserHomeDir()
	if err != nil {
		return "", err
	}

	cacheDir := filepath.Join(home, ".cache", "hygofit", "scrape")
	if err := os.MkdirAll(cacheDir, 0755); err != nil {
		return "", err
	}
	return filepath.Join(cacheDir, filename), nil
}

func WriteCacheFile(filename string, data []byte) (string, error) {
	path, err := GetCacheFile(filename)
	if err != nil {
		return path, err
	}
	return path, os.WriteFile(path, data, 0644)
}

func ReadCacheFile(filename string) ([]byte, error) {
	path, err := GetCacheFile(filename)
	if err != nil {
		return []byte{}, err
	}
	return os.ReadFile(path)
}
