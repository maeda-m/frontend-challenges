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

<style lang="scss">
@import "https://fonts.googleapis.com/css?family=Inter";
@import "https://fonts.googleapis.com/css?family=Lexend+Deca";

.font-inter {
  font-family: "Inter";
}

.font-lexend-deca {
  font-family: "Lexend+Deca";
}

html {
  @extend .font-inter;
  font-size: 15px;
  background-color: hsl(233, 47%, 7%);
  color: hsl(0, 0%, 100%);
}
</style>
