   M S B A M L   `   `   `  ����L  HLibraryManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LibraryManagementLibraryManagement  5   	   #    LibraryManagement.LogInScreen   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:LibraryManagement     5   	     � Title$  Log In��5   	   $	��450��6   $	��500��6%    � 
ResizeMode$ NoResize=�61    � Icon$ Icons/books.png��6G   .��5	      � ��5
   
   �� 5       �� ImageSource$ Icons/loginbg.jpg��6    �� Opacity$	 0.8Q�69   .+�5   
   �� $��Secure Login��6   $
��Left=�6'   $��
163,55,0,0q�6B   $	��Top=�6V   $��36(�6n   $
��Bold"�6|   ���	#FF0013E76�   �� 5   
   $
��Left=�6   $��78,29,0,307q�6+   $��Icons/login.png��6@   $��80��6Y   �� 5   
   -   5         ��Name$ UserIDTextBox��5      $
��Left=�6)   $��33��6D   $��
96,193,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $	��Top=�6x   $	��312��6�   $��16(�6�   $��Italic$�6�    �� TextAlignment$ Center=�6�   $��Center=�6�   $	��1,2q�6   �� MaxLines$ 1��6'  $��admin��64  	 �� TextDecorations	 6�   Z� 64  �� 5   
   $��	User Name��6   $
��Left=�6$   $��
96,154,0,0q�6?   $	��Top=�6S   $
��Bold"�6k   $��18(�6}   
���   �6�   �� 5   
   $��Password��6   $
��Left=�6#   $��
96,249,0,0q�6>   $	��Top=�6R   $
��Bold"�6j   $��18(�6|   G� 5   
   -   5        
 G�Name$
 PasswordTextBox��5      $
��Left=�6/   $��
96,288,0,0q�6J   $	��Top=�6^   $	��312��6v   $��33��6�   $��Center=�6�   $��Center=�6�    G� Password$ admin��6�   �� 5   
   -   5         ��Name$ LoginButton��5      $��Log In��6&   $
��Left=�67   $��
96,341,0,0q�6R   $	��Top=�6f   $	��113��6~   $��50��6�   $��20(�6�   $
��Bold"�6�   6�   �� 5   
   -   5        $ SignUpButton��5      $��Sign Up��6'   $
��Left=�69   $��295,341,0,0q�6T   $	��Top=�6i   $	��113��6�   $��50��6�   $��20(�6�   $
��Bold"�6�   6�   5      5      