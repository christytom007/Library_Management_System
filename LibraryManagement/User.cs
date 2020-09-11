using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManagement
{
    [Serializable]
    internal class User
    {
        public string UserName { private set; get; }
        public string Password { private set; get; }

        public User(string userName, string password)
        {
            this.UserName = userName;
            this.Password = password;
        }
    }
}