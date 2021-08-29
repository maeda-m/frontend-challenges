<template>
  <main>
    <section class="content main-title">
      <div>
        <h2>More than just shorter links</h2>
        <small>Build your brand’s recognition and get detailed insights on how your links are performing.</small>

        <div class="py-4">
          <button class="btn-primary">Get Started</button>
        </div>
      </div>

      <div>
        <img src="@/images/illustration-working.svg">
      </div>
    </section>

    <section class="home">
      <section class="content">
        <div class="shorten">
          <form action="#" v-on:submit.prevent="requestShortenedLink">
            <div class="form-group">
              <span class="input-group" v-bind:class="{ 'has-error': !!error.message }">
                <input type="text" ref="element" placeholder="Shorten a link here..." autofocus="autofocus" v-model="url">
                <div class="message" v-bind:class="{ 'empty': !error.message }" v-text="error.message"></div>
              </span>
              <button type="submit" class="btn-primary">Shorten It!</button>
            </div>
          </form>
        </div>

        <article class="records">
          <shorten-record v-bind="record" v-for="(record, i) in records" v-bind:key="i" />
        </article>
      </section>

      <section class="content">
        <div class="sub-title">
          <h3>Advanced Statistics</h3>
          <small>
            Track how your links are performing across the web with<br>
            our advanced statistics dashboard.
          </small>
        </div>

        <div class="articles">
          <div class="brand-recognition">
            <IconBrandRecognition />
            <article>
              <h4>Brand Recognition</h4>
              <p>Boost your brand recognition with each click. Generic links don’t mean a thing. Branded links help instil confidence in your content.</p>
            </article>
          </div>

          <div class="h-line"></div>
          <div class="detailed-records">
            <IconDetailedRecords />
            <article>
              <h4>Detailed Records</h4>
              <p>Gain insights into who is clicking your links. Knowing when and where people engage with your content helps inform better decisions.</p>
            </article>
          </div>
          <div class="h-line"></div>

          <div class="fully-customizable">
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

<script>
import { ref, toRef, reactive } from 'vue'

import useFetchAPI from '@/composables/useFetchAPI.js'

import ShortenRecord from '@/components/ShortenRecord.vue'
import IconBrandRecognition from '@/images/icon-brand-recognition.svg.vue'
import IconDetailedRecords from '@/images/icon-detailed-records.svg.vue'
import IconFullyCustomizable from '@/images/icon-fully-customizable.svg.vue'

export default {
  props: {
    records: {
      type: Array,
      default: [],
    }
  },
  components: {
    ShortenRecord,
    IconBrandRecognition,
    IconDetailedRecords,
    IconFullyCustomizable,
  },
  setup(props, context) {
    const url = ref('')
    const error = reactive({ message: '' })
    const element = ref(null)
    const records = toRef(props, 'records')

    const { fetchAPI } = useFetchAPI()

    const renderErrorMessage = (msg) => {
      error.message = msg
    }
    const requestShortenedLink = () => {
      const data = { url: url.value }

      const urlsRequest = new Request('/shortened_urls.json', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'x-current-token': sessionStorage.token
        },
        body: JSON.stringify(data),
      })
      fetchAPI(urlsRequest, (record) => {
        renderErrorMessage('')
        records.value.push(record)
        url.value = ''
        element.value.focus()
      }, (e) => {
        renderErrorMessage('Please add a link')
      })
    }

    return {
      url,
      error,
      element,
      requestShortenedLink,
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

  p {
    @apply pt-4;
    @apply text-sm;
  }

  small {
    @apply text-violet-50;
  }

  .main-title {
    @apply flex flex-shrink;

    small {
      @apply text-xl;
    }

    @screen <lg {
      @apply flex-col-reverse text-center;
    }

    img {
      @apply object-contain;
    }
  }

  .home {
    @apply mt-32 pb-24;
    @apply bg-gray-50;
  }

  .pop-out {
    @apply relative;
    top: -70px;
  }

  .shorten {
    @apply rounded-lg;
    @apply bg-violet-100;
    @extend .pop-out;

    @apply object-cover;
    background-image: url("@/images/bg-shorten-desktop.svg");

    form {
      .form-group {
        @apply flex;

        .input-group {
          @apply flex-grow;

          .message {
            @apply text-sm italic;
            @apply text-red text-left;

            &.empty {
              @apply h-5;
            }
          }
        }

        input[type=text] {
          @apply px-4;
          @apply rounded;
          width: 97%;
        }

        input[type=text], button[type=submit] {
          @apply h-12;
        }
      }
    }

    @screen <lg {
      form {
        @apply text-center;
        @apply h-36 px-4 py-3;

        .form-group {
          @apply flex-col;

          input[type=text] {
            @apply w-full;
          }
        }
      }
    }

    @screen lg {
      form {
        @apply px-10 pt-10 pb-5;
      }
    }
  }

  .records {
    @extend .pop-out;
  }

  .sub-title {
    @apply text-center;

    small {
      @apply text-base;
    }
  }

  .articles {
    @apply flex;

    @screen <lg {
      @apply flex-col;

      .detailed-records {
        &:before {
          @extend .v-line;
        }
        &:after {
          @extend .v-line;
        }
      }
    }

    @screen lg {
      .detailed-records {
        @apply mt-12;
      }

      .fully-customizable {
        @apply pt-24;
      }
    }

    figure {
      @apply bg-violet-100;
      @apply rounded-full;

      @apply relative;
      @apply top-10;
      width: 80px;
      height: 80px;

      @screen <lg {
        @apply mx-auto;
      }

      @screen lg {
        @apply ml-8;
      }

      svg {
        @apply mx-auto;
      }
    }

    article {
      @apply bg-white;
      @apply rounded-lg;
      @apply px-8 py-16;

      @screen <lg {
        @apply text-center;
      }

      @screen lg {
        @apply h-60;
      }
    }
  }

  .h-line {
    @apply bg-cyan-100;
    @apply relative top-55;
    @apply w-16 h-2;

    @apply <lg:hidden;
  }

  .v-line {
    @apply bg-cyan-100;
    @apply absolute;
    @apply w-2;

    content: "";
    left: 49%;
    height: 80px;

    @apply lg:hidden;
  }

  .boost {
    @apply py-12;
    @apply bg-violet-100 text-white text-center;

    @apply object-cover;
    background-image: url("@/images/bg-boost-desktop.svg");
  }
}
</style>
