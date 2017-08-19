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
	<form class="form-horizontal" role="form" action="${path }/serviceidea/doEdit.action" method="post">
	<input type="hidden" name="id" value="${entity.id }">
	<div class="form-group">
		<label for="serviceideaid" class="col-sm-2 control-label">serviceideaid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="serviceideaid" name="serviceideaid" value="serviceideaid"
				   placeholder="请输入serviceideaid">
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
		<label for="ideadescribe" class="col-sm-2 control-label">ideadescribe</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="ideadescribe" name="ideadescribe" value="ideadescribe"
				   placeholder="请输入ideadescribe">
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
			<a href="${path }/serviceidea/list.action" class="btn btn-default">返回</a>
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