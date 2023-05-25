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
        public List<Admins> AdminList()
        {
            List<Admins> admins = new List<Admins>();
            try
            {
                cmd.CommandText = "SELECT * From Admins";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Admins a = new Admins();
                    a.ID = reader.GetInt32(0);
                    a.Name = reader.GetString(1);
                    a.Surname = reader.GetString(2);
                    a.Mail = reader.GetString(3);
                    a.AdminPassword = reader.GetString(4);
                    a.Phone = reader.GetString(5);
                    admins.Add(a);
                }
                return admins;
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
        public bool AdminAdd(Admins a)
        {
            try
            {
                cmd.CommandText = "INSERT INTO Admins (Name,Surname,Mail,AdminPassword,Phone) VALUES (@name,@surname,@mail,@adminPassword,@phone)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@name",a.Name);
                cmd.Parameters.AddWithValue("@surname", a.Surname);
                cmd.Parameters.AddWithValue("@mail", a.Mail);
                cmd.Parameters.AddWithValue("@adminPassword", a.AdminPassword);
                cmd.Parameters.AddWithValue("@phone", a.Phone);
                con.Open();
                return true;
            }
            catch
            {
                return false;
            }
            finally { con.Close(); }
        }
        public bool AdminDlt(int id)
        {
            try
            {
                cmd.CommandText = "DELETE Admin WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
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
        public Admins AdminGet(int id)
        {
            try
            {
                cmd.CommandText = "Select ID,Name,Surname,Mail,AdminPassword,Phone From Admins Where ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Admins a = new Admins();
                while (reader.Read())
                {
                    a.ID = reader.GetInt32(0);
                    a.Name = reader.GetString(1);
                    a.Surname = reader.GetString(2);
                    a.Mail = reader.GetString(3);
                    a.AdminPassword = reader.GetString(4);
                    a.Phone = reader.GetString(5);
                }
                return a;
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
        public bool AdminUpdate(Admins a)
        {
            try
            {
                cmd.CommandText = "UPDATE Admins Set Name=@name,Surname=@surname,Mail=@mail,AdminPassword=@adminPassword,Phone=@phone Where ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",a.ID);
                cmd.Parameters.AddWithValue("@name",a.Name);
                cmd.Parameters.AddWithValue("@surname", a.Surname);
                cmd.Parameters.AddWithValue("@mail", a.Mail);
                cmd.Parameters.AddWithValue("@adminPassword", a.AdminPassword);
                cmd.Parameters.AddWithValue("@phone", a.Phone);
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
        

        #endregion
        #region Member Metots
        public List<Members> MemberList()
        {
            List<Members> members = new List<Members>();
            try
            {
                cmd.CommandText = "Select * From Member";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Members m = new Members();
                    m.ID = reader.GetInt32(0);
                    m.Name = reader.GetString(1);
                    m.Surname = reader.GetString(2);
                    m.UserName = reader.GetString(3);
                    m.Mail = reader.GetString(4);
                    m.MemberPassword = reader.GetString(5);
                    members.Add(m);
                }
                return members;
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
        public Members MemberGet(int id)
        {
            try
            {
                cmd.CommandText = "Select ID,Name,Surname,UserName,Mail,MemberPassword From Member WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Members m = new Members();
                while (reader.Read())
                {
                    m.ID = reader.GetInt32(0);
                    m.Name = reader.GetString(1);
                    m.Surname = reader.GetString(2);
                    m.UserName = reader.GetString(3);
                    m.Mail = reader.GetString(4);
                    m.MemberPassword = reader.GetString(5);
                }
                return m;
            }
            catch
            {
                return null;
            }
            finally
            {
                { con.Close(); }
            }
        }
        public bool MemberDlt(int id)
        {
            try
            {
                cmd.CommandText = "DELETE Comment WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.CommandText = "DELETE Member WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
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
                    pb.Url = reader.GetString(3);
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
                cmd.CommandText = "INSERT INTO Publisher (Name,Img,Url) VALUES(@name,@img,@url)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@name", pb.Name);
                cmd.Parameters.AddWithValue("@img", pb.Img);
                cmd.Parameters.AddWithValue("@url", pb.Url);
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
                cmd.CommandText = "Select ID,Name,Img,Url From Publisher WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Publisher pb = new Publisher();
                while (reader.Read())
                {
                    pb.ID = reader.GetInt32(0);
                    pb.Name = reader.GetString(1);
                    pb.Img = reader.GetString(2);
                    pb.Url = reader.GetString(3);
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
                cmd.CommandText = "UPDATE Publisher Set Name=@name,Img=@img,Url=@url WHERE ID=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", pb.ID);
                cmd.Parameters.AddWithValue("@name", pb.Name);
                cmd.Parameters.AddWithValue("@img", pb.Img);
                cmd.Parameters.AddWithValue("@url",pb.Url);
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
                cmd.Parameters.AddWithValue("@id", id);
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
                cmd.Parameters.AddWithValue("@id", g.ID);
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
                cmd.Parameters.AddWithValue("@id", id);
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
                cmd.Parameters.AddWithValue("@newsViews", n.NewsViews);
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
                cmd.CommandText = "Update News Set Title=@title,Content=@content,Img=@img WHERE ID=@id ";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id",n.ID);
                cmd.Parameters.AddWithValue("@title", n.Title);
                cmd.Parameters.AddWithValue("@content", n.Content);
                cmd.Parameters.AddWithValue("@img", n.Img);
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
                cmd.Parameters.AddWithValue("@id", id);
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
        #region Comment Metots
        public List<Comment> CommentList()
        {
            List<Comment> comments = new List<Comment>();
            try
            {
                cmd.CommandText = "Select c.ID,m.Name,c.Content,c.Img,c.Title,c.CommentDateTime From Comment AS c Join Member AS m ON c.MemberID=m.ID";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Comment cm = new Comment();
                    cm.ID = reader.GetInt32(0);
                    cm.MemberName = reader.GetString(1);
                    cm.Content = reader.GetString(2);
                    cm.Img = reader.GetString(3);
                    cm.Title = reader.GetString(4);
                    cm.CommentDateTime = reader.GetDateTime(5);
                    comments.Add(cm);
                }
                return comments;
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
        public bool CommentAdd(Comment c)
        {
            try
            {
                cmd.CommandText = "INSERT INTO Comment (MemberID,Content,Img,Title,CommentDateTime) VALUES (@memberID,@content,@img,@title,@commentdatetime)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@memberID", c.MemberID);
                cmd.Parameters.AddWithValue("@content", c.Content);
                cmd.Parameters.AddWithValue("@img", c.Img);
                cmd.Parameters.AddWithValue("@title", c.Title);
                cmd.Parameters.AddWithValue("@commentdatetime", c.CommentDateTime);
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
        public bool CommentDlt(int id)
        {
            try
            {
                cmd.CommandText = "DELETE Comment Where ID=@id";
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
            finally
            {
                con.Close();
            }
        }

        #endregion
    }
}
