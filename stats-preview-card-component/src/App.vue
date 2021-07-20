<template>
  <v-app>
    <v-main>
      <StatusCard/>
    </v-main>
  </v-app>
</template>

<script>
import StatusCard from './components/StatusCard.vue'

export default {
  name: 'App',

  components: {
    StatusCard,
  },

  data() {
  },
}
</script>
