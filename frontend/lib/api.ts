import axios from "axios"
import { API_URL } from "./globals"
import { Exercise, Options } from "./models"

export async function getOptions(): Promise<Options | undefined> {
  try {
    const res = await axios.get(API_URL + '/api/options')
    return res.data
  } catch (e) {
    console.error(`Failed to get options ${e}`)
  }
}

export async function genWorkout(options: Options): Promise<Exercise[] | undefined> {
  try {
    const res = await axios.get(API_URL + '/api/workout', {
      params: {
        target: options.muscleGroups.join(','),
        equipment: options.equipment.join(','),
        force: options.force.join(','),
        experience: options.experience.join(','),
        blockspertarget: options.blockspertarget,
        minblocksize: options.minblocksize,
        min_views: options.minviews
      }
    })
    return res.data
  } catch (e) {
    console.error(`Failed to generate workout ${e}`)
  }
}
