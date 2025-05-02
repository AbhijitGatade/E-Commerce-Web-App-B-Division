using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace E_Commerce_Web_App_B_Division.Models
{
	public class TblCategories
	{
		public int Id { get; set; }
        public string Name { get; set; }
        public int SrNo { get; set; }

        DBClass db = new DBClass();
        string query;

        public bool Insert(ref string message)
        {
            query = "INSERT INTO categories(Name, SrNo) ";
            query += "VALUES('" + Name + "', " + SrNo + ")";
            bool result = db.ExecuteNonQuery(query, ref message);
            if (result)
                message = "Record Inserted Successfully";
            return result;
        }

        public bool Update(ref string message)
        {
            query = "UPDATE categories SET Name = '" + Name + "', ";
            query += "SrNo = " + SrNo + " ";
            query += "WHERE Id = " + Id;
            bool result = db.ExecuteNonQuery(query, ref message);
            if (result)
                message = "Record Updated Successfully";
            return result;
        }

        public bool Delete(int id, ref string message)
        {
            query = "DELETE FROM categories WHERE Id = " + id;
            bool result = db.ExecuteNonQuery(query, ref message);
            if (result)
                message = "Record Deleted Successfully";
            return result;
        }

        public void GetById(int id)
        {
            query = "SELECT * FROM categories WHERE Id = " + id;
            DataRow dr = db.GetSingleRecord(query);
            if (dr != null)
            {
                this.Id = int.Parse(dr["Id"].ToString());
                this.Name = dr["Name"].ToString();
                this.SrNo = int.Parse(dr["SrNo"].ToString());
            }
        }

        public DataTable List()
        {
            query = "SELECT * FROM categories ORDER BY SrNo";
            return db.List(query);
        }

    }
}