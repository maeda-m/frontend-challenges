import { ref, onMounted, computed } from 'vue'

export default function useFetchAPI() {
  const onFailDefault = (e) => { console.log(e) }
  const fetchAPI = (request, onDone, onFail = onFailDefault) => {
    fetch(request)
    .then(response => response.json())
    .then(json => {
      if (json.errors) {
        throw json.errors
      } else {
        return json
      }
    })
    .then(onDone)
    .catch(onFail)
  }

  return {
    fetchAPI,
  }
}
