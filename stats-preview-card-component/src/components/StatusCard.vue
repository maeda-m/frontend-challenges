<template>
  <v-container class="status-card">
    <v-row v-bind:class="{ 'mx-1 text-center': isMobile }">
      <v-img
        v-if="isMobile"
        v-bind:src="headers.mobile"
      />

      <div v-bind:class="{ 'v-col v-col-6 px-16': !isMobile }">
        <v-col cols="12">
          <h2>Get <span class="insights">insights</span> that help your business grow.</h2>
        </v-col>

        <v-col cols="12" class="description font-lexend-deca">
          Discover the benefits of data analytics and make better decisions regarding revenue, customer experience, and overall efficiency.
        </v-col>

        <v-row v-bind:class="{ 'pt-16': !isMobile }">
          <status-attribute
            v-bind:class="{ 'v-col v-col-12': isMobile }"
            v-for="(attr, i) in attributes"
            v-bind:key="i"
            v-bind="attr"
          ></status-attribute>
        </v-row>
      </div>

      <v-col cols="6" v-if="!isMobile">
        <v-img
          v-bind:src="headers.desktop"
        />
      </v-col>
    </v-row>

  </v-container>
</template>

<script>
import { useDisplay } from 'vuetify/lib/composables/display'
import header_desktop from '../assets/header-desktop.jpg'
import header_mobile from '../assets/header-mobile.jpg'

import StatusAttribute from './StatusAttribute.vue'

export default {
  name: 'StatusCard',

  components: {
    StatusAttribute,
  },

  data() {
    return {
      attributes: [
        {
          name: 'COMPANIES',
          text: '10k+'
        },
        {
          name: 'TEMPLATES',
          text: '314'
        },
        {
          name: 'QUERIES',
          text: '12M+'
        }
      ],
      headers: {
        desktop: header_desktop,
        mobile: header_mobile
      }
    }
  },

  computed: {
    isMobile() {
      const { width } = useDisplay();
      return width.value <= 375;
    },
  },
}
</script>

<style lang="scss">
.status-card {
  background-color: hsl(244, 38%, 16%);

  .insights {
    color: hsl(277, 64%, 61%);
  }
  .description {
    color: hsla(0, 0%, 100%, 0.75);
  }
}
</style>
