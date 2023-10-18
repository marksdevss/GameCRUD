package br.com.gamezone.dao.Administrador;

import br.com.gamezone.conexao.ConexaoGame;
import br.com.gamezone.model.administrador.AdministradorModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;


public class AdministradorDAO {
    
    
     public ResultSet loginAdministrador( AdministradorModel administradorModel) {

        String sql = "SELECT * FROM Administrador WHERE usuario = ? and senha = ?  ";

        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;

        try {
            con = ConexaoGame.ConexaoSQL();
            ps = con.prepareStatement(sql);

            ps.setString(1, administradorModel.getUsuario());
            ps.setString(2, administradorModel.getSenha());

            rs = ps.executeQuery();

        } catch (Exception e) {
            System.out.println("Erro autenticacao do funcionario " + e);
        }

        return rs;
    } 
    
   
    
    
}
