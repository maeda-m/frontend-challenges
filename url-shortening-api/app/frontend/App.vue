<template>
  <header-section></header-section>
  <main-section></main-section>
  <footer-section></footer-section>
</template>

<script>
import HeaderSection from './components/HeaderSection.vue'
import MainSection from './components/MainSection.vue'
import FooterSection from './components/FooterSection.vue'

export default {
  name: 'App',

  components: {
    HeaderSection,
    MainSection,
    FooterSection
  },

  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500;700&display=swap');

body {
  font-family: Poppins !important;
  font-size: 18px;
  @apply text-black;
}

.btn-primary {
  @apply text-white;
  @apply bg-cyan-100;
  @apply rounded-full px-4 py-2;

  &:hover {
    @apply bg-cyan-50;
  }
  &[type=submit] {
    @apply rounded;
  }
}

.btn-copied {
  @apply bg-violet-100;
  @apply pointer-events-none;
}

p {
  @apply text-gray-100;
}

header {
  a {
    @apply text-violet-50;

    &:hover {
      @apply text-violet-200;
    }
  }
}

main {
  small {
    @apply text-violet-50;
  }
}

footer {
  strong {
    @apply text-white;
  }

  .features, .resources, .company {
    a {
      @apply text-violet-50;

      &:hover {
        @apply text-cyan-400;
      }
    }
  }

  .fa {
    @apply text-white;

    &:hover {
      @apply text-cyan-200;
    }
  }

  @apply bg-violet-200;
}
</style>
