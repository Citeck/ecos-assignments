<#macro applyDateSettings>
    <#setting time_zone="GMT+3">
    <#setting locale="ru_RU"/>
</#macro>

<#macro printPriority>
    <strong>Приоритет:</strong>
    <#if priority??>
        <#switch priority>
            <#case 1><span class="priority-high">Высокий</span><#break>
            <#case 2><span class="priority-medium">Средний</span><#break>
            <#case 3><span class="priority-low">Низкий</span><#break>
            <#default>Не указан
        </#switch>
    <#else>
        Не указан
    </#if>
</#macro>

<#macro printDeadline>
    <strong>Срок поручения:</strong>
    <#if dueDate??>
        <@applyDateSettings/>

        <#assign assignmentDueDate = dueDate?datetime.iso>
        ${assignmentDueDate?string.short}
    <#else>
        Не указан
    </#if>
</#macro>
