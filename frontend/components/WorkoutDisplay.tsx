import { useEffect, useState } from "react"
import BlockComponent from "./BlockComponent"

export default function () {
  const [workout, setWorkout] = useState<any[]>([])

  useEffect(() => {
    const saved = localStorage.getItem('lastWorkout')
    if (saved) setWorkout(JSON.parse(saved))
  }, [])

  return (
    <div>
      {workout.map((block, i) => (
        <BlockComponent key={i} block={block} />
      ))}
    </div>
  )
}
