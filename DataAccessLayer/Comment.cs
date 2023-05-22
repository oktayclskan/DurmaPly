using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Comment
    {
        public int ID { get; set; }
        public int MemberID { get; set; }
        public string Content { get; set; }
    }
}
