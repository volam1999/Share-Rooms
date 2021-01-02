<s:if test='%{#session.NOTIFICBODY != null}'>
	<s:if test='%{#session.NOTIFICTYPE == "1"}'>
		<div class="alert alert-info">${NOTIFICBODY}</div>
	</s:if>
	<s:else>
		<div class="alert alert-danger">${NOTIFICBODY}</div>
	</s:else>
	<%
		request.getSession().removeAttribute("NOTIFICBODY");
	%>
</s:if>