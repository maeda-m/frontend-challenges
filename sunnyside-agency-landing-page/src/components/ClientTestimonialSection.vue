<template>
  <v-row class="client-testimonial-section d-flex justify-center">
    <v-col cols="12">
      <h4>CLIENT TESTIMONIALS</h4>
    </v-col>

    <v-col v-for="(person, i) in cards.people" v-bind:key="i" sm="3" cols="7">
      <testimonial-card v-bind="person" />
    </v-col>
  </v-row>

  <v-row no-gutters>
    <v-col v-for="(filename, i) in cards.images" v-bind:key="i" sm="3" cols="6">
      <active-image v-bind:filename="filename" />
    </v-col>
  </v-row>
</template>

<script>
import TestimonialCard from './item/TestimonialCard.vue'
import ActiveImage from './item/ActiveImage.vue'

export default {
  components: {
    TestimonialCard,
    ActiveImage,
  },

  setup(props, context) {
    return {
      cards: {
        people: [
          {
            comment: "We put our trust in Sunnyside and they delivered, making sure our needs were met and deadlines were always hit.",
            name: 'Emily R.',
            title: 'Marketing Director',
            avatar: 'image-emily.jpg',
          },
          {
            comment: "Sunnyside's enthusiasm coupled with their keen interest in our brand's success made it a satisfying and enjoyable experience.",
            name: 'Thomas S.',
            title: 'Chief Operating Officer',
            avatar: 'image-thomas.jpg',
          },
          {
            comment: "Incredible end result! Our sales increased over 400% when we worked with Sunnyside. Highly recommended!",
            name: 'Jennie F.',
            title: 'Business Owner',
            avatar: 'image-jennie.jpg',
          },
        ],
        images: [
          'image-gallery-milkbottles.jpg',
          'image-gallery-orange.jpg',
          'image-gallery-cone.jpg',
          'image-gallery-sugar-cubes.jpg'
        ],
      },
    }
  },
}
</script>

<style lang="scss">
.client-testimonial-section {
  text-align: center;
  padding-top: 150px;
  padding-bottom: 150px;
  
  h4, small {
    color: hsl(210, 4%, 67%);
  }

  h4 {
    margin-bottom: 40px;
    letter-spacing: 4px;
  }
}
</style>
