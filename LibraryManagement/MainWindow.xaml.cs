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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

namespace LibraryManagement
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public Library library;

        public MainWindow(string name)
        {
            InitializeComponent();
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;

            library = new Library();

            UserNameLabel.Content = name;
        }

        private void MediaManagementButton_Click(object sender, RoutedEventArgs e)
        {
            MediaManagementWindow media = new MediaManagementWindow();
            media.Owner = this;
            media.Show();
            this.Hide();
        }

        private void LentReturnMediaButton_Click(object sender, RoutedEventArgs e)
        {
            LentReturnMediaWindow lentReturn = new LentReturnMediaWindow();
            lentReturn.Owner = this;
            lentReturn.Show();
            this.Hide();
        }

        private void MemberManagementButton_Click(object sender, RoutedEventArgs e)
        {
            MembersManagementWindow membersManagement = new MembersManagementWindow();
            membersManagement.Owner = this;
            membersManagement.Show();
            this.Hide();
        }

        private void AdminControlPanelButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Under Development.");
        }

        private void AboutButton_Click(object sender, RoutedEventArgs e)
        {
            About about = new About();
            about.Owner = this;
            this.Hide();
            about.Show();
        }

        private void CreditsButton_Click(object sender, RoutedEventArgs e)
        {
            Credits credits = new Credits();
            credits.Owner = this;
            this.Hide();
            credits.Show();
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            this.Owner.Show();
        }
    }
}