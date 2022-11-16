<#import "source_set_selector.ftl" as source_set_selector>
<#macro display>
    {% ktl_component "header" %}
    <div class="navigation-wrapper" id="navigation-wrapper">
        <div id="leftToggler"><span class="icon-toggler">
            <svg width="52" height="52" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M35.3379 17.8333H16.6713V20.1666H35.3379V17.8333Z" fill="white"/>
                <path d="M35.3379 24.8333H16.6713V27.1666H35.3379V24.8333Z" fill="white"/>
                <path d="M16.6713 31.8333H35.3379V34.1666H16.6713V31.8333Z" fill="white"/>
            </svg>
        </span></div>
        <a href="https://kotlinlang.org/" class="ktl-dokka-navigation-logo">
            <svg xmlns="http://www.w3.org/2000/svg" x="0" y="0" viewBox="0 0 24 24" xml:space="preserve" class="kt-header__logo-small" title="Kotlin"><title id="LogoTextTitle">Kotlin</title><radialGradient id="kotlin_svg__a" cx="22.432" cy="3.493" r="21.679" gradientTransform="translate(-.19 .042) scale(.9998)" gradientUnits="userSpaceOnUse"><stop offset="0.003" stop-color="#e44857"></stop><stop offset="0.469" stop-color="#c711e1"></stop><stop offset="1" stop-color="#7f52ff"></stop></radialGradient><path fill="url(#kotlin_svg__a)" d="M22.87 21.68H3.94V2.76h18.93l-9.66 9.32z"></path></svg>
        </a>
        <div class="library-name">
            <@template_cmd name="pathToRoot">
                <a class="library-name--link" href="${pathToRoot}index.html">
                    <@template_cmd name="projectName">
                        <span>${projectName}</span>
                    </@template_cmd>
                </a>
            </@template_cmd>
        </div>
        <div class="library-version">
            <#-- This can be handled by the versioning plugin -->
            <@version/>
        </div>
        <div class="pull-right d-flex">
            <@source_set_selector.display/>
            <button id="theme-toggle-button">
                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M19.9824 29.0078C21.7625 29.0078 23.5025 28.48 24.9826 27.491C26.4626 26.5021 27.6161 25.0965 28.2973 23.452C28.9785 21.8074 29.1568 19.9978 28.8095 18.252C28.4622 16.5062 27.6051 14.9025 26.3464 13.6439C25.0877 12.3852 23.4841 11.528 21.7382 11.1807C19.9924 10.8335 18.1828 11.0117 16.5383 11.6929C14.8937 12.3741 13.4881 13.5276 12.4992 15.0077C11.5103 16.4877 10.9824 18.2278 10.9824 20.0078C10.9851 22.3939 11.9342 24.6816 13.6214 26.3688C15.3087 28.0561 17.5963 29.0051 19.9824 29.0078ZM19.9824 13.0078C21.8389 13.0078 23.6194 13.7453 24.9322 15.0581C26.2449 16.3708 26.9824 18.1513 26.9824 20.0078C26.9824 21.8643 26.2449 23.6448 24.9322 24.9576C23.6194 26.2703 21.8389 27.0078 19.9824 27.0078V13.0078Z" fill="white"/>
                </svg>
            </button>
            <div id="searchBar"></div>
        </div>
    </div>
</#macro>