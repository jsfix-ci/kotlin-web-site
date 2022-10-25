import cn from 'classnames';
import Button from "@rescui/button";

import "./filter-button.scss";

function FilterButton({ className, children: name, ...props }) {
    const elClassName = cn(className, 'ktl-dokka-filter-button', `ktl-dokka-filter-button_${name}`);
    return <Button size="m" {...props} mode="clear" theme="dark" className={elClassName}>{name}</Button>;
}

export default FilterButton;
