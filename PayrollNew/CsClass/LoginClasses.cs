using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace PayrollNew.CsClass
{
    public class LoginClasses
    {
        Connections Conn = new Connections();
        SqlCommand cmd;
        public string Active(string user)
        {
            string da = String.Empty;
            cmd = new SqlCommand("sp_ActiveStatus", Conn.SqlCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", user);
            DataTable _dtVersion = new DataTable();
            SqlDataAdapter _da = new SqlDataAdapter(cmd);
            _da.Fill(_dtVersion);
            da = _dtVersion.Rows[0]["ActiveIdle"].ToString().Trim();
            return da;
        }

        public string Hashresult(string pwd)
        {
            UTF8Encoding encoder = new UTF8Encoding();
            SHA256Managed sha256hasher = new SHA256Managed();
            byte[] hashedDataBytes = sha256hasher.ComputeHash(encoder.GetBytes(pwd));
            string hash = Convert.ToBase64String(hashedDataBytes);
            return hash;
        }

        //public string GetLanIPAddressIvp4()
        //{
        //    string IP4Address;
        //    IP4Address = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        //    if (IP4Address == "" || IP4Address == null)
        //        IP4Address = Request.ServerVariables["REMOTE_ADDR"];

        //    return IP4Address;
        //}
    }
}