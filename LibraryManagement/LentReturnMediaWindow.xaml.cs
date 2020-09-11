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

namespace LibraryManagement
{
    /// <summary>
    /// Interaction logic for LentReturnMediaWindow.xaml
    /// </summary>
    public partial class LentReturnMediaWindow : Window
    {
        public LentReturnMediaWindow()
        {
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            InitializeComponent();
        }

        public void RefreshMediaDataGrid()
        {
            MediaDataGrid.ItemsSource = null;
            MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.allMedias;
        }

        public void RefreshMemberDataGrid()
        {
            MembersDataGrid.ItemsSource = null;
            MembersDataGrid.ItemsSource = ((MainWindow)this.Owner).library.allMembers;
        }

        private void MemberSearchButton_Click(object sender, RoutedEventArgs e)
        {
            if (MemberIDSearchTextBox.Text.Equals("") && MemberNameTextBox.Text.Equals(""))
            {
                MessageBox.Show("Please enter atleast one search parameters", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            if (!MemberIDSearchTextBox.Text.Equals(""))
            {
                try
                {
                    int ID = int.Parse(MemberIDSearchTextBox.Text);
                    MembersDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMembers(ID);
                }
                catch
                {
                    MessageBox.Show("Invalid Member ID format. Please enter again", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    MemberIDSearchTextBox.Text = "";
                    return;
                }
            }
            else if (!MemberNameTextBox.Text.Equals(""))
            {
                string name = MemberNameTextBox.Text;
                MembersDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMembers(name);
            }
            MemberNameTextBox.Text = "";
            MemberIDSearchTextBox.Text = "";
        }

        private void MemberDataRefreshGridButton_Click(object sender, RoutedEventArgs e)
        {
            RefreshMemberDataGrid();
        }

        private void MediaSearchButton_Click(object sender, RoutedEventArgs e)
        {
            if (!MediaSerialNumberTextBox.Text.Equals(""))
            {
                try
                {
                    int serialNumber = int.Parse(MediaSerialNumberTextBox.Text);
                    MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMedias(serialNumber);
                }
                catch
                {
                    MessageBox.Show("Invalid serial number format. Please enter again", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    MediaSerialNumberTextBox.Text = "";
                    return;
                }
            }
            else if (!MediaTitleTextBox.Text.Equals(""))
            {
                var title = MediaTitleTextBox.Text;
                var type = MediaTypeComboBox.SelectedValue.ToString();
                MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMedias(title, type);
            }
            else
            {
                var type = MediaTypeComboBox.SelectedValue.ToString();
                MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMediasType(type);
            }
            MediaSerialNumberTextBox.Text = "";
            MediaTitleTextBox.Text = "";
        }

        private void MediaDataGridRefreshButton_Click(object sender, RoutedEventArgs e)
        {
            RefreshMediaDataGrid();
        }

        private void MediaLentButton_Click(object sender, RoutedEventArgs e)
        {
            System.Collections.IList selectedItems = MediaDataGrid.SelectedItems;
            if ((MembersDataGrid.SelectedItem == null) || (selectedItems.Count == 0))
            {
                MessageBox.Show("Make sure to select one member and one or more media that is lenting.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            for (int i = 0; i < selectedItems.Count; i++)
            {
                if (!((Media)selectedItems[i]).IsAvailable)
                {
                    MessageBox.Show("'" + ((Media)selectedItems[i]).Title + "' is currently unavailable.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
                else
                {
                    var media = ((Media)selectedItems[i]);
                    var member = ((LibraryMember)MembersDataGrid.SelectedItem);
                    var name = member.Name;
                    media.LentMedia(name);
                    member.AddMediaToHistory(media);
                    member.AddMediaToBorrowedList(media);
                    MessageBox.Show("'" + ((Media)selectedItems[i]).Title + "' is Lent to " + member.Name, "Error", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            RefreshMediaDataGrid();
            RefreshMemberDataGrid();
        }

        private void MediaReturnButton_Click(object sender, RoutedEventArgs e)
        {
            System.Collections.IList selectedItems = MediaDataGrid.SelectedItems;
            if (selectedItems.Count == 0)
            {
                MessageBox.Show("No Media selected", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            for (int i = 0; i < selectedItems.Count; i++)
            {
                var media = (Media)selectedItems[i];
                if (!media.IsAvailable)
                {
                    var member = ((MainWindow)this.Owner).library.SearchForSingleMember(media.CurrentlyBorrowedMember);
                    media.ReturnMedia();
                    member.RemoveMediaFromBorrowedList(media);
                    MessageBox.Show("'" + media.Title + "' is returned by " + member.Name, "Info", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                    MessageBox.Show("'" + media.Title + "' is currently in the Library.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            RefreshMediaDataGrid();
            RefreshMemberDataGrid();
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            Owner.Show();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            RefreshMediaDataGrid();
            RefreshMemberDataGrid();
        }

        private void MediaInfoButton_Click(object sender, RoutedEventArgs e)
        {
            if (MediaDataGrid.SelectedItem == null)
            {
                MessageBox.Show("Please select a Media to view more detailed Info.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            var message = ((Media)MediaDataGrid.SelectedItem).MediaInfo();
            MessageBox.Show(message, "Error", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void MemberInfoButton_Click(object sender, RoutedEventArgs e)
        {
            if (MembersDataGrid.SelectedItem == null)
            {
                MessageBox.Show("Please select a Member to view more detailed Info.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            var member = (LibraryMember)MembersDataGrid.SelectedItem;
            MemberInfoWindow memberInfo = new MemberInfoWindow(member);
            memberInfo.Owner = this;
            memberInfo.Show();
            this.Hide();
        }
    }
}