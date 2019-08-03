<?xml version="1.0"?>
<recipe>
    <#include "layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/MainActivity.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/MainActivity.kt" />

    <open file="${srcOut}/MainActivity.kt"/>
</recipe>
