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
	<form class="form-horizontal" role="form" action="${path }/product/doEdit.action" method="post">
	<input type="hidden" name="id" value="${entity.id }">
	<div class="form-group">
		<label for="productid" class="col-sm-2 control-label">productid</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="productid" name="productid" value="productid"
				   placeholder="请输入productid">
		</div>
	</div>
	<div class="form-group">
		<label for="productname" class="col-sm-2 control-label">productname</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="productname" name="productname" value="productname"
				   placeholder="请输入productname">
		</div>
	</div>
	<div class="form-group">
		<label for="productintro" class="col-sm-2 control-label">productintro</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="productintro" name="productintro" value="productintro"
				   placeholder="请输入productintro">
		</div>
	</div>
	<div class="form-group">
		<label for="icon" class="col-sm-2 control-label">icon</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="icon" name="icon" value="icon"
				   placeholder="请输入icon">
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
			<a href="${path }/product/list.action" class="btn btn-default">返回</a>
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