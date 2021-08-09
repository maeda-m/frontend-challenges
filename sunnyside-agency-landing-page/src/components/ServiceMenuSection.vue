<template>
  <v-row no-gutters>
    <v-col sm="6" cols="12" class="order-sm-last">
      <active-image filename="image-transform.jpg" />
    </v-col>
    <v-col sm="6" cols="12" class="order-sm-first">
      <navigation-card v-bind="cards.yellow" />
    </v-col>
  </v-row>

  <v-row no-gutters>
    <v-col sm="6" cols="12">
      <active-image filename="image-stand-out.jpg" />
    </v-col>
    <v-col sm="6" cols="12">
      <v-col class="d-flex h-100 justify-center align-center">
        <navigation-card v-bind="cards.red" />
      </v-col>
    </v-col>
  </v-row>

  <v-row no-gutters>
    <v-col sm="6" cols="12">
      <v-card>
        <active-image filename="image-graphic-design.jpg">
          <image-overlay-card v-bind="cards.green" />
        </active-image>
      </v-card>
    </v-col>
    <v-col sm="6" cols="12">
      <v-card>
        <active-image filename="image-photography.jpg">
          <image-overlay-card v-bind="cards.blue" />
        </active-image>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
import NavigationCard from './item/NavigationCard.vue'
import ImageOverlayCard from './item/ImageOverlayCard.vue'
import ActiveImage from './item/ActiveImage.vue'

export default {
  components: {
    NavigationCard,
    ImageOverlayCard,
    ActiveImage,
  },

  setup(props, context) {
    return {
      cards: {
        yellow: {
          title: 'Transform your brand',
          description: 'We are a full-service creative agency specializing in helping brands grow fast. Engage your clients through compelling visuals that do most of the marketing for you.',
          theme: 'yellow',
        },
        red: {
          title: 'Stand out to the right audience',
          description: "Using a collaborative formula of designers, researchers, photographers, videographers, and copywriters, we'll build and extend your brand in digital places.",
          theme: 'red',
        },
        green: {
          title: 'Graphic Design',
          description: "Great design makes you memorable. We deliver artwork that underscores your brand message and captures potential clients' attention.",
          theme: 'green',
        },
        blue: {
          title: 'Photography',
          description: "Increase your credibility by getting the most stunning, high-quality photos that improve your business image.",
          theme: 'blue',
        },
      }
    }
  },
}
</script>

<style lang="scss">
</style>
