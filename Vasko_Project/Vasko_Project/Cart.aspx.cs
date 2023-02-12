using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Vasko_Project
{
    public partial class About : Page
    {
        SqlClass obj = new SqlClass();
        static int LiczbaLosowa;
        double res, num;
        double delivery = 0.5;
        double sum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Items_btn.Click += new EventHandler(this.ItemsInsert);
            deliveryCostTD.InnerHtml = '$' + delivery.ToString();

        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            double[] fruitsPrice = {8,7,3.5,5,4.5,7};
            string[] lista = { itemNumStw.Value, itemNumBer.Value, itemNumLem.Value, itemNumKiwi.Value, itemNumGA.Value, itemNumRasp.Value };
            for (int i = 0; i < lista.Length; i++)
            {
                sum += Parsowanie(lista[i])* fruitsPrice[i];
                
            }
            subtotalTD.InnerHtml = '$' + sum.ToString("F2");
            sum += 0.5;
            totalTD.InnerHtml = '$'+sum.ToString("F2");
        }

        protected void ItemsInsert(Object sender, EventArgs e) 
        {
            Random rng = new Random(DateTime.UtcNow.Second);
            Random rng2 = new Random(DateTime.UtcNow.Minute);
            Random rng3 = new Random(DateTime.UtcNow.Millisecond);
            LiczbaLosowa = (int)rng.Next() + (int)rng2.Next() + (int)rng3.Next();
            using (SqlConnection connection = new SqlConnection(obj.connectionString))
            {
                SqlCommand cmd = new SqlCommand("insert into items (Strawberry, Grape, Lemon, Kiwi, Green_Apple, Raspberry, Order_ID) values (@strawberry, @grape, @lemon, @kiwi, @green_apple, @raspberry, @order_id)", connection);
                cmd.Parameters.AddWithValue("@strawberry", itemNumStw.Value);
                cmd.Parameters.AddWithValue("@grape", itemNumBer.Value);
                cmd.Parameters.AddWithValue("@lemon", itemNumLem.Value);
                cmd.Parameters.AddWithValue("@kiwi", itemNumKiwi.Value);
                cmd.Parameters.AddWithValue("@green_apple", itemNumGA.Value);
                cmd.Parameters.AddWithValue("@raspberry", itemNumRasp.Value);
                cmd.Parameters.AddWithValue("@order_id", LiczbaLosowa);
                connection.Open();
                cmd.ExecuteNonQuery();
            }

            string redirectURL = "CheckOut.aspx";
            Response.Redirect(redirectURL, false);
        }

        private double Parsowanie(string elem) 
        {
            if (double.TryParse(elem, out num)) 
            {
                res = num;
            }
            else
            {
                res = 0;
            }
            return res;
        }

        public static int getLL() 
        {
            return LiczbaLosowa;
        }

    

    }
}