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

        #endregion
        #region News Metots

        #endregion
    }
}
