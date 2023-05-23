using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class news
    {
        public int ID { get; set; }
        public int NewsViews { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string Img { get; set; }
        public DateTime NewsDateTime { get; set; }
    }
}
