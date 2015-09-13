<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<title>GeProFi</title>
<decorator:head />
</head>
<div id="geral">
		<!-- 0 -->
		<div id="topo"><%@ include file="header.jsp"%></div>
		<!-- 1 -->
		<div id="menu"><%@ include file="menu.jsp"%></div>
		<!-- 2 -->
		<div id="conteudo" >
			<div id="esquerda">
				<!-- 3 -->
				<div id="info"><%@ include file="info.jsp"%></div>
				<!-- 7 -->
			</div>

			<div id="sub-conteudo">
				<decorator:body />
			</div>
			<!-- 4 -->
			</div>

		<div id="rodape"><%@ include file="rodape.jsp"%></div>
		<!-- 6 -->
	</div>
	 <script src=<c:url value='/js/bootstrap.min.js'/>></script>
	
	   <script src=<c:url value='/js_new/chartjs/chart.min.js'/>> </script>
    <!-- bootstrap progress js -->
    <script src=<c:url value='/js_new/progressbar/bootstrap-progressbar.min.js'/>></script>
    <script src=<c:url value='/js_new/nicescroll/jquery.nicescroll.min.js'/>></script>
    <!-- icheck -->
    <script src=<c:url value='/js_new/icheck/icheck.min.js'/>></script>

    <script src=<c:url value='/js_new/custom.js'/>></script>
</body>
</html>