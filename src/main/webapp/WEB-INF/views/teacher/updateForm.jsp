<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/teacher/update"
		modelAttribute="teacherForm" class="form-horizontal">
		<fieldset>
			<legend>Update User</legend>
			<div class="form-group">
				<form:label path="tid" class="col col-sm-2 control-label">User Id</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.tid)}
					<%--<form:input path="tid" class="form-control" />--%>
					<form:errors path="tid" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.name)}
					<form:input path="name" class="form-control" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.email)}
					<form:input path="email" class="form-control" />
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
            <div class="form-group">
                <form:label path="profession" class="col col-sm-2 control-label">Profession</form:label>
                <div class="col col-sm-10">
                        ${f:h(teacherForm.profession)}
                    <form:input path="profession" class="form-control" />
                    <form:errors path="profession" cssClass="text-danger" />
                </div>
            </div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">Telephone</form:label>
				<div class="col col-sm-10">
						${f:h(teacherForm.tel)}
					<form:input path="tel" class="form-control" />
					<form:errors path="tel" cssClass="text-danger" />
				</div>
			</div>
			<%--<div class="form-group">--%>
				<%--<form:label path="birth" class="col col-sm-2 control-label">User Birth</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:input path="birth" class="form-control" />--%>
					<%--<form:errors path="birth" cssClass="text-danger" />--%>
					<%--(* yyyy-MM-dd)--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:password path="password" class="form-control" />--%>
					<%--<form:errors path="password" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="confirmPassword"--%>
					<%--class="col col-sm-2 control-label">User Password (confirm)</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:password path="confirmPassword" class="form-control" />--%>
					<%--<form:errors path="confirmPassword" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="tid" value="${f:h(teacherForm.tid)}"/>

				<%--<form:hidden path="version" />--%>
					<%--<form:errors path="version" cssClass="text-danger" />--%>
					<input type="submit" class="btn btn-primary" name="confirm"
						value="Confirm" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
