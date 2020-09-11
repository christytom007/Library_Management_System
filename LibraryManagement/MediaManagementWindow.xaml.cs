using System;
using System.Windows;

namespace LibraryManagement
{
    /// <summary>
    /// Interaction logic for MediaManagementWindow.xaml
    /// </summary>
    public partial class MediaManagementWindow : Window
    {
        public MediaManagementWindow()
        {
            InitializeComponent();
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            SerialNumberLockedTextBox.Text = Media.NextSerialNumber.ToString();
        }

        private void RefreshDataGrid()
        {
            MediaDataGrid.ItemsSource = null;
            MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.allMedias;
        }

        private void AddMediaButton_Click(object sender, RoutedEventArgs e)
        {
            if (MediaTitleTextBox.Text.Equals("") || SpecialData1TextBox.Text.Equals("") || ((MediaTypeComboBox.SelectedValue.Equals("Magazine")) && (SpecialData2TextBox.Text.Equals(""))))
            {
                MessageBox.Show("Please enter all required fields.", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            try
            {
                string title = MediaTitleTextBox.Text;
                string type = MediaTypeComboBox.SelectedValue.ToString();
                int pageCount;
                double duration;
                int issueNumber;
                bool addStatus = false;
                if (MediaTypeComboBox.SelectedValue.Equals("Book"))
                {
                    pageCount = int.Parse(SpecialData1TextBox.Text);
                    addStatus = ((MainWindow)this.Owner).library.AddNewMedia(new Book(title, type, pageCount));
                }
                else if (MediaTypeComboBox.SelectedValue.Equals("Movie"))
                {
                    duration = double.Parse(SpecialData1TextBox.Text);
                    addStatus = ((MainWindow)this.Owner).library.AddNewMedia(new Movie(title, type, duration));
                }
                else if (MediaTypeComboBox.SelectedValue.Equals("Magazine"))
                {
                    pageCount = int.Parse(SpecialData1TextBox.Text);
                    issueNumber = int.Parse(SpecialData2TextBox.Text);
                    addStatus = ((MainWindow)this.Owner).library.AddNewMedia(new Magazine(title, type, pageCount, issueNumber));
                }

                if (addStatus)
                {
                    SerialNumberLockedTextBox.Text = Media.NextSerialNumber.ToString();
                    RefreshDataGrid();
                    MessageBox.Show("New media succesfully Added.", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show("Duplicate Title, Please enetr again", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    MediaTitleTextBox.Text = "";
                }
            }
            catch
            {
                MessageBox.Show("Invalid input details. Please enter again", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                MediaTitleTextBox.Text = "";
                SpecialData1TextBox.Text = "";
                SpecialData2TextBox.Text = "";
            }
        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            if (TitleCheckbox.IsChecked == false && TypeCheckbox.IsChecked == false && SerialNumberCheckbox.IsChecked == false)
            {
                MessageBox.Show("Please select atleast one search parameters", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            if ((TitleCheckbox.IsChecked == true && MediaTitleTextBox.Text.Equals("")) ||
                (TypeCheckbox.IsChecked == true && MediaTypeComboBox.SelectedValue.Equals("")) ||
                (SerialNumberCheckbox.IsChecked == true && SerialNumberSearchTextBox.Text.Equals("")))
            {
                MessageBox.Show("Please enter search parameters", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                return;
            }
            if (TitleCheckbox.IsChecked == true && TypeCheckbox.IsChecked == true)
                MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMedias(MediaTitleTextBox.Text, MediaTypeComboBox.SelectedValue.ToString());
            else if (TitleCheckbox.IsChecked == true)
                MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMediasTitle(MediaTitleTextBox.Text);
            else if (TypeCheckbox.IsChecked == true)
                MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMediasType(MediaTypeComboBox.SelectedValue.ToString());
            else
            {
                try
                {
                    MediaDataGrid.ItemsSource = ((MainWindow)this.Owner).library.SearchMedias(int.Parse(SerialNumberSearchTextBox.Text));
                }
                catch
                {
                    MessageBox.Show("Invalid serial number format. Please enter again", "Error", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                }
            }
        }

        private void RemoveMediaButton_Click(object sender, RoutedEventArgs e)
        {
            System.Collections.IList selectedItems = MediaDataGrid.SelectedItems;
            if (selectedItems.Count == 0)
            {
                MessageBox.Show("No Media selected", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            for (int i = 0; i < selectedItems.Count; i++)
            {
                ((MainWindow)this.Owner).library.RemoveMedia((Media)selectedItems[i]);
            }
            RefreshDataGrid();
            MessageBox.Show("Succesfully removed selected medias.", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void ReloadDataButton_Click(object sender, RoutedEventArgs e)
        {
            RefreshDataGrid();
        }

        private void MediaTypeComboBox_DropDownClosed(object sender, EventArgs e)
        {
            if (MediaTypeComboBox.SelectedValue.Equals("Book"))
            {
                SpecialData1Label.Content = "Page Count : ";
                SpecialData1TextBox.Text = "";
                SpecialData2Label.Visibility = Visibility.Hidden;
                SpecialData2TextBox.Visibility = Visibility.Hidden;
            }
            else if (MediaTypeComboBox.SelectedValue.Equals("Movie"))
            {
                SpecialData1Label.Content = "Duration : ";
                SpecialData1TextBox.Text = "";
                SpecialData2Label.Visibility = Visibility.Hidden;
                SpecialData2TextBox.Visibility = Visibility.Hidden;
            }
            else if (MediaTypeComboBox.SelectedValue.Equals("Magazine"))
            {
                SpecialData1Label.Content = "Page Count : ";
                SpecialData1TextBox.Text = "";
                SpecialData2Label.Visibility = Visibility.Visible;
                SpecialData2TextBox.Visibility = Visibility.Visible;
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.Owner.Show();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            RefreshDataGrid();
        }

        private void SerialNumberCheckbox_Checked(object sender, RoutedEventArgs e)
        {
            TitleCheckbox.IsChecked = false;
            TypeCheckbox.IsChecked = false;
        }

        private void TitleCheckbox_Checked(object sender, RoutedEventArgs e)
        {
            SerialNumberCheckbox.IsChecked = false;
        }
    }
}