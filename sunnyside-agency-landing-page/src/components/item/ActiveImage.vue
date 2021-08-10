<template>
  <v-img
    v-bind:src="`./images/${viewMode}/${filename}`"
  >
    <slot></slot>
  </v-img>
</template>

<script>
import useViewMode from '../../composables/useViewMode'

export default {
  props: {
    filename: {
      type: String,
      required: true,
    },
  },
  
  setup(props, context) {
    const { viewMode } = useViewMode()

    return {
      viewMode,
    }
  },
}
</script>

<style lang="scss">
</style>
