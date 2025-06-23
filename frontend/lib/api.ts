import axios from "axios"
import { API_URL } from "./globals"
import { Block, Options } from "./models"

export async function getOptions(): Promise<Options | undefined> {
  try {
    const res = await axios.get(API_URL + '/api/options')
    return res.data
  } catch (e) {
    console.error(`Failed to get options ${e}`)
  }
}

export async function genWorkout(options: Options): Promise<Block[] | undefined> {
  try {
    const res = await axios.get(API_URL + '/api/workout', {
      params: {
        target: options.muscleGroups.join(','),
        equipment: options.equipment.join(','),
        force: options.force.join(','),
        experience: options.experience.join(','),
        minBlockSize: options.minBlockSize,
        maxBlockSize: options.maxBlockSize,
        minDifficulty: options.minDifficulty,
        maxDifficulty: options.maxDifficulty,
        blocksPerTarget: options.blocksPerTarget,
        minViews: options.minViews
      }
    })
    return res.data
  } catch (e) {
    console.error(`Failed to generate workout ${e}`)
  }
}
