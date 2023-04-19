<#escape x as x?html>
<html>
   <head></head>

   <body bgcolor="#dddddd">
      <table width="100%" cellpadding="20" cellspacing="0" border="0" bgcolor="#dddddd">
         <tr>
            <td width="100%" align="center">
               <table width="70%" cellpadding="0" cellspacing="0" bgcolor="white" style="background-color: white; border: 1px solid #aaaaaa;">
                  <tr>
                     <td width="100%">
                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                           <tr>
                              <td style="padding: 10px 30px 0px;">
                                 <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                       <td>
                                          <table cellpadding="0" cellspacing="0" border="0">
                                             <tr>
                                                <td>
                                                   <img src="${image.toBase64Data("task-64.png")}" alt="" width="64" height="64" border="0" style="padding-right: 20px;" />
                                                </td>
                                                <td>
                                                   <div style="font-size: 22px; padding-bottom: 4px;">
                                                    You are assigned with the task
                                                   </div>
                                                   <div style="font-size: 13px;">
                                                      ${date?datetime.iso?string.full}
                                                   </div>
                                                </td>
                                             </tr>
                                          </table>
                                          <div style="font-size: 14px; margin: 12px 0px 24px 0px; padding-top: 10px; border-top: 1px solid #aaaaaa;">
                                              The following task is assigned to you:
                                              <p><b>Decision of reworking the assignment</b></p>

                                             <p>
                                                 <#if title??>
                                                     File name:&nbsp;&nbsp;<b>${title!''}</b><br>
                                                 </#if>
                                             </p>

                                              <p>Click the link to see the assignment:</p>
                                              <#assign taskUrl = meta.getWebUrl() + "/v2/dashboard?recordRef=" + documentId />
                                              <p><a href="${taskUrl}">${taskUrl}</a></p>

                                          </div>
                                       </td>
                                    </tr>
                                 </table>
                              </td>
                           </tr>
                        </table>
                     </td>
                  </tr>
               </table>
            </td>
         </tr>
      </table>
   </body>
</html>
</#escape>
