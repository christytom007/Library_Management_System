using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LibraryManagement
{
    public class LibraryMember
    {
        public string Name { private set; get; }
        public List<Media> borrowHistory;
        public List<Media> currentlyBorrowed;

        public int ID { private set; get; }
        private static int iDGenerator = 0;
        public static int NextID { get { return iDGenerator + 1; } }

        public LibraryMember(string name)
        {
            this.Name = name;
            this.ID = ++iDGenerator;
            borrowHistory = new List<Media>();
            currentlyBorrowed = new List<Media>();
        }

        public string MemberInfo()
        {
            return "ID : " + ID + "\nName : " + Name;
        }

        public void AddMediaToHistory(Media media)
        {
            borrowHistory.Add(media);
        }

        public void AddMediaToBorrowedList(Media media)
        {
            currentlyBorrowed.Add(media);
        }

        public void RemoveMediaFromBorrowedList(Media media)
        {
            currentlyBorrowed.Remove(media);
        }
    }
}