import React from "react";
import cn from 'classnames';
import GlobalHeader from '@jetbrains/kotlin-web-site-ui/out/components/header';
import searchConfig from '../../../../../search-config.json';

import './header.scss';

const Header = (props) => {
	return (
		<GlobalHeader { ... props } className={cn(props.className, 'ktl-dokka-header')} searchConfig={searchConfig} noScrollClassName={'_no-scroll'} hasBorder={false}/>
	);
}

export default Header;
