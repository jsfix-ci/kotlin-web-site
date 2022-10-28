<#import "source_set_selector.ftl" as source_set_selector>
<#macro display>
    {% ktl_component "header" %}
    <div class="navigation-wrapper" id="navigation-wrapper">
        <div id="leftToggler"><span class="icon-toggler"></span></div>
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