<template>
  <v-app>
    <v-main>
      <StatusCard/>
    </v-main>
    <v-footer padless>
      <v-col
        class="text-center"
        cols="12"
      >
        Challenge by <a href="https://www.frontendmentor.io?ref=challenge" target="_blank">Frontend Mentor</a>. 
        Coded by <a href="https://github.com/maeda-m">@maeda-m</a>.
      </v-col>
    </v-footer>
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

footer {
  font-size: 11px;
  text-align: center;

  a {
    color: hsl(228, 45%, 44%);
  }
}
</style>
