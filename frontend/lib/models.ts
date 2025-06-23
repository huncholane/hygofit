export type Options = {
  muscleGroups: string[]
  equipment: string[]
  experience: string[]
  force: string[]
  minBlockSize: number
  maxBlockSize: number
  minDifficulty: number
  maxDifficulty: number
  minViews: number
  blocksPerTarget: number
  focus: string[]
}

export const defaultOptions: Options = {
  muscleGroups: [],
  equipment: [],
  experience: [],
  force: [],
  minBlockSize: 0,
  maxBlockSize: 10,
  minDifficulty: 2,
  maxDifficulty: 3,
  minViews: 100000,
  blocksPerTarget: 4,
  focus: []
}

export type Exercise = {
  equipment: string
  experience: string
  focus: string
  id: number
  name: string
  target: string
  url: string
  views: number
}

