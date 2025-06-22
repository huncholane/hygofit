import axios from "axios"
import { API_URL } from "./globals"
import { Options } from "./models"

export async function getOptions() {
  try {
    const res = await axios.get(API_URL + '/api/options')
    return res
  } catch (e) {
    console.log(`Failed to get options ${e}`)
  }
}

export async function genWorkout(options: Options) {
  try {
    const res = await axios.get(API_URL + '/api/workout', {
      params: {
        target: options.muscleGroups.join(','),
        equipment: options.equipment.join(','),
        force: options.force.join(','),
        experience: options.experience.join(',')
      }
    })
    return res
  } catch (e) {
    console.log(`Failed to generate workout ${e}`)
  }
}
