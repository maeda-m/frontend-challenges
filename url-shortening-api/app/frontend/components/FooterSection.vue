<template>
  <footer class="flex justify-between">
    <h1>
      <SvgLogo fill="white" />
    </h1>

    <nav class="flex">
      <ul class="features">
        <li><strong>Features</strong></li>
        <li><a href="#">Link Shortening</a></li>
        <li><a href="#">Branded Links</a></li>
        <li><a href="#">Analytics</a></li>
      </ul>
      <ul class="resources">
        <li><strong>Resources</strong></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Developers</a></li>
        <li><a href="#">Support</a></li>
      </ul>
      <ul class="company">
        <li><strong>Company</strong></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Our Team</a></li>
        <li><a href="#">Careers</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="sns">
        <li><a href="#"><fa icon="facebook-square" type="fab"></fa></a></li>
        <li><a href="#"><fa icon="twitter" type="fab"></fa></a></li>
        <li><a href="#"><fa icon="pinterest" type="fab"></fa></a></li>
        <li><a href="#"><fa icon="instagram" type="fab"></fa></a></li>
      </ul>
    </nav>
  </footer>
</template>

<script setup>
import SvgLogo from '@/images/logo.svg.vue'
</script>

<script>
export default {
  components: {
  },

  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
footer {
  @apply bg-violet-200;

  h1, nav {
    @apply mx-8 mt-16 mb-24;
  }

  .features, .resources, .company, .sns {
    @apply px-8;

    li {
      &:first-child {
      @apply mb-4;
    }
      @apply my-2;
    }
  }

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

  .sns {
    @apply flex flex-row;

    li {
      @apply mx-3;
    }

    .fa {
      @apply w-6;
      @apply text-white;

      &:hover {
        @apply text-cyan-200;
      }
    }
  }
}
</style>
