import { Dispatch, SetStateAction, useEffect, useState } from "react"

export function useStorage<T>(
  item: string,
  default_val: T
): [T, Dispatch<SetStateAction<T>>] {
  const [val, setVal] = useState<T>(default_val)

  useEffect(() => {
    const stored = localStorage.getItem(item)
    if (stored) {
      try {
        setVal(JSON.parse(stored))
      } catch { }
    }
  }, [item])

  const setStorage: Dispatch<SetStateAction<T>> = (newVal) => {
    setVal((prev) => {
      const resolved = typeof newVal === "function"
        ? (newVal as (prevState: T) => T)(prev)
        : newVal
      localStorage.setItem(item, JSON.stringify(resolved))
      return resolved
    })
  }

  return [val, setStorage]
}

