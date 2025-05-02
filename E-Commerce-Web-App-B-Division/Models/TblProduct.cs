using Org.BouncyCastle.Bcpg;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace E_Commerce_Web_App_B_Division.Models
{
    public class TblProduct
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int CategoryId { get; set; }
        public float MRP { get; set; }
        public float Price { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public string InStock { get; set; }
        public int SrNo { get; set; }

        string query;
        DBClass db = new DBClass();

        public bool Insert(ref string message)
        {
            query = "INSERT INTO products(CategoryId, Name, MRP, Price, Description, InStock, SrNo, ImagePath) ";
            query += "VALUES(" + CategoryId + ", '" + Name + "', " + MRP + ", " + Price + ", '" + Description + "', '" + InStock + "', " + SrNo + ", '" + ImagePath + "')";
            bool result = db.ExecuteNonQuery(query, ref message);
            return result;
        }

        public bool Update(ref string message)
        {
            query = "UPDATE products SET ";
            query += "CategoryId = " + CategoryId + ", ";
            query += "Name = '" + Name + "', ";
            query += "MRP = " + MRP + ", ";
            query += "Price = " + Price + ", ";
            query += "Description = '" + Description + "', ";
            query += "InStock = '" + InStock + "', ";
            query += "ImagePath = '" + ImagePath + "', ";
            query += "SrNo = " + SrNo + " ";
            query += "WHERE Id = " + Id;
            bool result = db.ExecuteNonQuery(query, ref message);
            return result;
        }

        public bool Delete(ref string message)
        {
            query = "DELETE FROM products WHERE Id = " + Id;
            bool result = db.ExecuteNonQuery(query, ref message);
            return result;
        }

        public DataTable List()
        {
            query = "SELECT P.*, C.Name AS CategoryName, ROW_NUMBER() OVER(ORDER BY C.SrNo, P.SrNo) AS SerialNo FROM products AS P INNER JOIN categories AS C ON P.CategoryId = C.Id ORDER BY C.SrNo, P.SrNo";
            DataTable dtable = db.List(query);
            return dtable;
        }

        public void GetById(int id)
        {
            query = "SELECT * FROM products WHERE Id = " + id;
            DataRow dr = db.GetSingleRecord(query);
            if (dr != null)
            {
                this.Id = int.Parse(dr["Id"].ToString());
                this.CategoryId = int.Parse(dr["CategoryId"].ToString());
                this.Name = dr["Name"].ToString();
                this.MRP = float.Parse(dr["MRP"].ToString());
                this.Price = float.Parse(dr["Price"].ToString());
                this.Description = dr["Description"].ToString();
                this.InStock = dr["InStock"].ToString();
                this.SrNo = int.Parse(dr["SrNo"].ToString());
                this.ImagePath = dr["ImagePath"].ToString();
            }
        }

    }
}