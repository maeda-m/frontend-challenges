<template>
  <v-app>
    <v-main>
      <header-menu-section />
      <service-menu-section />
      <client-testimonial-section />
      <footer-section />
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
import HeaderMenuSection from './components/HeaderMenuSection.vue'
import ServiceMenuSection from './components/ServiceMenuSection.vue'
import ClientTestimonialSection from './components/ClientTestimonialSection.vue'
import FooterSection from './components/FooterSection.vue'

export default {
  name: 'App',

  components: {
    HeaderMenuSection,
    ServiceMenuSection,
    ClientTestimonialSection,
    FooterSection,
  },

  data() {
    return {
    }
  },
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Barlow:wght@600&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Fraunces:wght@700;900&display=swap');

html {
  color: hsl(212, 27%, 19%);
  font-size: 18px;
  font-family: 'Fraunces';
  font-weight: 700;
}

h1, h2, h3, h4 {
  font-weight: 900;
}

h1 {
  font-size: 2.1rem;
  letter-spacing: 0.6rem;
}

h2 {
  font-size: 1.9rem;
  line-height: 1;
}

.h-100 {
  height: 100%;
}

p {
  margin-top: 30px;
  margin-bottom: 30px;
  font-family: 'Barlow';
  font-weight: 600;
  font-size: 15px;
  line-height: 24px;
}

a {
  color: hsl(212, 27%, 19%);
  text-decoration: none !important;
  font-size: 14px;
}

footer {
  font-size: 11px;

  a {
    color: hsl(228, 45%, 44%);
  }
}
</style>
