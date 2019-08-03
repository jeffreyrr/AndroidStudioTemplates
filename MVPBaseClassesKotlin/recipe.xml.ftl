<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/classes/BaseFragment.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/BaseFragment.kt" />

    <instantiate from="src/app_package/classes/BaseContract.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/BaseContract.kt" />

    <instantiate from="src/app_package/classes/BasePresenter.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/BasePresenter.kt" />
</recipe>
