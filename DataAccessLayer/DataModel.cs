using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class DataModel
    {
        SqlConnection con; SqlCommand cmd;
        public DataModel()
        {
            con = new SqlConnection(ConnectionString.Constr);
            cmd = con.CreateCommand();
        }
        #region Admin Metots

        #endregion
        #region Member Metots

        #endregion
        #region Games Metots
        public List<Games> GameList()
        {
            List<Games> games = new List<Games>();
            try
            {
                cmd.CommandText = "Select * From Game";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Games g = new Games();
                    g.ID = reader.GetInt32(0);
                    g.Name = reader.GetString(1);
                    g.Content = reader.GetString(2);
                    g.Price = reader.GetDecimal(3);
                    g.DateTime = reader.GetDateTime(4);
                    g.img = reader.GetString(5);
                    g.Video = reader.GetString(6);
                    g.DiscountRate = reader.GetString(7);
                    g.noDiscount = reader.GetString(8);
                    games.Add(g);
                }
                return games;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }

        #endregion
        #region News Metots
       
        #endregion
    }
}
