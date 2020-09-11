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
    /// Interaction logic for MembersManagementWindow.xaml
    /// </summary>
    public partial class MembersManagementWindow : Window
    {
        public MembersManagementWindow()
        {
            InitializeComponent();
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.Owner.Show();
        }

        private void AddMemberButton_Click(object sender, RoutedEventArgs e)
        {
            if (NameTextBox.Text.Equals(""))
            {
                MessageBox.Show("Please enter member name.", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            string name = NameTextBox.Text;
            bool addStatus = ((MainWindow)this.Owner).library.AddMember(name);
            if (addStatus)
            {
                MemberID.Text = LibraryMember.NextID.ToString();
                RefreshMembersDataGrid();
                MessageBox.Show("New member succesfully Added.", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Duplicate name, Please enetr again", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
            NameTextBox.Text = "";
        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            if (NameCheckbox.IsChecked == false && MemberIDCheckbox.IsChecked == false)
            {
                MessageBox.Show("Please select atleast one search parameters", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            if ((NameCheckbox.IsChecked == true && NameTextBox.Text.Equals("")) || (MemberIDCheckbox.IsChecked == true && MemberIDSearchTextBox.Text.Equals("")))
            {
                MessageBox.Show("Please enter search parameters", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            if (NameCheckbox.IsChecked == true)
            {
                MembersDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMembers(NameTextBox.Text);
            }
            else if (MemberIDCheckbox.IsChecked == true)
            {
                try
                {
                    int ID = int.Parse(MemberIDSearchTextBox.Text);
                    MembersDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMembers(ID);
                }
                catch
                {
                    MessageBox.Show("Invalid member ID format. Please enter again", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                }
            }
            NameTextBox.Text = "";
            MemberIDSearchTextBox.Text = "";
        }

        private void RemoveMemberButton_Click(object sender, RoutedEventArgs e)
        {
            System.Collections.IList selectedItems = MembersDataGrid.SelectedItems;
            if (selectedItems.Count == 0)
            {
                MessageBox.Show("No Members selected", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            for (int i = 0; i < selectedItems.Count; i++)
            {
                ((MainWindow)this.Owner).library.RemoveMember((LibraryMember)selectedItems[i]);
            }
            RefreshMembersDataGrid();
            MessageBox.Show("Succesfully removed selected members.", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void RefreshGridButton_Click(object sender, RoutedEventArgs e)
        {
            RefreshMembersDataGrid();
        }

        private void RefreshMembersDataGrid()
        {
            MembersDataGrid.ItemsSource = null;
            MembersDataGrid.ItemsSource = ((MainWindow)this.Owner).library.allMembers;
        }

        private void MemberIDCheckbox_Checked(object sender, RoutedEventArgs e)
        {
            NameCheckbox.IsChecked = false;
        }

        private void NameCheckbox_Checked(object sender, RoutedEventArgs e)
        {
            MemberIDCheckbox.IsChecked = false;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            MemberID.Text = LibraryMember.NextID.ToString();
            RefreshMembersDataGrid();
        }
    }
}