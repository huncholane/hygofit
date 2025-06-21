import axios from "axios"
import { API_URL } from "./globals"

export async function getOptions() {
  try {
    const res = await axios.get(API_URL + '/api/options')
    return res
  } catch (e) {
    console.log(`Failed to get options ${e}`)
  }
}
