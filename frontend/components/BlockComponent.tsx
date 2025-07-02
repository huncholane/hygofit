"use client"
import { Block } from "@/lib/models"
import { useState } from "react"

type Props = {
  block: Block
}

export default function BlockComponent({ block }: Props) {
  const [completedSets, setCompletedSets] = useState<boolean[]>(
    new Array(block.sets.length).fill(false)
  )

  const toggleSet = (index: number) => {
    setCompletedSets(prev => {
      const updated = [...prev]
      updated[index] = !updated[index]
      return updated
    })
  }

  return (
    <div className="p-4 my-4 border rounded-xl shadow-md bg-orange-50 border-orange-300">
      <h2 className="text-2xl font-bold text-orange-700">{block.name}</h2>
      <a className="text-orange-600 underline" href={block.url} target="_blank">View Exercise</a>
      <p className="text-sm text-orange-800">Target: {block.target}</p>
      <p className="text-sm text-orange-800">
        Equipment: {block.equipment}{block.equipment === "Bodyweight" ? " (Assisted or to failure is ok)" : ""}
      </p>
      <p className="text-sm text-orange-800">Difficulty: {block.difficulty}</p>
      <p className="text-sm text-orange-800">Views: {block.views.toLocaleString()}</p>

      <div className="mt-4 space-y-2">
        {block.sets.map((set, i) => (
          <button
            key={i}
            onClick={() => toggleSet(i)}
            className={`w-full flex items-center justify-between px-4 py-2 rounded-lg transition hover:cursor-pointer hover:bg-orange-300
              ${completedSets[i] ? "bg-orange-500 text-white" : "bg-white border border-orange-300 text-orange-700"}
            `}
          >
            <span className="font-semibold">Set {i + 1}</span>
            <span className="font-mono">[{set.map(x => x ?? "failure").join(', ')}]</span>
          </button>
        ))}
      </div>
    </div>
  )
}

