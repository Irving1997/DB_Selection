<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/student/delete"
		modelAttribute="studentForm" class="form-horizontal">
		<fieldset>
			<legend>Delete User</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>
				<div class="col col-sm-10">${f:h(studentForm.name)}</div>
			</div>
			<%--<div class="form-group">--%>
				<%--<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>--%>
				<%--<div class="col col-sm-10">${f:h(studentForm.SID)}</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>--%>
				<%--<div class="col col-sm-10">${f:h(studentForm.email)}</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="birth" class="col col-sm-2 control-label">User Birth</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<fmt:formatDate pattern="yyyy-MM-dd" value="${studentForm.birth}" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>--%>
				<%--<div class="col col-sm-10">******</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="confirmPassword"--%>
					<%--class="col col-sm-2 control-label">User Password (confirm)</form:label>--%>
				<%--<div class="col col-sm-10">******</div>--%>
			<%--</div>--%>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">

					<sec:authorize ifAllGranted="ROLE_ADMIN">
						<form:hidden path="SID" value="${f:h(studentForm.SID)}" />
						<%--<form:hidden path="version" value="${f:h(user.version)}" />--%>
						<input type="submit" class="btn btn-danger" name="delete"
							   value="删除" /> <input type="submit" class="btn btn-default"
													name="redirectToList" value="返回列表" />
					</sec:authorize>

				</div>
			</div>
		</fieldset>
	</form:form>
</div>
