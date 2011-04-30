<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="produtosForm" action="<c:url value="/produtos"/>" method="post">
		<fieldset>
			<legend>Adicionar Produto</legend>
			
			<label for="nome">Nome:</label>
			<input id="nome" class="required" minlength="3" type="text" name="produto.nome" value="${produto.nome }"/>
			
			<label for="descricao">Descrição:</label>
			<textarea id="descricao" class="required" maxlength="40" name="produto.descricao" >${produto.nome }</textarea>
			
			<label for="preco">Preço:</label>
			<input id="preco" min="0" type="text" name="produto.preco" value="${produto.preco }">
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
	<script type="text/javascript">
	$('#produtosForm').validate();
	</script>
</body>
</html>