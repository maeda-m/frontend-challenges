<template>
  <header>
    <h1>
      <SvgLogo />
    </h1>
    <nav>
      <ul>
        <li><a href="#">Features</a></li>
        <li><a href="#">Pricing</a></li>
        <li><a href="#">Resources</a></li>
        <!-- TODO divider -->
        <li><a href="#">Login</a></li>
        <li><button class="btn-primary">Sign Up</button></li>
      </ul>
    </nav>
  </header>
  <!-- TODO hamburger -->
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
</style>
