<%@ include file="/html/matches/init.jsp" %>
<%@page import="com.inikah.slayer.service.MatchCriteriaLocalServiceUtil"%>

<%
	List<Profile> matchResults = MatchCriteriaLocalServiceUtil.getMatches(profile.getProfileId());
%>

<liferay-ui:search-container delta="7" emptyResultsMessage="You don't have any matches">

	<liferay-ui:search-container-results 
		total="<%= matchResults.size() %>"
		results="<%= ListUtil.subList(matchResults, searchContainer.getStart(), searchContainer.getEnd()) %>"/>
		
	<liferay-ui:search-container-row className="com.inikah.slayer.model.Profile" modelVar="matches" >
		
		<liferay-ui:search-container-column-text name="Profile-Id" property="profileId">
			<%= matches.getProfileId() %>			
		</liferay-ui:search-container-column-text>
		
		<liferay-ui:search-container-column-text name="Name" property="profileName">
			<%= matches.getProfileName() %>			
		</liferay-ui:search-container-column-text>
	</liferay-ui:search-container-row>
	
	<liferay-ui:search-iterator searchContainer="<%= searchContainer %>" />
</liferay-ui:search-container>