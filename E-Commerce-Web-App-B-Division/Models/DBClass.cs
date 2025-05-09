﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;

namespace E_Commerce_Web_App_B_Division.Models
{
	public class DBClass
	{
        string constr = "Data Source=localhost;Database=e_commerce_b;User ID=root;";
        public bool ExecuteNonQuery(string query, ref string message)
		{
            try
            {
                MySqlConnection con = new MySqlConnection(constr);
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                message = "Error: " + ex.Message;
                return false;
            }
        }

        public DataTable List(string query)
        {
            MySqlConnection con = new MySqlConnection(constr);
            MySqlDataAdapter da = new MySqlDataAdapter(query, con);
            DataTable dtable = new DataTable();
            da.Fill(dtable);
            return dtable;
        }

       public DataRow GetSingleRecord(string query)
        {
            MySqlConnection con = new MySqlConnection(constr);
            MySqlDataAdapter da = new MySqlDataAdapter(query, con);
            DataTable dtable = new DataTable();
            da.Fill(dtable);
            if(dtable.Rows.Count > 0)
            {
                return dtable.Rows[0];
            }
            else
            {
                return null;
            }
        }
    }
}