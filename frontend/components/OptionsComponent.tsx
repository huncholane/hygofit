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
  const [blockspertarget, setBlockspertarget] = useState(options.blockspertarget)
  const [minblocksize, setMinblocksize] = useState(options.minblocksize)

  async function submit() {
    console.log(muscles)
    const workout = await genWorkout({
      muscleGroups: muscles,
      equipment: equipment,
      experience: experience,
      force: force,
      blockspertarget: blockspertarget,
      minblocksize: minblocksize
    })
    console.log(workout)
  }

  return (
    <div className="p-2">
      <button onClick={submit} className="w-full justify-center py-3 mb-4 bg-orange-500 hover:bg-orange-600 hover:cursor-pointer text-white text-2xl">Generate Workout</button>
      <div className="space-y-4">
        <NumberField name="blockspertarget" title="Blocks Per Muscle" value={blockspertarget} setValue={setBlockspertarget} />
        <NumberField name="minblocksize" title="Min Block Size" value={minblocksize} setValue={setMinblocksize} />
      </div>
      <div className="p-4" />
      <ChoiceComponent options={options.muscleGroups} onChange={val => setMuscles(val)} name="Muscles" />
      <div className="p-4" />
      <ChoiceComponent options={options.equipment} onChange={val => setEquipment(val)} initAll={true} name="Equipments" />
      <div className="p-4" />
      <ChoiceComponent options={options.experience} onChange={val => setExperience(val)} initAll={true} name="Experiences" />
      <div className="p-4" />
      <ChoiceComponent options={options.force} onChange={val => setForce(val)} initAll={true} name="Styles" />
    </div>
  )
}
