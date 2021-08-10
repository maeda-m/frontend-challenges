<template>
  <v-row class="footer text-center">
    <v-col cols="12" class="mt-16">
      <h2>sunnyside</h2>
    </v-col>
    <v-col cols="12">
      <v-col class="d-flex h-100 justify-center align-center">
        <v-list>
          <v-list-item>
            <action-map />
          </v-list-item>
        </v-list>
      </v-col>
    </v-col>
    <v-col cols="12" class="mb-16">
      <button
        v-for="(icon, i) in icons" :key="i"
      >
        <v-icon
          class="px-6"
        >
          mdi-{{icon}}
        </v-icon>
      </button>
    </v-col>
  </v-row>
</template>

<script>
import ActionMap from './item/ActionMap.vue'

export default {
  components: {
    ActionMap,
  },

  setup(props, context) {
    return {
      icons: [
        'facebook',
        'instagram',
        'twitter-retweet',
        'pinterest'
      ],
    }
  },
}
</script>

<style lang="scss">
.footer {
  background-color: hsl(167, 44%, 70%);
  color: hsl(168, 34%, 41%) !important;
  font-family: 'Barlow';

  button {
    &:hover {
      color: white !important;
    }
  }
}
</style>
