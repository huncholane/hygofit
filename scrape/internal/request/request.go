package request

import (
	"fmt"
	"io"
	"net/http"
	"time"

	"github.com/huncholane/hygofit-scrape/internal/settings"
)

func Request(endpoint string) ([]byte, error) {
	client := &http.Client{
		Timeout: 15 * time.Second,
	}
	url := settings.RootUrl + endpoint

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}

	req.Header.Set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36")
	req.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8")
	req.Header.Set("Accept-Language", "en-US,en;q=0.9")
	req.Header.Set("Connection", "keep-alive")
	req.Header.Set("Upgrade-Insecure-Requests", "1")

	resp, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, err
	}

	if resp.StatusCode != 200 {
		return nil, fmt.Errorf("unexpected status: %s", resp.Status)
	}

	return body, nil
}

func RequestAsync(endpoint string, callback func([]byte, error)) {
	go func() {
		body, err := Request(endpoint)
		callback(body, err)
	}()
}
