<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>Nome</th>
			<th>Descrição</th>
			<th>Preço</th>
			<th>Qtde</th>
			<th>Total</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${carrinho.itens }" var="item" varStatus="s">
			<tr>
				<td>${item.produto.nome }</td>
				<td>${item.produto.descricao }</td>
				<td><fmt:formatNumber type="currency" value="${item.produto.preco }"/></td>
				<td>${item.quantidade }</td>
				<td><fmt:formatNumber type="currency" value="${item.quantidade * item.produto.preco }"/></td>
				<td>
					<form action="<c:url value="/carrinho/${s.index }"/>" method="POST">
						<button class="link" name="_method" value="DELETE">Remover</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3"></td>
			<th colpsan="2">Total:</th>
			<th><fmt:formatNumber type="currency" value="${carrinho.total }"/></th>
		</tr>
	</tfoot>
</table>
</body>
</html>