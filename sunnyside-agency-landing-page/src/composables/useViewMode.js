import { ref, onMounted, computed } from 'vue'

export default function useViewMode() {
  const vieWidth = ref(0)
  
  const isMobileView = () => {
    return vieWidth.value <= 599
  }

  const viewMode = computed(() => {
    return isMobileView() ? 'mobile' : 'desktop'
  })

  const onResize = () => {
    vieWidth.value = window.innerWidth;
  }

  onMounted(() => {
    onResize()
    window.addEventListener('resize', onResize)
  })

  return {
    viewMode,
    isMobileView,
  }
}
