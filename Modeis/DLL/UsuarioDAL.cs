﻿using Models;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Security.Cryptography.X509Certificates;

namespace DAL
{
    public class UsuarioDAL
    {
        public void Inserir(Usuario  _usuario)
        {
            try
            {
                SqlConnection cn = new SqlConnection();
                SqlCommand cmd = cn.CreateCommand();



            }
            catch (Exception ex)
            {

                throw new Exception("Ocorreu um erro ao tentar inserir o usuario no banco de dados.", ex);
            }

        }
        public void Alterar(Usuario _usuario)
        {

        }
        public void Excluir(int _id)
        {

        }
        public List<Usuario> BuscarTodos()
        {
            throw new NotImplementedException();
        }
    }
}
