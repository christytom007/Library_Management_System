using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.IO;

namespace LibraryManagement
{
    /// <summary>
    /// Interaction logic for LogInScreen.xaml
    /// </summary>
    public partial class LogInScreen : Window
    {
        private List<User> allUsers;

        public LogInScreen()
        {
            InitializeComponent();
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;

            if (!Directory.Exists("data/"))
            {
                Directory.CreateDirectory("data/");

                List<User> admin = new List<User>
                {
                    new User("admin","admin")
                };

                using (Stream stream = File.Open("data/UserDatabase.bin", FileMode.Create))
                {
                    var bformatter = new System.Runtime.Serialization.Formatters.Binary.BinaryFormatter();

                    bformatter.Serialize(stream, admin);
                }
            }
            else
            {
                using (Stream stream = File.Open("data/UserDatabase.bin", FileMode.Open))
                {
                    var bformatter = new System.Runtime.Serialization.Formatters.Binary.BinaryFormatter();

                    allUsers = (List<User>)bformatter.Deserialize(stream);
                }
            }
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            if (UserIDTextBox.Text.Equals(""))
            {
                MessageBox.Show("Please enter your user ID.", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            if (PasswordTextBox.Password.Equals(""))
            {
                MessageBox.Show("Please enter your Password.", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }

            string userID = UserIDTextBox.Text;
            string password = PasswordTextBox.Password;

            foreach (User user in allUsers)
            {
                if (user.UserName.Equals(userID) && user.Password.Equals(password))
                {
                    MainWindow mainWindow = new MainWindow(UserIDTextBox.Text);
                    mainWindow.Owner = this;
                    mainWindow.Show();
                    this.Hide();
                    return;
                }
            }

            MessageBox.Show("Invalid User name or Password", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            UserIDTextBox.Text = "";
            PasswordTextBox.Password = "";
        }

        private void SignUpButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Under Development.");
        }
    }
}