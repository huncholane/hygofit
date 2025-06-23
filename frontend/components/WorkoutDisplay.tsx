import BlockComponent from "./BlockComponent"
import { useStorage } from "@/lib/utils"
import { Block, defaultOptions, Options } from "@/lib/models"
import { useRouter } from "next/navigation"
import { genWorkout } from "@/lib/api"

export default function WorkoutPage() {
  const [workout, setWorkout] = useStorage<Block[]>("lastWorkout", [])
  const [options,] = useStorage<Options>("lastOptions", defaultOptions)
  const router = useRouter()

  async function refreshWorkout() {
    const newWorkout = await genWorkout(options)
    if (newWorkout) {
      setWorkout(newWorkout as Block[])
    }
  }

  return (
    <div className="p-4 space-y-4">
      <div className="flex space-x-4">
        <button
          onClick={() => router.push("/")}
          className="px-4 py-2 bg-gray-300 rounded hover:bg-gray-400"
        >
          New Workout
        </button>
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

