<%@include file="/WEB-INF/components/header.html" %>
<p>hello world</p>
<p>
    <%
        out.println("path info: " + request.getPathInfo());
    %>
</p>
