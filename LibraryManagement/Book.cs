using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LibraryManagement
{
    public class Book : Media
    {
        private int pageCount;

        public Book(string title, string type, int pageCount) : base(title, type)
        {
            this.pageCount = pageCount;
        }

        public override string MediaInfo()
        {
            var info = base.MediaInfo();
            info += "Page count : " + pageCount + "\n";
            return info;
        }
    }
}