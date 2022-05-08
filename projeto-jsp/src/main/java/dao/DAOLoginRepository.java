package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnection;
import model.ModelLogin;

public class DAOLoginRepository {
	
	private Connection connection;
	
	public DAOLoginRepository() {
		connection = SingleConnection.getConnetion();
	}
	
	public boolean validarAutenticacao(ModelLogin modelLogin) throws Exception{
		
		String sql = "SELECT *FROM model_login WHERE upper(login) = upper(?) AND upper(senha) = upper(?)";
		PreparedStatement pst = connection.prepareStatement(sql);
		pst.setString(1, modelLogin.getLogin());
		pst.setString(2, modelLogin.getSenha());
		
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()) {
			return true;
		}
		
		return false;
		
		
		
		
	}

}
