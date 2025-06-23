'use client'
import { useOptions } from "@/lib/hooks"
import ChoiceComponent from "./ChoiceComponent"
import NumberField from "./NumberField"
import { useState } from "react"
import { genWorkout } from "@/lib/api"

export default function () {
  const options = useOptions()
  const [muscles, setMuscles] = useState(options.muscleGroups)
  const [equipment, setEquipment] = useState(options.equipment)
  const [experience, setExperience] = useState(options.experience)
  const [force, setForce] = useState(options.force)
  const [minBlockSize, setMinBlockSize] = useState(options.minBlockSize)
  const [maxBlockSize, setMaxBlockSize] = useState(options.maxBlockSize)
  const [minDifficulty, setMinDifficulty] = useState(options.minDifficulty)
  const [maxDifficulty, setMaxDifficulty] = useState(options.maxDifficulty)
  const [minViews, setMinViews] = useState(options.minViews)
  const [blocksPerTarget, setBlocksPerTarget] = useState(options.blocksPerTarget)
  const [focus, setFocus] = useState(options.focus)

  async function submit() {
    const workout = await genWorkout({
      muscleGroups: muscles,
      equipment: equipment,
      experience: experience,
      force: force,
      minBlockSize: minBlockSize,
      maxBlockSize: maxBlockSize,
      maxDifficulty: maxDifficulty,
      minDifficulty: minDifficulty,
      minViews: minViews,
      blocksPerTarget: blocksPerTarget,
      focus: focus
    })
    console.log(workout)
  }

  return (
    <div className="p-2">
      <button onClick={submit} className="w-full justify-center py-3 mb-4 bg-orange-500 hover:bg-orange-600 hover:cursor-pointer text-white text-2xl">Generate Workout</button>
      <div className="space-y-4">
        <NumberField name="blocksPerTarget" title="Blocks Per Target" value={blocksPerTarget} setValue={setBlocksPerTarget} />
        <NumberField name="minBlockSize" title="Min Block Size" value={minBlockSize} setValue={setMinBlockSize} />
        <NumberField name="maxBlockSize" title="Max Block Size" value={maxBlockSize} setValue={setMaxBlockSize} />
        <NumberField name="minDifficulty" title="Min Difficulty (1-4)" value={minDifficulty} setValue={setMinDifficulty} />
        <NumberField name="maxDifficulty" title="Max Difficulty (1-4)" value={maxDifficulty} setValue={setMaxDifficulty} />
        <NumberField name="minViews" title="Min Views" value={minViews} setValue={setMinViews} />
      </div>
      <div className="p-4" />
      <button onClick={submit} className="w-full justify-center py-3 mb-4 bg-orange-500 hover:bg-orange-600 hover:cursor-pointer text-white text-2xl">Generate Workout</button>
      <div className="p-4" />
      <ChoiceComponent options={options.muscleGroups} onChange={val => setMuscles(val)} name="Muscles" />
      <div className="p-4" />
      <ChoiceComponent options={options.equipment} onChange={val => setEquipment(val)} initAll={true} name="Equipments" />
      <div className="p-4" />
      <ChoiceComponent options={options.focus} onChange={val => setFocus(val)} initAll={true} name="Focuses" />
      <div className="p-4" />
      <ChoiceComponent options={options.experience} onChange={val => setExperience(val)} initAll={true} name="Experiences" />
      <div className="p-4" />
      <ChoiceComponent options={options.force} onChange={val => setForce(val)} initAll={true} name="Styles" />
    </div>
  )
}
