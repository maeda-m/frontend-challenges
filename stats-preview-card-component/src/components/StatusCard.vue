<template>
  <v-container>
    <v-row class="d-lg-none d-flex">
      <v-col cols="12">
        <v-img
          :src="headers.mobile"
        />
      </v-col>
    </v-row>
    <v-row class="d-lg-none d-flex">
      <v-col cols="12">
        <h2>{{ title }}</h2>
      </v-col>
      <v-col cols="12">
        {{ description }}
      </v-col>

      <v-col cols="4"
        v-for="(attr, i) in attributes"
        :key="i"
      >
        {{ attr.text }}
      </v-col>
      <v-col cols="4"
        v-for="(attr, i) in attributes"
        :key="i"
      >
        {{ attr.name }}
      </v-col>
    </v-row>
    <v-row class="d-none d-lg-flex">
      <v-col cols="6">
        <v-col cols="12">
          <h2>{{ title }}</h2>
        </v-col>
        <v-col cols="12">
          {{ description }}
        </v-col>

        <v-row>
          <v-col cols="4"
            v-for="(attr, i) in attributes"
            :key="i"
          >
            {{ attr.text }}
          </v-col>
          <v-col cols="4"
            v-for="(attr, i) in attributes"
            :key="i"
          >
            {{ attr.name }}
          </v-col>
        </v-row>
      </v-col>
      <v-col cols="6">
        <v-img
          :src="headers.desktop"
        />
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import header_desktop from '../assets/header-desktop.jpg'
import header_mobile from '../assets/header-mobile.jpg'

export default {
  name: 'StatusCard',

  data() {
    return {
      title: 'Get insights that help your business grow.',
      description: 'Discover the benefits of data analytics and make better decisions regarding revenue, customer experience, and overall efficiency.',
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
}
</script>
