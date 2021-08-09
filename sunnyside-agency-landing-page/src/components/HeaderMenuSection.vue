<template>
  <v-card class="text-white">
    <active-image filename="image-header.jpg">
      <v-toolbar>
        <v-card-title class="blue white--text ml-4 mr-0 mb-16">
          <h2>sunnyside</h2>
          <v-spacer></v-spacer>

          <v-menu
            bottom
            left
          >
            <v-list>
              <v-list-item v-if="isMobileView">
                <button><IconHamburger /></button>
              </v-list-item>
              <v-list-item v-if="!isMobileView">
                <action-map />
                <v-list-item-title class="contact">
                  <button type="button" class="v-btn rounded-pill v-btn--size-default">
                    CONTACT
                  </button>
                </v-list-item-title>
              </v-list-item>
            </v-list>
          </v-menu>
        </v-card-title>
      </v-toolbar>

      <v-card-title class="text-center">
        <v-row>
          <v-col cols="12" class="mb-16">
            <h1>WE ARE CREATIVES</h1>
          </v-col>
          <v-col cols="12">
            <IconArrowDown />
          </v-col>
        </v-row>
      </v-card-title>
    </active-image>
  </v-card>
</template>


<script setup>
import IconArrowDown from '../assets/icon-arrow-down.svg'
import IconHamburger from '../assets/icon-hamburger.svg'
</script>

<script>
import useViewMode from '../composables/useViewMode'
import ActionMap from './item/ActionMap.vue'
import ActiveImage from './item/ActiveImage.vue'

export default {
  components: {
    ActionMap,
    ActiveImage,
  },

  setup(props, context) {
    const { viewMode, isMobileView } = useViewMode()

    return {
      viewMode,
      isMobileView,
    }
  },
}
</script>

<style lang="scss">
v-toolbar {
  font-family: 'Barlow';

  .v-list-item-title {
    &.contact {
      font-family: 'Fraunces';

      button {
        color: hsl(212, 27%, 19%);
        background-color: white;
        padding: 15px 20px;

        &:hover {
          color: white;
          background-color: hsl(200, 100%, 72%);
        }
      }
    }
  }
}
</style>
