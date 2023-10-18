
package br.com.gamezone.dao.Gerente;

import br.com.gamezone.conexao.ConexaoGame;
import br.com.gamezone.model.gerente.GerenteModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;



public class GerenteDAO {
    
     public ResultSet loginGerente(GerenteModel gerenteModel) {

        String sql = "SELECT * FROM gerente WHERE usuario = ? and senha = ?  ";

        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;

        try {
            con = ConexaoGame.ConexaoSQL();
            ps = con.prepareStatement(sql);

            ps.setString(1, gerenteModel.getUsuario());
            ps.setString(2, gerenteModel.getSenha());

            rs = ps.executeQuery();

        } catch (Exception e) {
            System.out.println("Erro autenticacao do funcionario " + e);
        }

        return rs;
    } 
    
   
}
