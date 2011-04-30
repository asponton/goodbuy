package br.com.caelum.goodbuy.modelo;

import javax.persistence.Entity;
import javax.persistence.Id;




@Entity
public class Usuario {
	
	@Id
	private String login;
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	private String senha;
	private String nome;
	

}
