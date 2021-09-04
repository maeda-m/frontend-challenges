<template>
  <article>
    <span v-text="long_link"></span>
    <div class="divider"></div>
    <a ref="element" v-bind:href="short_link" v-text="short_link"></a>
    <button type="button" v-if="!isCopied" class="btn-copy" v-on:click="execCopy">Copy</button>
    <button type="button" v-if="isCopied" class="btn-copied">Copied!</button>
  </article>
</template>

<script>
import { ref, toRef, reactive } from 'vue'

export default {
  props: {
    long_link: {
      type: String,
      required: true,
    },
    short_link: {
      type: String,
      required: true,
    },
  },
  setup(props, context) {
    const isCopied = ref(false)
    const element = ref(null)

    const execCopy = () =>{
      const selection = document.getSelection()
      const range = document.createRange()

      selection.removeAllRanges()
      range.selectNode(element.value)
      selection.addRange(range)
      document.execCommand('copy')
      selection.removeAllRanges()

      isCopied.value = true
    }
    return {
      element,
      isCopied,
      execCopy,
    }
  },
}
</script>

<style lang="scss" scoped>
article {
  @apply rounded-lg;
  @apply bg-white;
  @apply mt-3 p-4;
  @apply flex;

  span, a {
    @apply truncate;
  }

  a {
    @apply text-cyan-100;
  }

  button {
    @apply p-1;
    @apply text-white rounded;

    &.btn-copy {
      @apply bg-cyan-100;

      &:hover {
        @apply bg-cyan-50;
      }
    }
    &.btn-copied {
      @apply bg-violet-100;
      @apply pointer-events-none;
    }
  }

  @screen <lg {
    @apply flex-col;

    .divider {
      @apply my-2;
      @apply border border-violet-50;
    }

    button {
      @apply mt-2;
    }
  }

  @screen lg {
    .divider {
      @apply flex-grow ml-auto;
    }

    a {
      @apply mx-4;
    }

    button {
      @apply w-26;
    }
  }
}
</style>
