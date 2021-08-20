<template>
  <header class="content flex justify-between">
    <h1>
      <SvgLogo />
    </h1>
    <nav v-bind:class="{ 'nav-collapse show': isShownNavi }">
      <ul>
        <li><a href="#">Features</a></li>
        <li><a href="#">Pricing</a></li>
        <li><a href="#">Resources</a></li>
        <li class="divider"></li>
        <li><a href="#">Login</a></li>
        <li><button class="btn-primary">Sign Up</button></li>
      </ul>
    </nav>
    <button class="hamburger" v-on:focus="isShownNavi = true" v-on:blur="isShownNavi = false">
      <fa icon="bars" type="fas"></fa>
    </button>
  </header>
</template>

<script setup>
import SvgLogo from '@/images/logo.svg.vue'
</script>

<script>
export default {
  props: {
    isShownNavi: {
      type: Boolean,
      default: false,
    }
  },

  components: {
  },

  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
header {
  h1 {
    @apply px-4 py-2;
  }

  a {
    @apply text-violet-50;

    &:hover {
      @apply text-violet-200;
    }
  }

  nav {
    @apply w-full;
    @apply <md:hidden;

    &.nav-collapse.show {
      @apply bg-violet-100;
      @apply block absolute w-full top-1.5 left-1.5;

      ul {
        @apply block text-center;
      }
    }

    ul {
      @apply flex;

      li {
        @apply px-4 py-1 self-center;

        &.divider {
          @apply flex-grow ml-auto;
        }
      }
    }
  }

  button.hamburger {
    @apply float-right;
    @apply md:hidden;
  }
}
</style>
