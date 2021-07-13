using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PayrollNew.CsClass
{
    public class Connections
    {
        public SqlConnection SqlCon()
        {
            SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            if (Con.State == ConnectionState.Closed) { Con.Open(); }
            return Con;
        }

        public SqlDataReader SqlCommandtextcheck(string query)
        {
            SqlCommand Cmdd = new SqlCommand(query, SqlCon()) { CommandType = CommandType.Text };
            SqlDataReader rdr = Cmdd.ExecuteReader();
            return rdr;
        }

        public SqlCommand SqlCommandtext(string query)
        {
            SqlCommand Cmdd = new SqlCommand(query, SqlCon()) { CommandType = CommandType.Text };
            Cmdd.ExecuteNonQuery();
            return Cmdd;
        }

        public SqlCommand SqlCommandsp(string query)
        {
            SqlCommand Cmdd = new SqlCommand(query, SqlCon()) { CommandType = CommandType.StoredProcedure };
            Cmdd.ExecuteNonQuery();
            return Cmdd;
        }
    }
}