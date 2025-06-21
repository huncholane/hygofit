'use client'
import { useOptions } from "@/lib/hooks"
import ChoiceComponent from "./ChoiceComponent"
import NumberField from "./NumberField"

export default function () {
  const options = useOptions()

  return (
    <div className="p-2">
      <button className="w-full justify-center py-3 mb-4 bg-orange-500 hover:bg-orange-600 hover:cursor-pointer text-white text-2xl">Generate Workout</button>
      <div className="space-y-4">
        <NumberField name="blockspertarget" title="Blocks Per Muscle" />
        <NumberField name="minblocksize" title="Min Block Size" />
      </div>
      <div className="p-4" />
      <ChoiceComponent options={options.muscleGroups} name="Muscles" />
      <div className="p-4" />
      <ChoiceComponent options={options.equipment} initAll={true} name="Equipments" />
      <div className="p-4" />
      <ChoiceComponent options={options.experience} initAll={true} name="Experiences" />
      <div className="p-4" />
      <ChoiceComponent options={options.force} initAll={true} name="Styles" />
    </div>
  )
}
