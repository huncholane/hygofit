import { useEffect, useState } from "react";
import { getOptions } from "./api";
import { defaultOptions, Options } from "./models";


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
