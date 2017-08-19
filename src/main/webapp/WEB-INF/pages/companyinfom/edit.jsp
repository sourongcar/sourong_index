<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>xx编辑页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
<body>
<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
	<form class="form-horizontal" role="form" action="${path }/companyinfom/doEdit.action" method="post">
	<input type="hidden" name="id" value="${entity.id }">
	<div class="form-group">
		<label for="companyid" class="col-sm-2 control-label">companyid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyid" name="companyid" value="companyid"
				   placeholder="请输入companyid">
		</div>
	</div>
	<div class="form-group">
		<label for="companyname" class="col-sm-2 control-label">companyname</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyname" name="companyname" value="companyname"
				   placeholder="请输入companyname">
		</div>
	</div>
	<div class="form-group">
		<label for="servicephone" class="col-sm-2 control-label">servicephone</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="servicephone" name="servicephone" value="servicephone"
				   placeholder="请输入servicephone">
		</div>
	</div>
	<div class="form-group">
		<label for="servicetime" class="col-sm-2 control-label">servicetime</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="servicetime" name="servicetime" value="servicetime"
				   placeholder="请输入servicetime">
		</div>
	</div>
	<div class="form-group">
		<label for="companyaddress" class="col-sm-2 control-label">companyaddress</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyaddress" name="companyaddress" value="companyaddress"
				   placeholder="请输入companyaddress">
		</div>
	</div>
	<div class="form-group">
		<label for="companylogo" class="col-sm-2 control-label">companylogo</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companylogo" name="companylogo" value="companylogo"
				   placeholder="请输入companylogo">
		</div>
	</div>
	<div class="form-group">
		<label for="companyqr" class="col-sm-2 control-label">companyqr</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="companyqr" name="companyqr" value="companyqr"
				   placeholder="请输入companyqr">
		</div>
	</div>
	<div class="form-group">
		<label for="createtime" class="col-sm-2 control-label">createtime</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="createtime" name="createtime" value="createtime"
				   placeholder="请输入createtime">
		</div>
	</div>
	<div class="form-group">
		<label for="lasttime" class="col-sm-2 control-label">lasttime</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="lasttime" name="lasttime" value="lasttime"
				   placeholder="请输入lasttime">
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/companyinfom/list.action" class="btn btn-default">返回</a>
		</div>
	</div>
	</form>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
	<script type="text/javascript">
		jQuery(function($) {
			
		});
	</script>
</body>
</html>