package main

import (
	"fmt"
	"io"
	"net/http"
	"regexp"
	"time"
)

type Muscle struct {
	Name string
	Url  string
}

func main() {
	rootUrl := "https://www.muscleandstrength.com"
	client := &http.Client{
		Timeout: 15 * time.Second,
	}
	url := rootUrl + "/exercises"

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		panic(err)
	}

	// Copy headers from working Python request
	req.Header.Set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36")
	req.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8")
	req.Header.Set("Accept-Language", "en-US,en;q=0.9")
	req.Header.Set("Connection", "keep-alive")
	req.Header.Set("Upgrade-Insecure-Requests", "1")

	resp, err := client.Do(req)
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		panic(err)
	}

	// Check response for challenge text
	if resp.StatusCode != 200 {
		fmt.Printf("Blocked or redirected: %s\n", resp.Status)
		return
	}

	// Try to extract exercise category names
	re := regexp.MustCompile(`(?s)<a href="([^"]+)".*?<div class="category-name">([^<]+)</div>`)
	matches := re.FindAllStringSubmatch(string(body), -1)

	if len(matches) == 0 {
		fmt.Println("No matches — likely still blocked or incorrect pattern.")
	}

	for _, match := range matches {
		fmt.Printf("('%s','%s'),\n", rootUrl+match[1], match[2])
	}
}
