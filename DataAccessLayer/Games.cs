﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Games
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Content { get; set; }
        public string discountPercentage { get; set; }
        public string img { get; set; }
        public DateTime DateTime { get; set; }
        public string Video { get; set; }
        public decimal DiscountRate { get; set; }
        public decimal noDiscount { get; set; }
    }
}
