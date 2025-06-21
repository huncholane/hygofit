type Props = {
  name: string
  title: string
}
export default function ({ name, title }: Props) {
  return (
    <div>
      <label htmlFor={name} className="block mb-1 font-medium">
        {title}
      </label>
      <input
        id={name}
        name={name}
        type="number"
        className="w-full rounded border px-3 py-2"
      />
    </div>
  )
}
