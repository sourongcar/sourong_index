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
	<form class="form-horizontal" role="form" action="${path }/aboutsourong/doEdit.action" method="post">
	<input type="hidden" name="id" value="${entity.id }">
	<div class="form-group">
		<label for="sourongid" class="col-sm-2 control-label">sourongid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="sourongid" name="sourongid" value="sourongid"
				   placeholder="请输入sourongid">
		</div>
	</div>
	<div class="form-group">
		<label for="picname" class="col-sm-2 control-label">picname</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="picname" name="picname" value="picname"
				   placeholder="请输入picname">
		</div>
	</div>
	<div class="form-group">
		<label for="title" class="col-sm-2 control-label">title</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="title" name="title" value="title"
				   placeholder="请输入title">
		</div>
	</div>
	<div class="form-group">
		<label for="specificdescribe" class="col-sm-2 control-label">specificdescribe</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="specificdescribe" name="specificdescribe" value="specificdescribe"
				   placeholder="请输入specificdescribe">
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
			<a href="${path }/aboutsourong/list.action" class="btn btn-default">返回</a>
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