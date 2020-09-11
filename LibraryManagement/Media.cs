using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LibraryManagement
{
    public class Media
    {
        public string Title { get; set; }
        public string Type { get; set; }
        public int SerialNumber { get; private set; }
        public int NoOfTimesLent { get; set; }
        public bool IsAvailable { get; set; }
        public string CurrentlyBorrowedMember { get; set; }

        private static int serialNumberGenerator = 0;

        public static int NextSerialNumber
        {
            get
            {
                return serialNumberGenerator + 1;
            }
        }

        protected Media(string title, string type)
        {
            this.Title = title;
            this.Type = type;
            this.SerialNumber = ++serialNumberGenerator;
            this.CurrentlyBorrowedMember = "";
            this.NoOfTimesLent = 0;
            this.IsAvailable = true;
        }

        public virtual string MediaInfo()
        {
            var info = "Serial No. : " + SerialNumber + "\nTitle : " + Title + "\nType : " + Type + "\nNo. of times lent : " +
                NoOfTimesLent + "\nAvailable : " + ((IsAvailable) ? "Yes" : "No") + "\nCurrently borrowed by : " + CurrentlyBorrowedMember + "\n";
            return info;
        }

        public void LentMedia(string name)
        {
            NoOfTimesLent++;
            IsAvailable = false;
            CurrentlyBorrowedMember = name;
        }

        public void ReturnMedia()
        {
            IsAvailable = true;
            CurrentlyBorrowedMember = "";
        }
    }
}