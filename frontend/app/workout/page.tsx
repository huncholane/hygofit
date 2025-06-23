
'use client'

import { useEffect, useState } from 'react'

function Timer({ seconds }: { seconds: number }) {
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

export default function WorkoutDisplay() {
  const [workout, setWorkout] = useState<any[]>([])

  useEffect(() => {
    const saved = localStorage.getItem('lastWorkout')
    if (saved) setWorkout(JSON.parse(saved))
  }, [])

  return (
    <div className="p-4 space-y-6">
      {workout.map((block, i) => (
        <div key={i} className="p-4 border rounded-lg shadow">
          <h2 className="text-xl font-bold">{block.name}</h2>
          <a className="text-blue-600 underline" href={block.url} target="_blank">View Exercise</a>
          <p>Target: {block.target}</p>
          <p>Equipment: {block.equipment}</p>
          <p>Difficulty: {block.difficulty}</p>

          <div className="mt-2 space-y-1">
            {block.sets.map((set: number[], si: number) => (
              <div key={si} className="flex items-center gap-2">
                <span className="font-mono">Set {si + 1}:</span>
                <span>[{set.filter(x => x != null).join(', ')}]</span>
                {block.timed && set[0] && <Timer seconds={set[0]} />}
              </div>
            ))}
          </div>
        </div>
      ))}
    </div>
  )
}
