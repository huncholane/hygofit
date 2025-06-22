import { useEffect, useState } from "react";
import { getOptions } from "./api";
import { Options } from "./models";

const defaultOptions: Options = {
  muscleGroups: [],
  equipment: [],
  experience: [],
  force: [],
  blockspertarget: 4,
  minblocksize: 4
}

export function useOptions() {
  const [options, setOptions] = useState<Options>(defaultOptions);
  useEffect(() => {
    getOptions().then((o) => {
      console.log(o)
      setOptions(o?.data || {})
    })
  }, [])
  return options
}
