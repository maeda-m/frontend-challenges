<template>
  <header-section></header-section>
  <main-section v-bind:records="links"></main-section>
  <footer-section></footer-section>
</template>

<script>
import { onMounted, ref, toRef, reactive } from 'vue'

import useFetchAPI from '@/composables/useFetchAPI.js'

import HeaderSection from '@/components/HeaderSection.vue'
import MainSection from '@/components/MainSection.vue'
import FooterSection from '@/components/FooterSection.vue'

export default {
  name: 'App',

  components: {
    HeaderSection,
    MainSection,
    FooterSection
  },

  setup(props, context) {
    const links = ref([])
    const { fetchAPI } = useFetchAPI()

    onMounted(() => {
      const tokenRequest = new Request('/login/device/token.json', {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
          'x-current-token': sessionStorage.token
        },
      })

      fetchAPI(tokenRequest, (response) => {
        sessionStorage.token = response.token

        const urlsRequest = new Request('/shortened_urls.json', {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
            'x-current-token': sessionStorage.token
          },
        })
        fetchAPI(urlsRequest, (records) => {
          records.forEach(function(record, i) {
            links.value.push(record)
          })
        })
      }, (e) => {
        alert('Initialization failed. Reload this page after a while.')
      })
    })

    return {
      links
    }
  },
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500;700&display=swap');

body {
  font-family: Poppins !important;
  @apply text-lg text-black;
}

#app {
  @apply pt-10;
}

.content {
  @apply max-w-screen-lg;

  @screen <lg {
    @apply mx-16;
  }

  @screen lg {
    @apply mx-auto;
  }
}

.btn-primary {
  @apply bg-cyan-100 text-white;
  @apply rounded-full;
  @apply px-9 py-3;

  &:hover {
    @apply bg-cyan-50;
  }

  &[type=submit] {
    @apply rounded;
  }
}

p {
  @apply text-gray-100;
}

.fa {
  @apply w-6;
}
</style>
