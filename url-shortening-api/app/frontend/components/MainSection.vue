<template>
  <main>
    <section class="flex flex-shrink">
      <div>
        <h2>More than just shorter links</h2>
        <small>Build your brand’s recognition and get detailed insights on how your links are performing.</small>

        <div class="py-4">
          <button class="btn-primary">Get Started</button>
        </div>
      </div>

      <div>
        <img src="@/images/illustration-working.svg" class="object-contain">
      </div>
    </section>

    <section class="bg-gray-50">
      <section class="shorten">
        <form action="#">
          <div class="flex">
            <input type="text" placeholder="Shorten a link here...">
            <button type="submit" class="btn-primary">Shorten It!</button>
          </div>
        </form>

        <article>
          <!-- TODO -->
        </article>
      </section>

      <section>
        <div class="subtitle">
          <h3>Advanced Statistics</h3>
          <small>
            Track how your links are performing across the web with<br>
            our advanced statistics dashboard.
          </small>
        </div>

        <div class="flex articles">
          <div>
            <IconBrandRecognition />
            <article>
              <h4>Brand Recognition</h4>
              <p>Boost your brand recognition with each click. Generic links don’t mean a thing. Branded links help instil confidence in your content.</p>
            </article>
          </div>

          <div class="line"></div>

          <div>
            <IconDetailedRecords />
            <article>
              <h4>Detailed Records</h4>
              <p>Gain insights into who is clicking your links. Knowing when and where people engage with your content helps inform better decisions.</p>
            </article>
          </div>

          <div class="line"></div>

          <div>
            <IconFullyCustomizable />
            <article>
              <h4>Fully Customizable</h4>
              <p>Improve brand awareness and content discoverability through customizable links, supercharging audience engagement.</p>
            </article>
          </div>
        </div>
      </section>
    </section>

    <section class="boost">
      <h3>Boost your links today</h3>
      <div class="py-8">
        <button class="btn-primary">Get Started</button>
      </div>
    </section>
  </main>
</template>

<script setup>
import IconBrandRecognition from '@/images/icon-brand-recognition.svg.vue'
import IconDetailedRecords from '@/images/icon-detailed-records.svg.vue'
import IconFullyCustomizable from '@/images/icon-fully-customizable.svg.vue'
</script>

<script>
export default {
  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
main {
  @apply pt-24;

  h2, h3, h4 {
    @apply font-bold;
  }

  h2 {
    @apply text-6xl;
  }

  h3 {
    @apply text-4xl;
  }

  h4 {
    @apply text-2xl;
  }

  small {
    @apply text-xl text-violet-50;
  }

  form {
    @apply my-16 py-10;

    input[type=text] {
      @apply flex-grow;
      @apply px-4 py-2 rounded;
    }

    button[type=submit] {
      @apply px-8 py-4 ml-8;
    }
  }

  .shorten {
    @apply px-14;
    @apply rounded-lg;
    @apply bg-violet-100;

    @apply object-cover;
    background-image: url("@/images/bg-shorten-desktop.svg");
  }

  .subtitle {
    @apply text-center;

    small {
      @apply text-base;
    }
  }

  .articles {
    figure {
      @apply relative;
      top: 32px;
      left: 32px;
      width: 80px;
      height: 80px;

      @apply bg-violet-100;
      @apply rounded-full;

      svg {
        @apply mx-auto;
      }
    }

    article {
      @apply bg-white;
      @apply px-8 pt-16 pb-8;
    }

    div:nth-child(3) {
      @apply mt-12;
    }
    div:nth-child(5) {
      @apply pt-24;
    }
    div.line {
      @apply relative;
      top: 216px;
      width: 72px;
      height: 9px;

      @apply bg-cyan-100;
    }
  }

  .boost {
    @apply text-center py-12;
    @apply text-white bg-violet-100;

    @apply object-cover;
    background-image: url("@/images/bg-boost-desktop.svg");
  }
}
</style>
