<%@page import="com.liferay.portal.kernel.util.Constants"%>
<%@page import="com.liferay.portal.service.SubscriptionLocalServiceUtil"%>
<%@page import="com.liferay.portal.security.permission.ActionKeys"%>
<%@page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%@page import="javax.portlet.PortletSession"%>
<%@page import="com.liferay.portal.kernel.language.LanguageUtil"%>
<%@page import="com.liferay.portal.kernel.language.UnicodeLanguageUtil"%>
<%@include file="/html/library/init.jsp"%>

<liferay-ui:journal-article articleId="LIBRARY_WELCOME_MESSAGE" 
	groupId="<%= themeDisplay.getScopeGroupId() %>"/>
	
<h1>
	<u>Greeting for Today</u>: 
	<%= ParamUtil.getString(renderRequest, "DAILY_GREETING", "Welcome") %>
</h1>
	
<portlet:renderURL var="updateBookURL">
	<portlet:param name="jspPage" value="<%= LibraryConstants.PAGE_UPDATE %>" />
</portlet:renderURL>

<% String addImagePath = themeDisplay.getPathThemeImage() + "/common/add.png"; %>
<img src="<%= addImagePath %>"/>

<br/>
<c:if test="<%= canAddBook %>">
	<a href="<%= updateBookURL %>">
		<liferay-ui:message key="add-new-book"/> &raquo;
	</a>
</c:if>

<%
	PortletURL listBooksURL = renderResponse.createRenderURL();
	listBooksURL.setParameter("jspPage", "/html/library/list.jsp");
%>
&nbsp;|&nbsp;
<a href="<%= listBooksURL.toString() %>"><liferay-ui:message key="show-all-books"/> &raquo;</a>

<hr/>
<portlet:actionURL var="searchBooksURL" 
	name="<%= LibraryConstants.ACTION_SEARCH_BOOKS %>"  />
	
<aui:form action="<%= searchBooksURL.toString() %>">
	<aui:input name="searchTerm" label="enter-title-to-search"/>
	<aui:button type="submit" value="<%= LanguageUtil.get(locale, LibraryConstants.KEY_SEARCH) %>" />
</aui:form>

<h1>Limit:<%= portletConfig.getInitParameter("max-books-limit") %></h1>

<aui:script>
	AUI().ready(function(A){
		Liferay.on("sayHelloEvent", function(payload){
			alert('I am in the other Porltet:' + payload.helloTo);
		});
	});
</aui:script>

<c:if test="<%= themeDisplay.isSignedIn() %>">
	<%
		boolean isSubscribed = 
			SubscriptionLocalServiceUtil.isSubscribed(
				company.getCompanyId(), user.getUserId(), 
				LMSBook.class.getName(), scopeGroupId);
		String currentURL = themeDisplay.getURLCurrent();
	%>
	<c:choose>
		<c:when test="<%= isSubscribed %>">
			<portlet:actionURL var="unsubscribeURL" name="subscribe">
				<portlet:param name="<%= Constants.CMD %>" 
						value="<%= Constants.UNSUBSCRIBE %>" />
				<portlet:param name="redirectURL" 
						value="<%= currentURL %>" />
			</portlet:actionURL>
	
			<liferay-ui:icon
				image="unsubscribe"
				label="<%= true %>"
				url="<%= unsubscribeURL %>" />
		</c:when>
		<c:otherwise>
			<portlet:actionURL var="subscribeURL" name="subscribe">
				<portlet:param name="<%= Constants.CMD %>" 
					value="<%= Constants.SUBSCRIBE %>" />
				<portlet:param name="redirectURL" 
					value="<%= currentURL %>" />
			</portlet:actionURL>
	
			<liferay-ui:icon
				image="subscribe"
				label="<%= true %>"
				url="<%= subscribeURL %>" />
		</c:otherwise>
	</c:choose>
</c:if>