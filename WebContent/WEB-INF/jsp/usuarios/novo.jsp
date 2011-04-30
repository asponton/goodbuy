<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="usuariosForm" action="<c:url value="/usuarios/novo"/>" method="POST">
	    <fieldset>
	        <legend>Criar novo usuário</legend>
	        <label for="nome">Nome:</label>
	        <input id="nome" class="required" type="text" name="usuario.nome" value="${usuario.nome }"/>
	        
	        <label for="login">Login:</label>
	        <input id="login" class="required" type="text" name="usuario.login" value="${usuario.login }"/>
	        
	        <label for="senha">Senha:</label>
	        <input id="senha" class="required" type="password" name="usuario.senha"/>
	        
	        <label for="confirmacao">Confirme a senha:</label>
	        <input id="confirmacao" equalTo="#senha" type="password"/>
	        
	        <button type="submit">Enviar</button>
	    </fieldset>
	</form>

	<script type="text/javascript">
    	$(’#usuariosForm’).validate();
	</script>
</body>
</html>