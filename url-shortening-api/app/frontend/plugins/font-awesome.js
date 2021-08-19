import { library } from "@fortawesome/fontawesome-svg-core";
import { fas } from "@fortawesome/free-solid-svg-icons";
import { faInstagram, faTwitter, faPinterest, faFacebookSquare } from "@fortawesome/free-brands-svg-icons";
import FontAwesomeIcon from "@/libs/FontAwesomeIcon.vue";

library.add(fas, faTwitter, faInstagram, faPinterest, faFacebookSquare);

export { FontAwesomeIcon };
