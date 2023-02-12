using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Vasko_Project
{
    public partial class CheckOut : Page
    {
        SqlClass obj = new SqlClass();
        int LiczbaLosowa;
        protected void Page_Load(object sender, EventArgs e)
        {
            Order_btn.Click += new EventHandler(this.OrderInsert);
            Cancel_Order_btn.Click += new EventHandler(this.CancelOrder);
        }

        protected void CancelOrder(Object sender, EventArgs e) 
        {
            LiczbaLosowa = About.getLL();
            using (SqlConnection connection = new SqlConnection(obj.connectionString))
            {
                SqlCommand cmd = new SqlCommand("delete from items where Order_ID = @order_id", connection);
                cmd.Parameters.AddWithValue("@order_id", LiczbaLosowa);
                connection.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void OrderInsert(Object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            LiczbaLosowa = About.getLL();
            using (SqlConnection connection = new SqlConnection(obj.connectionString))
            {
                connection.Open();

                SqlCommand cmd = new SqlCommand("insert into checkOut (name, email, address, phone, smth, order_id) values (@name, @email, @address, @phone, @smth, @order_id)", connection);
                cmd.Parameters.AddWithValue("@name", txtName.Value);
                cmd.Parameters.AddWithValue("@email", txtEmail.Value);
                cmd.Parameters.AddWithValue("@address", txtAddress.Value);
                cmd.Parameters.AddWithValue("@phone", Convert.ToInt32(txtPhone.Value));
                cmd.Parameters.AddWithValue("@smth", bill.Value);
                cmd.Parameters.AddWithValue("@order_id", LiczbaLosowa);

                cmd.ExecuteNonQuery();

            }
        }
    }
}