using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LibraryManagement
{
    public class Movie : Media
    {
        private double duration;

        public Movie(string title, string type, double duration) : base(title, type)
        {
            this.duration = duration;
        }

        public override string MediaInfo()
        {
            var info = base.MediaInfo();
            info += "Duration : " + duration + "\n";
            return info;
        }
    }
}