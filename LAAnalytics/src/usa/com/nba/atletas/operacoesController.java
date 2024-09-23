package usa.com.nba.atletas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class operacoesController {
	
	@FXML
	public TextField txf_nome;
	
	@FXML
	public TextField txf_sobrenome;
	
	@FXML
	public TextField txf_idade;
	
	@FXML
	public TextField txf_posicao;
	
	@FXML
	public TextField txf_equipe;
	
	@FXML
	public Button btn_cadastrar;
	
	public void cadastrarJogador(ActionEvent event) {
	     String sql = "INSERT INTO jogador_tb (nome_jog, sobrenome_jog, idade_jog, posicao_jog, equipe_jog) VALUES (?, ?, ?, ?, ?)";
	     try (Connection conexao = Conexao.conectar();
	          PreparedStatement pstmt = conexao.prepareStatement(sql)) {
	         //pstmt.setInt(1, 1); comentado pois o id é auto-increment e não está inserido no insert
	         pstmt.setString(1, txf_nome.getText());
	         pstmt.setString(2, txf_sobrenome.getText());
	         pstmt.setString(3, txf_idade.getText());
	         pstmt.setString(4, txf_posicao.getText());
	         pstmt.setString(5, txf_equipe.getText());
	         pstmt.executeUpdate();
	         
	      // Alerta de sucesso
	         Alert alert = new Alert(AlertType.INFORMATION);
	         alert.setTitle("Cadastro Bem-Sucedido");
	         alert.setHeaderText(null);
	         alert.setContentText("Jogador cadastrado com sucesso!");
	         alert.showAndWait();
	         
	     } catch (SQLException e) {
	         e.printStackTrace();
	         
	      // Alerta de erro
	         Alert alert = new Alert(AlertType.ERROR);
	         alert.setTitle("Erro no Cadastro");
	         alert.setHeaderText(null);
	         alert.setContentText("Ocorreu um erro ao cadastrar o jogador: " + e.getMessage());
	         alert.showAndWait();
	     }
	
	
	
}

	class Conexao{
	    private static final String URL = "jdbc:mysql://localhost:3306/laanalytics_db";
	    private static final String USUARIO = "root";
	    private static final String SENHA = "etec";
	
	    public static Connection conectar() throws SQLException {
	        return DriverManager.getConnection(URL, USUARIO, SENHA);
	    }
	
	    public static void fechar(Connection conexao) {
	        if (conexao != null) {
	            try {
	                conexao.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	}

	
	

}

