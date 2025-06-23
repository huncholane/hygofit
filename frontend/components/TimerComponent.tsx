import { useEffect, useState } from "react"

export default function TimerComponent({ seconds }: { seconds: number }) {
  const [timeLeft, setTimeLeft] = useState(seconds)

  useEffect(() => {
    setTimeLeft(seconds)
    const interval = setInterval(() => {
      setTimeLeft((prev) => {
        if (prev <= 1) {
          clearInterval(interval)
          return 0
        }
        return prev - 1
      })
    }, 1000)

    return () => clearInterval(interval)
  }, [seconds])

  return <span className="text-red-500 font-bold">Timer: {timeLeft}s</span>
}
