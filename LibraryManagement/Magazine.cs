using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LibraryManagement
{
    public class Magazine : Book
    {
        private int issueNumber;

        public Magazine(string title, string type, int pageCount, int issueNumber) : base(title, type, pageCount)
        {
            this.issueNumber = issueNumber;
        }

        public override string MediaInfo()
        {
            var info = base.MediaInfo();
            info += "Issue Number : " + issueNumber + "\n";
            return info;
        }
    }
}