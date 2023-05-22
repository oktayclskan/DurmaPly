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
        public bool GameAdd(Games g)
        {
            try
            {
                cmd.CommandText = "INSERT INTO Game (Name,Content,Price,GameDateTime,Img,Video,discountRate,noDiscount) VALUES (@name,@content,@price,@gameDateTime,@img,@video,@discountRate,@noDiscount)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@name",g.Name);
                cmd.Parameters.AddWithValue("@content", g.Content);
                cmd.Parameters.AddWithValue("@price", g.Price);
                cmd.Parameters.AddWithValue("@gameDateTime", g.DateTime);
                cmd.Parameters.AddWithValue("@img", g.img);
                cmd.Parameters.AddWithValue("@video", g.Video);
                cmd.Parameters.AddWithValue("@discountRate", g.DiscountRate);
                cmd.Parameters.AddWithValue("@noDiscount", g.noDiscount);
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally { con.Close(); }
        }
        public Games GameGet(int id)
        {
            try
            {
                cmd.CommandText = "Select ID,Name,Content,Price,GameDateTime,Img,Video,discountRate,noDiscount From Game WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Games gm = new Games();
                while (reader.Read())
                {
                    gm.ID = reader.GetInt32(0);
                    gm.Name = reader.GetString(1);
                    gm.Content = reader.GetString(2);
                    gm.Price = reader.GetDecimal(3);
                    gm.DateTime = reader.GetDateTime(4);
                    gm.img = reader.GetString(5);
                    gm.Video = reader.GetString(6);
                    gm.DiscountRate = reader.GetString(7);
                    gm.noDiscount = reader.GetString(8);
                }
                return gm;
            }
            catch
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }
        #endregion
        #region News Metots
       
        #endregion
    }
}
