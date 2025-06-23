import { Block } from "@/lib/models";
import TimerComponent from "./TimerComponent";

type Props = {
  block: Block
}

export default function BlockComponent({ block }: Props) {
  return (
    <div className="p-4 my-2 border rounded-lg shadow">
      <h2 className="text-xl font-bold">{block.name}</h2>
      <a className="text-blue-600 underline" href={block.url} target="_blank">View Exercise</a>
      <p>Target: {block.target}</p>
      <p>Equipment: {block.equipment}</p>
      <p>Difficulty: {block.difficulty}</p>

      <div className="mt-2 space-y-1">
        {block.sets.map((set: number[], si: number) => (
          <div key={si} className="flex items-center gap-2">
            <span className="font-mono">Set {si + 1}:</span>
            <span>[{set.filter(x => x != null).join(', ')}]</span>
            {block.timed && set[0] && <TimerComponent seconds={set[0]} />}
          </div>
        ))}
      </div>
    </div>
  )
}
