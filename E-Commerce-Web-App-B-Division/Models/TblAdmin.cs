using Mysqlx.Session;
using MySqlX.XDevAPI.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division.Models
{
	public class TblAdmin
	{
        
        public int Id { get; set; }
        public string Name { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        DBClass db = new DBClass();
        string query;
        public bool Insert(ref string message) {
            query = "INSERT INTO admins(Name, Username, Password) ";
            query += "VALUES('" +Name + "', '" + Username + "', '" + Password + "')";            
            bool result = db.ExecuteNonQuery(query, ref message);
            if (result)
                message = "Record Inserted Successfully";
            return result;
        }

        public bool Update(ref string message)
        {
            query = "UPDATE admins SET Name = '" + Name + "', ";
            query += "Username = '" + Username +"', ";
            query += "Password = '" + Password + "' ";
            query += "WHERE Id = " + Id;
            bool result = db.ExecuteNonQuery(query, ref message);
            if (result)
                message = "Record Updated Successfully";
            return result;
        }

        public bool Delete(int id, ref string message)
        {
            query = "DELETE FROM admins WHERE Id = " + id;
            bool result = db.ExecuteNonQuery(query, ref message);
            if (result)
                message = "Record Delete Successfully";
            return result;

        }

        public void GetById(int id)
        {
            query = "SELECT * FROM admins WHERE Id = " + id;
            DataRow dr = db.GetSingleRecord(query);
            if(dr != null)
            {
                this.Id = int.Parse(dr["Id"].ToString());
                this.Name = dr["Name"].ToString();
                this.Username = dr["Username"].ToString();
                this.Password = dr["Password"].ToString();
            }            
        }

        public DataTable List()
        {
            query = "SELECT *, ROW_NUMBER() OVER(ORDER BY Name) AS SrNo FROM admins ORDER BY Name";
            return db.List(query);
        }

        public bool ValidateAdmin(string username, string password, ref string message)
        {
            query = "SELECT * FROM Admins WHERE Username = '" + username.Replace("'", "''") + "'";
            DataTable dtable = db.List(query);
            if(dtable.Rows.Count > 0)
            {
                string dbPassword = dtable.Rows[0]["Password"].ToString();
                if (password.Equals(dbPassword))
                {
                    this.Id = int.Parse(dtable.Rows[0]["Id"].ToString());
                    this.Name = dtable.Rows[0]["Name"].ToString();
                    this.Username = dtable.Rows[0]["Username"].ToString();
                    return true;
                }
                else
                {
                    message = "Invalid password";
                    return false;
                }
            }
            else
            {
                message = "Invalid username";
                return false;
            }
        }
    }
} 