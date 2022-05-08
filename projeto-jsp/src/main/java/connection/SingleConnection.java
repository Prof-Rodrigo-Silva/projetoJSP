package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {
	
	private static String url = "jdbc:postgresql://localhost:5432/projetoJSP";
	private static String password = "postgresql";
	private static String user = "postgres";
	private static Connection connection = null;
	
	public SingleConnection() { //Quando tiver um instancia vai conectar
		conectar();
	}
	
	static {
		conectar();
	}
	
	private static void conectar() {
		try {
			if(connection == null) {
				Class.forName("org.postgresql.Driver");//Carrega o drive de conexão do banco
				connection = DriverManager.getConnection(url, user, password);
				connection.setAutoCommit(false);//Não efetuar alterações no banco sem nosso comando
				System.out.println("Conectou com Sucesso!!");					
			}	
			
		}catch (Exception e) {
			e.printStackTrace();//Mostrar qualquer erro no momento de conectar
		}	
	}
	
	public static Connection getConnetion() {
		return connection;
		
	}
}
