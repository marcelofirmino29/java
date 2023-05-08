/*Esse código é uma classe Java chamada "Licenca" que tem 6 atributos privados (id, nome, serialnumber, fabricante, 
 statuslicenca e tombamento) e seus respectivos getters e setters públicos.
Os atributos são usados para armazenar informações de uma licença, como o seu ID, nome, número de série, fabricante, status
da licença e o número de tombamento. Os métodos getter são usados para obter o valor dos atributos e os métodos setter 
são usados para definir o valor dos atributos.
Essa classe é usada como uma entidade ou modelo em um aplicativo Java que lida com licenças. Os objetos dessa classe podem 
ser criados e manipulados para armazenar e recuperar informações de licenças em um banco de dados, por exemplo.
*/


package br.com.licencinha.bean;

public class Licenca {

	private int id;
	private String nome;
	private String serialnumber;
	private String fabricante;
	private String statuslicenca;
	private String tombamento;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSerialnumber() {
		return serialnumber;
	}
	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
	}
	public String getFabricante() {
		return fabricante;
	}
	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	public String getStatuslicenca() {
		return statuslicenca;
	}
	public void setStatuslicenca(String statuslicenca) {
		this.statuslicenca = statuslicenca;
	}
	public String getTombamento() {
		return tombamento;
	}
	public void setTombamento(String tombamento) {
		this.tombamento = tombamento;
	}
	
}
