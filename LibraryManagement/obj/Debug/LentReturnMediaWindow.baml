   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LibraryManagementLibraryManagement  5   	   -    'LibraryManagement.LentReturnMediaWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:LibraryManagement     5   	   -   5          � Title$  LentReturnMediaWindow��5   	   $	��500��6'   $��1346.8��64    � 
ResizeMode$ NoResize=�6q   .��5	      � .+�5
   
   �� $��Search Member��6   $
��Left=�6(   $��	49,10,0,0q�6C   $	��Top=�6V   $��25(�6n   $
��Bold"�6|   �� 5   
   $��Search Media��6   $
��Left=�6'   $��1058,10,0,0q�6B   $	��Top=�6W   $��25(�6o   $
��Bold"�6}   �� 5   
   $��ID : ��6   $
��Left=�6    $��	10,81,0,0q�6;   $	��Top=�6N   $��16(�6f   $
��Bold"�6t   $��Right=�6�   $��55��6�   �� 5   
   -   5         ��Name$ MemberIDSearchTextBox��5      $
��Left=�61   $��32��6L   $��	70,81,0,0q�6X    �� TextWrapping$
 Wrap=�6k   $	��Top=�6   $	��215��6�   $��16(�6�   $��Center=�6�   $��Center=�6�   �� 5   
   $��Name : ��6   $
��Left=�6"   $��
10,118,0,0q�6=   $	��Top=�6Q   $��16(�6i   $
��Bold"�6w   $��Right=�6�   $��55��6�   �� 5   
   -   5        $ MemberNameTextBox��5      $
��Left=�6-   $��32��6H   $��
70,118,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��215��6�   $��16(�6�   $��Center=�6�   $��Center=�6�   �� 5   
   -   5         ��Name$ MemberSearchButton��5      $��Search Member��6-   $
��Left=�6E   $��55��6`   $��
28,192,0,0q�6l   $	��Top=�6�   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ MembersDataGrid��5      $
��Left=�6,   $	��450��6G   $��
312,10,0,0q�6T   $	��Top=�6h   $	��212��6�      AutoGenerateColumns .     
IsReadOnly .    SelectionMode$ Single=�6�   	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 .3* 61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *ID+  5      $

 Name��6%   $ 2* 63    6>   �� *Name+5      �� 5   
   -   5        $! MemberDataRefreshGridButton��5      $��Reset Search��66   $
��Left=�6M   $��55��6h   $��159,192,0,0q�6t   $	��Top=�6�   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�     5   
   -   5        $ MediaDataGrid��5      $
��Left=�6*   $	��450��6E   $��
529,10,0,0q�6R   $	��Top=�6f   $	��456��6~    .   . 	 5        5      $	
 No.��6%   $	 .3* 62    6>   �� *SerialNumber+  5      $
 Title��6%   $
 1.5* 64    6A   �� *Title+  5      $

 Type��6%   $	 .8* 63    6?   �� *Type+  5      $
 Lent No.��6%   $	 .6* 67    6C   �� *NoOfTimesLent+4  .System.Windows.Controls.DataGridCheckBoxColumn  5      $
 	Available��6)   $
 .65* 6<    6I   �� *IsAvailable+  5      $
 Borrowed by��6%   $ 1* 6:    6E   �� *CurrentlyBorrowedMember+5!      �� 5"   
   $��Serial No. : ��6   $
��Left=�6(   $��
990,58,0,0q�6C   $	��Top=�6W   $��16(�6o   $
��Bold"�6}   $��Right=�6�   $	��104��6�   �� 5#   
   -   5        $ MediaSerialNumberTextBox��5#      $
��Left=�64   $��32��6O   $��1099,58,0,0q�6[   $
 Wrap=�6p   $	��Top=�6�   $	��215��6�   $��16(�6�   $��Center=�6�   $��Center=�6�    �� 	IsEnabled . 6�   �� 5$   
   $��Title : ��6   $
��Left=�6#   $��
990,95,0,0q�6>   $	��Top=�6R   $��16(�6j   $
��Bold"�6x   $	��104��6�   $��Right=�6�   �� 5%   
   -	   5        $ MediaTitleTextBox��5%      $
��Left=�6-   $��32��6H   $��1099,95,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��215��6�   $��16(�6�   $��Center=�6�   $��Center=�6�    . 6�   �� 5&   
   $��Type : ��6   $
��Left=�6"   $��990,132,0,0q�6=   $	��Top=�6R   $��16(�6j   $
��Bold"�6x   $	��104��6�   $��Right=�6�   �� 5'   
   -
   5         ��Name$ MediaTypeComboBox��5'      $
��Left=�6.   $��1099,132,0,0q�6I   $	��Top=�6_   $	��215��6w   $��16(�6�   $��32��6�    �� SelectedValuePath$ Content��6�    �� SelectedIndex$ 0��6�   .@�5(      �� $
��Book��6   �� 5)      $��Magazine��6   �� 5*      $��Movie��6   5+      �� 5,   
   -   5        $ MediaSearchButton��5,      $��Search Media��6,   $
��Left=�6C   $��55��6^   $��1045,192,0,0q�6j   $	��Top=�6�   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�   �� 5-   
   -   5        $  MediaDataGridRefreshButton��5-      $��Reset Search��65   $
��Left=�6L   $��55��6g   $��1176,192,0,0q�6s   $	��Top=�6�   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�   �� 5.   
   -   5        $ MediaLentButton��5.      $��
Lent Media��6*   $
��Left=�6?   $��55��6Z   $��1045,373,0,0q�6f   $	��Top=�6|   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�   �� 5/   
   -   5        $ MediaReturnButton��5/      $��Return Media��6,   $
��Left=�6C   $��55��6^   $��1176,373,0,0q�6j   $	��Top=�6�   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�   �� 50   
   -   5        $ MediaInfoButton��50      $��
Media Info��6*   $
��Left=�6?   $��55��6Z   $��1109,278,0,0q�6f   $	��Top=�6|   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�   �� 51   
   -   5        $ MemberInfoButton��51      $��Member Info��6+   $
��Left=�6A   $��55��6\   $��
90,278,0,0q�6h   $	��Top=�6|   $	��126��6�   $��16(�6�   $
��Bold"�6�   6�   52      53      