'use client'
import { useOptions } from "@/lib/hooks"
import ChoiceComponent from "./ChoiceComponent"

export default function () {
  const options = useOptions()

  return (
    <div className="p-2">
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
