import { ref, onMounted, computed } from 'vue'

export default function useFetchAPI() {
  const onFailDefault = (e) => { console.log(e) }
  const fetchAPI = (request, onDone, onFail = onFailDefault) => {
    fetch(request)
    .then(response => {
      const json = response.json()

      if (response.ok) return json
      throw new Error(json)
    })
    .then(onDone)
    .catch(onFail)
  }

  return {
    fetchAPI,
  }
}
