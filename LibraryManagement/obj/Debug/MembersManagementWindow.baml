   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LibraryManagementLibraryManagement  5   	   /    )LibraryManagement.MembersManagementWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:LibraryManagement     5   	   -   5          � Title$  MembersManagementWindow��5   	   $��614.7��6)   $��924.8��68    � 
ResizeMode$ NoResize=�6F   .��5	      � .+�5
   
   �� $��Add New Member��6   $
��Left=�6)   $��	76,10,0,0q�6D   $	��Top=�6W   $
��Bold"�6o   $��36(�6�   �� 5   
   $��Member ID : ��6   $
��Left=�6'   $��	25,88,0,0q�6B   $	��Top=�6U   $��16(�6m   $
��Bold"�6{   $��Right=�6�   �� 5   
   -   5         ��Name$ MemberID��5      $
��Left=�6$   $��32��6?   $��
162,88,0,0q�6K    �� TextWrapping$
 Wrap=�6_   $�� ��6s   $	��Top=�6{   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�   |�.   J� 	AllowDrop .   �� 
IsReadOnly . 6  �� 5   
   $��Name : ��6   $
��Left=�6"   $��
25,140,0,0q�6=   $	��Top=�6Q   $��16(�6i   $
��Bold"�6w   $��Right=�6�   $	��131��6�   �� 5   
   -   5        $ NameTextBox��5      $
��Left=�6'   $��32��6B   $��162,140,0,0q�6N   $
 Wrap=�6c   $	��Top=�6w   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�   �� 5   
   -   5         ��Name$ AddMemberButton��5      $��
Add Member��6*   $
��Left=�6?   $��50��6Z   $��106,205,0,0q�6f   $	��Top=�6{   $	��201��6�   $��18(�6�   $
��Bold"�6�   6�   �� 5   
   $��Member ID : ��6   $
��Left=�6'   $��
17,440,0,0q�6B   $	��Top=�6V   $��16(�6n   $
��Bold"�6|   $��Right=�6�   �� 5   
   -   5        $ MemberIDSearchTextBox��5      $
��Left=�61   $��32��6L   $��153,440,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $	��272��6�   $��16(�6�   $��Center=�6�   $��Center=�6�   �� 5   
   -   5        $ SearchButton��5      $��Search Member��6'   $
��Left=�6?   $��57��6Z   $��106,492,0,0q�6f   $	��Top=�6{   $	��201��6�   $��18(�6�   $
��Bold"�6�   6�   �� 5   
   $��Search Members��6   $
��Left=�6)   $��
76,322,0,0q�6D   $	��Top=�6X   $��36(�6p   $
��Bold"�6~   �� 5   
   $-��'Checkmark the fields you want to search��6   $
��Left=�6B   $��
17,385,0,0q�6]   $	��Top=�6q   $��16(�6�   $
��Bold"�6�   $��Center=�6�   $	��408��6�   �� 5   
   -   5         ��Name$ MemberIDCheckbox��5      $�� ��6-   $
��Left=�68   $��430,440,0,0q�6S   $	��Top=�6h   $��16(�6�   $��32��6�   $��26��6�   $��Center=�6�   $��Center=�6�   6�   �� 5   
   -   5        $ NameCheckbox��5      $�� ��6)   $
��Left=�64   $��439,140,0,0q�6O   $	��Top=�6d   $��16(�6|   $��32��6�   $��26��6�   $��Center=�6�   $��Center=�6�   6�   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ MembersDataGrid��5      $
��Left=�6,   $	��462��6G   $��
475,10,0,0q�6T   $	��Top=�6h   $	��433��6�   	   AutoGenerateColumns	 .  
   
IsReadOnly
 .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 .3* 61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *ID+  5      $
 Name��6%   $ 2* 63    6>   �� *Name+5      �� 5   
   -
   5        $ RemoveMemberButton��5      $��Remove Member��6-   $
��Left=�6E   $��57��6`   $��475,492,0,0q�6l   $	��Top=�6�   $	��166��6�   $��18(�6�   $
��Bold"�6�   6�   �� 5   
   -   5        $ RefreshGridButton��5      $��Refresh Data��6,   $
��Left=�6C   $��57��6^   $��742,492,0,0q�6j   $	��Top=�6   $	��166��6�   $��18(�6�   $
��Bold"�6�   6�   5      5       