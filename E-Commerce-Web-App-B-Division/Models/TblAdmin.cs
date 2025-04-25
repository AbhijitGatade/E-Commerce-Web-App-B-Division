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
        public bool Insert() {
            query = "INSERT INTO admins(Name, Username, Password) ";
            query += "VALUES('" +Name + "', '" + Username + "', '" + Password + "')";            
            bool result = db.ExecuteNonQuery(query);
            return result;
        }

        public bool Update()
        {
            query = "UPDATE admins SET Name = '" + Name + "', ";
            query += "Username = '" + Username +"', ";
            query += "Password = '" + Password + "' ";
            query += "WHERE Id = " + Id;
            return db.ExecuteNonQuery(query);
        }

        public bool Delete()
        {
            query = "DELETE FROM admins WHERE Id = " + Id;
            return db.ExecuteNonQuery(query);
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
    }
} 