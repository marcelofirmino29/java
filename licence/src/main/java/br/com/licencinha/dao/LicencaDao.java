/*Este é um código em Java que implementa um DAO (Data Access Object) para acessar e manipular dados de uma tabela chamada 
"licenca" em um banco de dados MySQL.
A classe LicencaDao contém vários métodos estáticos que retornam objetos do tipo Licenca ou listas de objetos Licenca.
O método getConnection() retorna uma conexão com o banco de dados MySQL.
Os métodos apagarLicenca(), salvarLicenca(), getLicencabyId() e updateLicenca() são responsáveis por excluir, salvar, 
recuperar e atualizar registros da tabela "licenca", respectivamente.
O método getAllLicencas() retorna uma lista com todos os registros da tabela "licenca".
O método getRecords() retorna uma lista de registros da tabela "licenca" limitados por um intervalo de valores especificado 
pelos parâmetros start e total.
O código utiliza as bibliotecas do JDBC (Java Database Connectivity) para conectar e executar comandos SQL no banco de dados.
*/

package br.com.licencinha.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.licencinha.bean.Licenca;

public class LicencaDao {

	 public static Connection getConnection() {
		 Connection con = null;
		 
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cad_licenca", "root",""); 
		 }catch (Exception e) {
			System.out.println(e);
		 }
		 return con;
	 }
	 
	 public static int apagarLicenca(Licenca lic) {
		 int status = 0;
		 
		 try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM licenca WHERE id=?");
			ps.setInt(1, lic.getId());
			status=ps.executeUpdate();
		 } catch (Exception e) {
			System.out.println(e);
		}
		return status;
	 }
	 
	 public static int salvarLicenca(Licenca lic) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO cad_licenca.licenca (nome, serialnumber, "
					+ "fabricante, statuslicenca, tombamento) VALUES (?,?,?,?,?)");

			ps.setString(1, lic.getNome());
			ps.setString(2, lic.getSerialnumber());
			ps.setString(3, lic.getFabricante());
			ps.setString(4, lic.getStatuslicenca());
			ps.setString(5, lic.getTombamento());
			
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	 }
	 
	 
	 
	 public static Licenca getLicencabyId(int id) {
		 Licenca licenca = null;
		 
		 try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM licenca WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				licenca = new Licenca();
				licenca.setId(rs.getInt("id"));
				licenca.setNome(rs.getString("nome"));
				licenca.setSerialnumber(rs.getString("serialnumber"));
				licenca.setFabricante(rs.getString("fabricante"));	
				licenca.setStatuslicenca(rs.getString("statuslicenca"));
				licenca.setTombamento(rs.getString("tombamento"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return licenca;
	 }
	 
	 public static int updateLicenca(Licenca lic) {
		 int status = 0;
		 
		 try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE licenca SET nome=?, serialnumber=?, "
					+ "fabricante=?, statuslicenca=?, tombamento=? WHERE id=?");
			ps.setString(1,lic.getNome());
			ps.setString(2,lic.getSerialnumber());
			ps.setString(3,lic.getFabricante());
			ps.setString(4,lic.getStatuslicenca());
			ps.setString(5,lic.getTombamento());
			ps.setInt(6, lic.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println();
		}
		return status;
	 }
	 
	
	 public static List<Licenca> getAllLicencas(){
		List<Licenca> list = new ArrayList<Licenca>();
		try {
			Connection connection = getConnection();
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM cad_licenca.licenca");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Licenca licenca = new Licenca();
				licenca.setId(rs.getInt("id"));
				licenca.setNome(rs.getString("nome"));
				licenca.setSerialnumber(rs.getString("serialnumber"));
				licenca.setFabricante(rs.getString("fabricante"));
				licenca.setStatuslicenca(rs.getString("statuslicenca"));
				licenca.setTombamento(rs.getString("tombamento"));
				
				list.add(licenca);
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		return list;
	 }
	 
	 public static List<Licenca> getRecords(int start, int total){
		 List<Licenca> list = new ArrayList<Licenca>();
		 
		 try {
			 Connection con = getConnection();
			 PreparedStatement ps = con.prepareStatement("SELECT * FROM licenca LIMIT "+(start-1)+","+total);
			 ResultSet rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 Licenca licenca = new Licenca();
				 licenca.setId(rs.getInt("id"));
				 licenca.setNome(rs.getString("nome"));
				 licenca.setSerialnumber(rs.getString("serialnumber"));
				 licenca.setFabricante(rs.getString("fabricante"));
				 licenca.setStatuslicenca(rs.getString("statuslicenca"));
				 licenca.setTombamento(rs.getString("tombamento"));
			
				 list.add(licenca);
			 }
			 con.close();
		 }catch (Exception e) {
			 System.out.println(e);
		}
		return list;
	 }
	 
	 public static List<Licenca> getFilteredLicencas(String filtro, int start, int total) {
		  List<Licenca> list = new ArrayList<Licenca>();
		  try {
			Connection con = getConnection();
		    PreparedStatement ps = con.prepareStatement(
		      "select * from licenca where nome like ? or serialnumber like ? or tombamento like ? limit ?,?"
		    );
		    ps.setString(1, "%" + filtro + "%");
		    ps.setString(2, "%" + filtro + "%");
		    ps.setString(3, "%" + filtro + "%");
		    ps.setInt(4, start - 1);
		    ps.setInt(5, total);
		    ResultSet rs = ps.executeQuery();
		    while (rs.next()) {
		    	Licenca licenca = new Licenca();
				licenca.setId(rs.getInt("id"));
				licenca.setNome(rs.getString("nome"));
				licenca.setSerialnumber(rs.getString("serialnumber"));
				licenca.setFabricante(rs.getString("fabricante"));
				licenca.setStatuslicenca(rs.getString("statuslicenca"));
				licenca.setTombamento(rs.getString("tombamento"));
		      list.add(licenca);
		    }
		    con.close();
		  } catch (Exception e) {
		    System.out.println(e);
		  }
		  return list;
		}

}
