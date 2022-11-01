<#import "source_set_selector.ftl" as source_set_selector>
<#macro display>
    {% ktl_component "header" %}
    <div class="navigation-wrapper" id="navigation-wrapper">
        <div id="leftToggler"><span class="icon-toggler"></span></div>
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
            <button id="theme-toggle-button"><span id="theme-toggle"></span></button>
            <div id="searchBar"></div>
        </div>
    </div>
</#macro>