import BlockComponent from "./BlockComponent"
import { useStorage } from "@/lib/utils"
import { Block, defaultOptions, Options } from "@/lib/models"
import { genWorkout } from "@/lib/api"
import Link from "next/link"

export default function WorkoutPage() {
  const [workout, setWorkout] = useStorage<Block[]>("lastWorkout", [])
  const [options,] = useStorage<Options>("lastOptions", defaultOptions)

  async function refreshWorkout() {
    const newWorkout = await genWorkout(options)
    if (newWorkout) {
      setWorkout(newWorkout as Block[])
    }
  }

  return (
    <div className="p-4 space-y-4">
      <div className="flex space-x-4">
        <Link href="/">
          <a className="px-4 py-2 bg-gray-300 rounded hover:bg-gray-400">
            New Workout
          </a>
        </Link>
        <button
          onClick={refreshWorkout}
          className="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600"
        >
          Refresh Workout
        </button>
      </div>
      <div className="space-y-4">
        {workout.map((block, i) => (
          <BlockComponent key={i} block={block} />
        ))}
      </div>
    </div>
  )
}

