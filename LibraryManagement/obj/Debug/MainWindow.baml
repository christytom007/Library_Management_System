   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LibraryManagementLibraryManagement  5   	   "    LibraryManagement.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:LibraryManagement     5   	   -   5          � Title$   Library Management System ��5   	   $��579.527��6,   $��823.031��6=    � Icon$ Icons/books.png��6M    � 
ResizeMode$ NoResize=�6d   ��5	      �� 5
   
    �� ImageSource$ Icons/mainbg.jpg��6    �� Opacity$
 0.75Q�64   .��5      � $��0,0,3.8,-20.4q�6   .+�5   
   �� -   5         ��Name$ MediaManagementButton��5      $��Media Management��60   $
��Left=�6K   $��
93,168,0,0q�6f   $	��Top=�6z   $	��280��6�   $	��100��6�   $��20(�6�    � ToolTip$. (View, Add and Remove Medias from Library��6�   $
��Bold"�6�   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 	#FF1F5EB9��6#   
 � Offset$
 1Q�65   � 5      $	 White��6#   5      5      �� 5   
   $��Library Control Panel��6   $
��Left=�60   $��
223,48,0,0q�6K   $	��Top=�6_   
�������$��40(�6�   ��5      �� 5       �� Color$ 	#FFF70E0E��6"   $	 0.3Q�64   5      �� 5   
   -   5        $ LentReturnMediaButton��5      $��Lent / Return Media��60   $
��Left=�6N   $��446,168,0,0q�6i   $	��Top=�6~   $	��280��6�   $	��100��6�   $��20(�6�   $
��Bold"�6�   $ Lent or Return Media��6�   ��5      �� 5      $ 0.5,1&�6&   $ 0.5,0&�67   .��5      � $	 	#FF1F5EB9��6#   $
 1Q�65   � 5      $	 White��6#   5      5!      �� 5"   
   -   5        $ MemberManagementButton��5"      $��Member Management��61   $
��Left=�6M   $��
93,292,0,0q�6h   $	��Top=�6|   $	��280��6�   $	��100��6�   $��20(�6�   $
��Bold"�6�   $, &View, Add and Remove Member to Library��6�   ��5#      �� 5$      $ 0.5,1&�6&   $ 0.5,0&�67   .��5%      � $	 	#FF1F5EB9��6#   $
 1Q�65   � 5&      $	 White��6#   5'      5)      �� 5*   
   -   5        $ AdminControlPanelButton��5*      $��Admin Control Panel��62   $
��Left=�6P   $��446,292,0,0q�6k   $	��Top=�6�   $	��280��6�   $	��100��6�   $��20(�6�   $
��Bold"�6�   $ Manage Admin settings��6�   ��5+      �� 5,      $ 0.5,1&�6&   $ 0.5,0&�67   .��5-      � $	 	#FF1F5EB9��6#   $
 1Q�65   � 5.      $	 White��6#   5/      51      �� 52   
   $��User name : ��6   $
��Left=�6'   $��
98,458,0,0q�6B   $	��Top=�6V   $��20(�6n   
�������6|   �� 53   
   -   5        $��UserNameLabel��53      $��-------��6%   $
��Left=�67   $��218,458,0,0q�6R   $	��Top=�6g   $��20(�6   
�������$	��155��6�   �� 54   
   -   5        $ AboutButton��54      $��About��6&   $
��Left=�66   $��446,431,0,0q�6Q   $	��Top=�6f   $	��120��6~   $��64��6�   $��20(�6�   $
��Bold"�6�   ��55      �� 56      $ 0.5,1&�6&   $ 0.5,0&�67   .��57      � $	 	#FF1F5EB9��6#   $
 1Q�65   � 58      $	 White��6#   59      5;      �� 5<   
   -   5        $ CreditsButton��5<      $��Credits��6(   $
��Left=�6:   $��606,431,0,0q�6U   $	��Top=�6j   $	��120��6�   $��64��6�   $��20(�6�   $
��Bold"�6�   ��5=      �� 5>      $ 0.5,1&�6&   $ 0.5,0&�67   .��5?      � $	 	#FF1F5EB9��6#   $
 1Q�65   � 5@      $	 White��6#   5A      5C      5D      5E      