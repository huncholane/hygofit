import { Dispatch, SetStateAction } from "react"

type Props = {
  name: string
  title: string
  value: number
  setValue: Dispatch<SetStateAction<number>>
  placeholder?: string
}
export default function (props: Props) {
  return (
    <div>
      <label htmlFor={props.name} className="block mb-1 font-medium">
        {props.title}
      </label>
      <input
        id={props.name}
        name={props.name}
        type="number"
        className="w-full rounded border px-3 py-2"
        placeholder={props.placeholder || props.title}
        value={props.value}
        onChange={e => props.setValue(parseInt(e.target.value))}
      />
    </div>
  )
}
