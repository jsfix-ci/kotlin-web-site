import './index.scss';
import './control-pane.scss';

import {replaceByComponent, ktlHelpers} from "../../ktl-component/ktl-helpers";
import Footer from "./footer/index.jsx";
import Header from "./header/index.jsx";
import FilterButton from "./FilterButton/index.jsx";

document.addEventListener('DOMContentLoaded', init);

function init() {
  ktlHelpers().forEach(({name, node, props}) => {
    switch (name) {
      case 'footer':
        replaceByComponent(node.nextElementSibling, Footer, props);
        break;
      case 'header':
        replaceByComponent(node.nextElementSibling, Header, props);
        break;
      case 'FilterButton':
        replaceByComponent(node.nextElementSibling, FilterButton, props);
        break;
      default:
        console.error(`The "${name}" component was not found.`);
        break;
    }
  });
}
