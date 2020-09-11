using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace LibraryManagement
{
    public class Library
    {
        public HashSet<Media> allMedias;
        public HashSet<LibraryMember> allMembers;

        public Library()
        {
            allMedias = new HashSet<Media> {
                new Book("The Silent Patient","Book",202),
                new Book("Daisy Jones & The Six","Book",301),
                new Book("The Testaments","Book",213),
                new Book("City of Girls","Book",464),
                new Book("The Turn of the Key","Book",122),

                new Magazine("Canadian Living","Magazine",35,4),
                new Magazine("Chatelaine","Magazine",30,2),
                new Magazine("Style at Home","Magazine",31,10),
                new Magazine("Zoomer","Magazine",40,8),
                new Magazine("Maclean’s","Magazine",28,22),

                new Movie("Joker","Movie",9000),
                new Movie("Terminator: Dark Fate","Movie",8654),
                new Movie("Star Wars: The Rise of Skywalker","Movie",7548),
                new Movie("Maleficent: Mistress of Evil","Movie",8845),
                new Movie("Zombieland: Double Tap","Movie",9124),
            };

            allMembers = new HashSet<LibraryMember>
            {
                new LibraryMember("Christy"),
                new LibraryMember("Sciana"),
                new LibraryMember("Karampreet"),
                new LibraryMember("Mike"),
                new LibraryMember("Liz"),
                new LibraryMember("Jack")
            };
        }

        public bool AddMember(string name)
        {
            foreach (LibraryMember member in allMembers)
                if (member.Name.Equals(name))
                    return false;
            return allMembers.Add(new LibraryMember(name));
        }

        public bool AddNewMedia(Media media)
        {
            foreach (Media m in allMedias)
                if (m.Title.Equals(media.Title) && m.Type.Equals(media.Type))
                    return false;

            return allMedias.Add(media);
        }

        public void RemoveMedia(Media media)
        {
            allMedias.Remove(media);
        }

        public HashSet<Media> SearchMedias(string title, string type)
        {
            var searchResult = new HashSet<Media>();
            foreach (Media m in allMedias)
            {
                if (m.Title.Contains(title) && (m.Type.Equals(type)))
                    searchResult.Add(m);
            }
            return searchResult;
        }

        public HashSet<Media> SearchMedias(int serialNumber)
        {
            var searchResult = new HashSet<Media>();
            foreach (Media m in allMedias)
            {
                if (m.SerialNumber == serialNumber)
                    searchResult.Add(m);
            }
            return searchResult;
        }

        public HashSet<Media> SearchMediasTitle(string title)
        {
            var searchResult = new HashSet<Media>();
            foreach (Media m in allMedias)
            {
                if (m.Title.Contains(title))
                    searchResult.Add(m);
            }
            return searchResult;
        }

        public HashSet<Media> SearchMediasType(string type)
        {
            var searchResult = new HashSet<Media>();
            foreach (Media m in allMedias)
            {
                if (m.Type.Equals(type))
                    searchResult.Add(m);
            }
            return searchResult;
        }

        public HashSet<LibraryMember> SearchMembers(int iD)
        {
            var searchResult = new HashSet<LibraryMember>();
            foreach (LibraryMember m in allMembers)
            {
                if (m.ID == iD)
                    searchResult.Add(m);
            }
            return searchResult;
        }

        public HashSet<LibraryMember> SearchMembers(string name)
        {
            var searchResult = new HashSet<LibraryMember>();
            foreach (LibraryMember m in allMembers)
            {
                if (m.Name.Contains(name))
                    searchResult.Add(m);
            }
            return searchResult;
        }

        public LibraryMember SearchForSingleMember(string name)
        {
            LibraryMember member = null;
            foreach (LibraryMember m in allMembers)
            {
                if (m.Name.Equals(name))
                    member = m;
            }
            return member;
        }

        public void RemoveMember(LibraryMember member)
        {
            allMembers.Remove(member);
        }
    }
}