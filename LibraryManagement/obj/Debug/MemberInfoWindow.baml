   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LibraryManagementLibraryManagement  5   	   (    "LibraryManagement.MemberInfoWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:LibraryManagement     5   	   -   5          � Title$  MemberInfoWindow��5   	   $	��450��6"   $��908.973��6/    � 
ResizeMode$ NoResize=�6?   .��5	      � .+�5
   
   �� $��Member Info��6   $
��Left=�6&   $��	10,10,0,0q�6A   $	��Top=�6T   $��24(�6l   $
��Bold"�6z   �� 5   
   $��ID : ��6   $
��Left=�6    $��	10,57,0,0q�6;   $	��Top=�6N   $��16(�6f   $��64��6t   $��Right=�6   �� 5   
   -   5         ��Name$ MemberIDLabel��5      $��------------��6'   $
��Left=�6>   $��	79,57,0,0q�6Y   $	��Top=�6l   $��16(�6�   $	��115��6�   $
��Left=�6�   �� 5   
   $��Name : ��6   $
��Left=�6"   $��	10,94,0,0q�6=   $	��Top=�6P   $��16(�6h   �� 5   
   -   5        $ MemberNameLabel��5      $��------------��6)   $
��Left=�6@   $��	79,94,0,0q�6[   $	��Top=�6n   $��16(�6�   $	��115��6�   $
��Left=�6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$" MediaBorrowedHistoryDataGrid��5      $
��Left=�69   $	��350��6T   $��
554,60,0,0q�6a   $	��Top=�6u   $	��335��6�      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 No.��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 .3* 62   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6>   �� *SerialNumber+  5      $ Title��6%   $
 1.5* 64   	 6A   �� *Title+  5      $
 Type��6%   $	 .8* 63   	 6?   �� *Type+5      �� 5   
   $��History��6   $
��Left=�6"   $��
554,10,0,0q�6=   $	��Top=�6Q   $��24(�6i   $
��Bold"�6w     5   
   -   5        $$ MediaCurrentlyBorrowedDataGrid��5      $
��Left=�6;   $	��350��6V   $��
199,60,0,0q�6c   $	��Top=�6w   $	��335��6�    .   .  5        5      $	 No.��6%   $	 .3* 62   	 6>   �� *SerialNumber+  5      $ Title��6%   $
 1.5* 64   	 6A   �� *Title+  5      $
 Type��6%   $	 .8* 63   	 6?   �� *Type+5      �� 5   
   $��Currently Borrowed��6   $
��Left=�6-   $��
198,10,0,0q�6H   $	��Top=�6\   $��24(�6t   $
��Bold"�6�   5      5       