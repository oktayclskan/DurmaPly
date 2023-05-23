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
        #region Publisher Metots
        public List<Publisher> PublisherList()
        {
            List<Publisher> publishers = new List<Publisher>();
            try
            {
                cmd.CommandText = "Select * From Publisher";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Publisher pb = new Publisher();
                    pb.ID = reader.GetInt32(0);
                    pb.Name = reader.GetString(1);
                    pb.Img = reader.GetString(2);
                    publishers.Add(pb);
                }
                return publishers;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public bool PublisherAdd(Publisher pb)
        {
            try
            {
                cmd.CommandText = "INSERT INTO Publisher (Name,Img) VALUES(@name,@img)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@name",pb.Name);
                cmd.Parameters.AddWithValue("@img",pb.Img);
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }
        public Publisher PublisherGet(int id)
        {
            try
            {
                cmd.CommandText = "Select ID,Name,Img From Publisher WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Publisher pb = new Publisher();
                while (reader.Read())
                {
                    pb.ID = reader.GetInt32(0);
                    pb.Name = reader.GetString(1);
                    pb.Img = reader.GetString(2);
                }
                return pb;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public bool PublisherUpdate(Publisher pb)
        {
            try
            {
                cmd.CommandText = "UPDATE Publisher Set Name=@name,Img=@img WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",pb.ID);
                cmd.Parameters.AddWithValue("@name",pb.Name);
                cmd.Parameters.AddWithValue("@img",pb.Img);
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
        public bool PublisherDlt(int id)
        {
            try
            {
                cmd.CommandText = "Delete From Publisher Where ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",id);
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
                    g.DateTime = reader.GetDateTime(3);
                    g.img = reader.GetString(4);
                    g.Video = reader.GetString(5);
                    g.DiscountRate = reader.GetDecimal(6);
                    g.noDiscount = reader.GetDecimal(7);
                    g.discountPercentage = reader.GetString(8);
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
                cmd.CommandText = "INSERT INTO Game (Name,Content,GameDateTime,Img,Video,discountRate,noDiscount,discountPercentage ) VALUES (@name,@content,@gameDateTime,@img,@video,@discountRate,@noDiscount,@discountPercentage )";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@name", g.Name);
                cmd.Parameters.AddWithValue("@content", g.Content);
                cmd.Parameters.AddWithValue("@gameDateTime", g.DateTime);
                cmd.Parameters.AddWithValue("@img", g.img);
                cmd.Parameters.AddWithValue("@video", g.Video);
                cmd.Parameters.AddWithValue("@discountRate", g.DiscountRate);
                cmd.Parameters.AddWithValue("@noDiscount", g.noDiscount);
                cmd.Parameters.AddWithValue("@discountPercentage", g.discountPercentage);
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
                cmd.CommandText = "Select ID,Name,Content,GameDateTime,Img,Video,discountRate,noDiscount,discountPercentage From Game WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Games gm = new Games();
                while (reader.Read())
                {
                    gm.ID = reader.GetInt32(0);
                    gm.Name = reader.GetString(1);
                    gm.Content = reader.GetString(2);
                    gm.DateTime = reader.GetDateTime(3);
                    gm.img = reader.GetString(4);
                    gm.Video = reader.GetString(5);
                    gm.DiscountRate = reader.GetDecimal(6);
                    gm.noDiscount = reader.GetDecimal(7);
                    gm.discountPercentage = reader.GetString(8);
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
        public bool GameUpdate(Games g)
        {
            try
            {
                cmd.CommandText = "UPDATE Game Set Name=@name,Content=@content,Img=@img,Video=@video,discountRate=@discountRate,noDiscount=@noDiscount,discountPercentage=@discountPercentage WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",g.ID);
                cmd.Parameters.AddWithValue("@name", g.Name);
                cmd.Parameters.AddWithValue("@content", g.Content);
                cmd.Parameters.AddWithValue("@img", g.img);
                cmd.Parameters.AddWithValue("@video", g.Video);
                cmd.Parameters.AddWithValue("@discountRate", g.DiscountRate);
                cmd.Parameters.AddWithValue("@noDiscount", g.noDiscount);
                cmd.Parameters.AddWithValue("@discountPercentage", g.discountPercentage);
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
        public bool GameDlt(int id)
        {
            try
            {
                cmd.CommandText = "Delete From Game WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",id);
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
        #endregion
        #region News Metots
        public List<news> NewsList()
        {
            List<news> news = new List<news>();
            try
            {
                cmd.CommandText = "Select * From News";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    news n = new news();
                    n.ID = reader.GetInt32(0);
                    n.NewsViews = reader.GetInt32(1);
                    n.Title = reader.GetString(2);
                    n.Content = reader.GetString(3);
                    n.NewsDateTime = reader.GetDateTime(4);
                    n.Img = reader.GetString(5);
                    news.Add(n);
                }
                return news;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public news NewsGet(int id)
        {
            try
            {
                cmd.CommandText = "Select ID,NewsViews,Title,Content,newsDateTime,Img From News WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                news n = new news();
                while (reader.Read())
                {
                    n.ID = reader.GetInt32(0);
                    n.NewsViews = reader.GetInt32(1);
                    n.Title = reader.GetString(2);
                    n.Content = reader.GetString(3);
                    n.NewsDateTime = reader.GetDateTime(4);
                    n.Img = reader.GetString(5);
                }
                return n;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public bool NewsAdd(news n)
        {
            try
            {
                cmd.CommandText = "INSERT INTO News (NewsViews,Title,Content,newsDateTime,Img) VALUES (@newsViews,@title,@content,@newsdatetime,@img)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@newsViews",n.NewsViews);
                cmd.Parameters.AddWithValue("@title", n.Title);
                cmd.Parameters.AddWithValue("@content", n.Content);
                cmd.Parameters.AddWithValue("@newsdatetime", n.NewsDateTime);
                cmd.Parameters.AddWithValue("@img", n.Img);
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
        public bool NewsUpdate(news n)
        {
            try
            {
                cmd.CommandText = "Update News Set Title=@title,Content=@content,Img=@img WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",n.ID);
                cmd.Parameters.AddWithValue("@content",n.Content);
                cmd.Parameters.AddWithValue("@img",n.Img);
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }
        public bool NewsDlt(int id)
        {
            try
            {
                cmd.CommandText = "Delete From News WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",id);
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
        #endregion
    }
}
