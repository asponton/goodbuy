package br.com.caelum.goodbuy.interceptors;

import java.lang.annotation.Annotation;

import br.com.caelum.goodbuy.autenticacao.UsuarioWeb;
import br.com.caelum.goodbuy.controller.UsuariosController;
import br.com.caelum.goodbuy.customannotations.Restrito;
import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;

@Intercepts
public class AutenticacaoInterceptor implements Interceptor {
	
	private final UsuarioWeb usuario;
	private final Result result;

	public AutenticacaoInterceptor(UsuarioWeb usuario, Result result) {
	    this.usuario = usuario;
		this.result = result;
	}

	@Override
	public boolean accepts(ResourceMethod method) {
	    return !usuario.isLogado() && method.containsAnnotation(Restrito.class);
	}


	@Override
	public void intercept(InterceptorStack arg0, ResourceMethod arg1,
			Object arg2) throws InterceptionException {
		result.redirectTo(UsuariosController.class).loginForm();
	}

}
