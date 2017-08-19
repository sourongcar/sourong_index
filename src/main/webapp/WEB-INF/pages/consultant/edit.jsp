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
	<form class="form-horizontal" role="form" action="${path }/consultant/doEdit.action" method="post">
	<input type="hidden" name="consultantid" value="${entity.consultantid}">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">name</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="name" name="name" value="name"
				   placeholder="请输入name">
		</div>
	</div>
	<div class="form-group">
		<label for="phone" class="col-sm-2 control-label">phone</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="phone" name="phone" value="phone"
				   placeholder="请输入phone">
		</div>
	</div>
	<div class="form-group">
		<label for="company" class="col-sm-2 control-label">company</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="company" name="company" value="company"
				   placeholder="请输入company">
		</div>
	</div>
	<div class="form-group">
		<label for="consultantpic" class="col-sm-2 control-label">consultantpic</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="consultantpic" name="consultantpic" value="consultantpic"
				   placeholder="请输入consultantpic">
		</div>
	</div>
	<div class="form-group">
		<label for="remarks" class="col-sm-2 control-label">remarks</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="remarks" name="remarks" value="remarks"
				   placeholder="请输入remarks">
		</div>
	</div>
	<div class="form-group">
		<label for="state" class="col-sm-2 control-label">state</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="state" name="state" value="state"
				   placeholder="请输入state">
		</div>
	</div>
	<div class="form-group">
		<label for="jobtitle" class="col-sm-2 control-label">jobtitle</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="jobtitle" name="jobtitle" value="jobtitle"
				   placeholder="请输入jobtitle">
		</div>
	</div>
	
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">提交</button>
			<a href="${path }/consultant/list.action" class="btn btn-default">返回</a>
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