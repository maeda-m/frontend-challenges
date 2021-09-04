<template>
  <header class="content">
    <h1>
      <SvgLogo />
    </h1>
    <nav v-bind:class="{ 'nav-collapse show': isShownNavi }">
      <ul>
        <li><a href="#">Features</a></li>
        <li><a href="#">Pricing</a></li>
        <li><a href="#">Resources</a></li>
        <li class="divider"><div></div></li>
        <li><a href="#">Login</a></li>
        <li><button class="btn-primary">Sign Up</button></li>
      </ul>
    </nav>
    <button class="hamburger" v-on:focus="isShownNavi = true" v-on:blur="isShownNavi = false">
      <fa icon="bars" type="fas"></fa>
    </button>
  </header>
</template>

<script>
import SvgLogo from '@/images/logo.svg.vue'

export default {
  props: {
    isShownNavi: {
      type: Boolean,
      default: false,
    }
  },

  components: {
    SvgLogo,
  },

  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
header {
  @apply flex justify-between;

  h1 {
    @apply px-4 py-2;
  }

  nav {
    @apply w-full;
  }

  button.hamburger {
    @apply float-right;
    @apply lg:hidden;

    &:hover {
      @apply opacity-50;
    }
  }

  nav {
    @screen <lg {
      @apply hidden;

      @apply bg-violet-100;
      @apply rounded-lg;
      @apply w-11/12;
      @apply absolute top-0 left-0 py-8;
      margin-left: 3vw;
      margin-right: 3vw;
      @apply mt-24;

      ul {
        @apply block;

        li {
          @apply py-2;
          @apply text-center;

          &.divider {
            div {
              @apply h-px;
              @apply border border-violet-50;
              margin-left: 3vw;
              margin-right: 3vw;
            }
          }

          a, button, div {
            @apply w-11/12;
          }
          a {
            @apply text-white;

            &:hover {
              @apply text-violet-50;
            }
          }
        }
      }

      &.show {
        @apply inline-block;
        animation: zoomIn 0.5s cubic-bezier(0.25, 1, 0.5, 1) 1 forwards;
        @keyframes zoomIn {
          0% {
            transform: scale(0.8);
            opacity: 0;
          }
          100% {
            opacity: 1;
            transform: scale(1);
          }
        }
      }
    }

    @screen lg {
      ul {
        @apply flex;

        li {
          @apply px-4 py-1 self-center;

          &.divider {
            @apply flex-grow ml-auto;
          }

          a {
            @apply text-violet-50;

            &:hover {
              @apply text-violet-200;
            }
          }
        }
      }
    }
  }
}
</style>
