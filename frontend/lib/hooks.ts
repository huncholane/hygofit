import { useEffect, useState } from "react";
import { getOptions } from "./api";
import { Options } from "./models";

const defaultOptions: Options = {
  muscleGroups: [],
  equipment: [],
  experience: [],
  force: [],
  blockspertarget: 4,
  minblocksize: 4,
  minviews: 100000
}

export function useOptions() {
  const [options, setOptions] = useState<Options>(defaultOptions);
  useEffect(() => {
    getOptions().then((o) => {
      if (o) {
        setOptions(o)
      }
    })
  }, [])
  return options
}
