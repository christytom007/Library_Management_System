   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LibraryManagementLibraryManagement  5   	   -    'LibraryManagement.MediaManagementWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:LibraryManagement     5   	   -   5          � Title$  Media Management System��5   	   $��704.482��6)   $��1226.892��6:    � 
ResizeMode$ NoResize=�6K    � Icon$ Icons/books.png��6a   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ MediaDataGrid��5
      $
��Left=�6*   $	��570��6E   $��
502,10,0,0q�6R   $	��Top=�6f   $	��709��6~      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Serial��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 .3* 65   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6A   �� *SerialNumber+  5      $ Title��6%   $ 2* 64   	 6?   �� *Title+  5      $
 Type��6%   $	 .8* 63   	 6?   �� *Type+  5      $ 
Lent Count��6%   $	 .6* 69   	 6E   �� *NoOfTimesLent+4  .System.Windows.Controls.DataGridCheckBoxColumn  5      $ 	Available��6)   $	 .6* 6<   	 6H   �� *IsAvailable+  5      $ Currently Borrowed��6%   $ 1* 6A   	 6L   �� *CurrentlyBorrowedMember+5      �� 5   
   $��Serial Number : ��6   $
��Left=�6+   $��	30,77,0,0q�6F   $	��Top=�6Y   $��16(�6q   $
��Bold"�6   $��Right=�6�   �� 5   
   -   5        
 ��Name$
 SerialNumberLockedTextBox��5      $
��Left=�65   $��32��6P   $��
166,77,0,0q�6\    �� TextWrapping$
 Wrap=�6p   $�� ��6�   $	��Top=�6�   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�   |�.   J� 	AllowDrop .   �� 
IsReadOnly . 6(  �� 5   
   $��Title : ��6   $
��Left=�6#   $��
30,134,0,0q�6>   $	��Top=�6R   $��16(�6j   $
��Bold"�6x   $	��131��6�   $��Right=�6�   �� 5   
   -   5        $
 MediaTitleTextBox��5      $
��Left=�6-   $��32��6H   $��166,133,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�    �� 	IsEnabled . 6�   �� 5   
   $��Type : ��6   $
��Left=�6"   $��
30,190,0,0q�6=   $	��Top=�6Q   $��16(�6i   $
��Bold"�6w   $	��131��6�   $��Right=�6�   �� 5   
   -   5         ��Name$ MediaTypeComboBox��5      $
��Left=�6.   $��166,190,0,0q�6I   $	��Top=�6^   $	��272��6v   $��16(�6�   $��32��6�    �� SelectedValuePath$ Content��6�    �� SelectedIndex$ 0��6�   .@�5      �� $
��Book��6   �� 5      $��Magazine��6   �� 5      $��Movie��6   5      �� 5   
   -   5         ��Name$ SpecialData1Label��5      $��Page Count : ��6+   $
��Left=�6C   $��
30,247,0,0q�6^   $	��Top=�6r   $��16(�6�   $
��Bold"�6�   $	��131��6�   $��Right=�6�   �� 5   
   -   5        $
 SpecialData1TextBox��5      $
��Left=�6/   $��32��6J   $��166,246,0,0q�6V   $
 Wrap=�6k   $	��Top=�6   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�    . 6�   �� 5    
   -   5         ��Name$ AddMediaButton��5       $��	Add Media��6)   $
��Left=�6=   $��57��6X   $��119,343,0,0q�6d   $	��Top=�6y   $	��239��6�   $��18(�6�   $
��Bold"�6�   6�   �� 5!   
   $��Add a Media��6   $
��Left=�6&   $��
119,10,0,0q�6A   $	��Top=�6U   $��36(�6m   $
��Bold"�6{   �� 5"   
   $��Serial Number : ��6   $
��Left=�6+   $��
30,548,0,0q�6F   $	��Top=�6Z   $��16(�6r   $
��Bold"�6�   $��Right=�6�   �� 5#   
   -	   5        $
 SerialNumberSearchTextBox��5#      $
��Left=�65   $��32��6P   $��166,548,0,0q�6\   $
 Wrap=�6q   $	��Top=�6�   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�    . 6�   �� 5$   
   -
   5        $ SearchButton��5$      $��Search Media��6'   $
��Left=�6>   $��57��6Y   $��119,600,0,0q�6e   $	��Top=�6z   $	��239��6�   $��18(�6�   $
��Bold"�6�   6�   �� 5%   
   -   5         ��Name$ TitleCheckbox��5%      $�� ��6*   $
��Left=�65   $��443,134,0,0q�6P   $	��Top=�6e   $��16(�6}   $��32��6�   $��26��6�   $��Center=�6�   $��Center=�6�   6�   �� 5&   
   -   5        $ TypeCheckbox��5&      $�� ��6)   $
��Left=�64   $��443,190,0,0q�6O   $	��Top=�6d   $��16(�6|   $��32��6�   $��26��6�   $��Center=�6�   $��Center=�6�   6�   �� 5'   
   $��Search Media��6   $
��Left=�6'   $��119,430,0,0q�6B   $	��Top=�6W   $��36(�6o   $
��Bold"�6}   �� 5(   
   -   5        $ SerialNumberCheckbox��5(      $�� ��61   $
��Left=�6<   $��443,548,0,0q�6W   $	��Top=�6l   $��16(�6�   $��32��6�   $��26��6�   $��Center=�6�   $��Center=�6�   6�   �� 5)   
   $-��'Checkmark the fields you want to search��6   $
��Left=�6B   $��
30,493,0,0q�6]   $	��Top=�6q   $��16(�6�   $
��Bold"�6�   $
��Left=�6�   $	��408��6�   �� 5*   
   -   5        $ RemoveMediaButton��5*      $��Remove Media��6,   $
��Left=�6C   $��57��6^   $��584,600,0,0q�6j   $	��Top=�6   $	��247��6�   $��18(�6�   $
��Bold"�6�   6�   �� 5+   
   -   5        $ ReloadDataButton��5+      $��Refresh Data��6+   $
��Left=�6B   $��57��6]   $��925,600,0,0q�6i   $	��Top=�6~   $	��233��6�   $��18(�6�   $
��Bold"�6�   6�   �� 5,   
   -   5        $ SpecialData2Label��5,      $��Issue Number : ��6+   $
��Left=�6E   $��
30,284,0,0q�6`   $	��Top=�6t   $��16(�6�   $
��Bold"�6�   $	��131��6�   $��Right=�6�   $y�Hidden=�6�   �� 5-   
   -   5        $
 SpecialData2TextBox��5-      $
��Left=�6/   $��32��6J   $��166,283,0,0q�6V   $
 Wrap=�6k   $	��Top=�6   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�    . $y�Hidden=�6  5.      5/      