FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .helphdhp****      � **** 	 l      
���� 
 o      ���� 0 	arguments  ��  ��  ��    k     l       l     ��  ��      split the arguments     �   (   s p l i t   t h e   a r g u m e n t s      r         n        1    ��
�� 
txdl  1     ��
�� 
ascr  o      ���� 0 prevtids prevTIDs      r        m       �    , , ,  n         1    
��
�� 
txdl  1    ��
�� 
ascr       r     ! " ! n     # $ # 2   ��
�� 
citm $ o    ���� 0 	arguments   " o      ����  0 splitarguments splitArguments    % & % r     ' ( ' o    ���� 0 prevtids prevTIDs ( n      ) * ) 1    ��
�� 
txdl * 1    ��
�� 
ascr &  + , + l   ��������  ��  ��   ,  - . - l   �� / 0��   /   get each argument    0 � 1 1 $   g e t   e a c h   a r g u m e n t .  2 3 2 r     4 5 4 n     6 7 6 4    �� 8
�� 
cobj 8 m    ����  7 o    ����  0 splitarguments splitArguments 5 o      ���� "0 currentlocation currentLocation 3  9 : 9 r    % ; < ; n    # = > = 4     #�� ?
�� 
cobj ? m   ! "����  > o     ����  0 splitarguments splitArguments < o      ���� $0 updatestatusfile updateStatusFile :  @ A @ r   & , B C B n   & * D E D 4   ' *�� F
�� 
cobj F m   ( )����  E o   & '����  0 splitarguments splitArguments C o      ���� 0 	booktitle 	bookTitle A  G H G r   - 3 I J I n   - 1 K L K 4   . 1�� M
�� 
cobj M m   / 0����  L o   - .����  0 splitarguments splitArguments J o      ����  0 remotelocation remoteLocation H  N O N l  4 4��������  ��  ��   O  P Q P l  4 4�� R S��   R   write out a temp file    S � T T ,   w r i t e   o u t   a   t e m p   f i l e Q  U V U I  4 =�� W��
�� .sysoexecTEXT���     TEXT W b   4 9 X Y X m   4 5 Z Z � [ [ < / b i n / e c h o   ' S T A R T I N G _ U P D A T E '   >   Y n   5 8 \ ] \ 1   6 8��
�� 
strq ] o   5 6���� $0 updatestatusfile updateStatusFile��   V  ^ _ ^ l  > >��������  ��  ��   _  ` a ` l  > >�� b c��   b !  get the path of the script    c � d d 6   g e t   t h e   p a t h   o f   t h e   s c r i p t a  e f e r   > F g h g I   > D�� i���� 40 getpathtoscriptcontainer getPathToScriptContainer i  j�� j o   ? @���� "0 currentlocation currentLocation��  ��   h o      ���� 0 pathtome pathToMe f  k l k l  G G��������  ��  ��   l  m n m l  G G�� o p��   o   run the script     p � q q     r u n   t h e   s c r i p t   n  r s r r   G d t u t b   G b v w v b   G ` x y x b   G \ z { z b   G Z | } | b   G V ~  ~ b   G T � � � b   G P � � � b   G N � � � b   G L � � � b   G J � � � m   G H � � � � �  c d   � o   H I���� 0 pathtome pathToMe � m   J K � � � � � H ;   / u s r / b i n / p y t h o n   u p d a t e f r o n t e n d . p y   � o   L M���� 0 pathtome pathToMe � m   N O � � � � �    � n   P S � � � 1   Q S��
�� 
strq � o   P Q���� $0 updatestatusfile updateStatusFile  m   T U � � � � �    } n   V Y � � � 1   W Y��
�� 
strq � o   V W���� 0 	booktitle 	bookTitle { m   Z [ � � � � �    y n   \ _ � � � 1   ] _��
�� 
strq � o   \ ]����  0 remotelocation remoteLocation w m   ` a � � � � � .   & >   / d e v / n u l l   &   e c h o   $ ! u o      ���� 0 scriptcommand scriptCommand s  ��� � r   e l � � � I  e j�� ���
�� .sysoexecTEXT���     TEXT � o   e f���� 0 scriptcommand scriptCommand��   � o      ���� 0 returnvalue returnValue��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 40 getpathtoscriptcontainer getPathToScriptContainer �  ��� � o      ���� 0 helpviewerurl helpViewerURL��  ��   � k     K � �  � � � r      � � � o     ���� 0 helpviewerurl helpViewerURL � o      ���� 0 pathtome pathToMe �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � - ' save the original text item delimiters    � � � � N   s a v e   t h e   o r i g i n a l   t e x t   i t e m   d e l i m i t e r s �  � � � r    	 � � � n    � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr � o      ���� 00 originalitemdelimeters originalItemDelimeters �  � � � l  
 
��������  ��  ��   �  � � � l  
 
�� � ���   �   get just the path    � � � � $   g e t   j u s t   t h e   p a t h �  � � � r   
  � � � m   
  � � � � �  f i l e : / / � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � n     � � � 4    �� �
�� 
cobj � m    ����  � l    ����� � n     � � � 2   ��
�� 
citm � o    ���� 0 pathtome pathToMe��  ��   � o      ���� 0 pathtome pathToMe �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � %  remove the last path component    � � � � >   r e m o v e   t h e   l a s t   p a t h   c o m p o n e n t �  � � � r     � � � m     � � � � �  / � 1    ��
�� 
txdl �  � � � r    . � � � n    , � � � 7  " ,�� � �
�� 
cobj � m   & (����  � m   ) +������ � l   " ����� � n    " � � � 2    "��
�� 
citm � o     ���� 0 pathtome pathToMe��  ��   � o      ���� 0 pathtome pathToMe �  � � � l  / /��������  ��  ��   �  � � � l  / /�� � ���   �   add the scripts folder    � � � � .   a d d   t h e   s c r i p t s   f o l d e r �  � � � r   / 4 � � � b   / 2 � � � o   / 0���� 0 pathtome pathToMe � m   0 1 � � � � �  s c r i p t s � o      ���� 0 pathtome pathToMe �  � � � l  5 5��������  ��  ��   �  � � � l  5 5�� � ���   �   convert to string    � �   $   c o n v e r t   t o   s t r i n g �  r   5 < c   5 : b   5 8 m   5 6		 �

  / o   6 7���� 0 pathtome pathToMe m   8 9��
�� 
TEXT o      ���� 0 pathtome pathToMe  l  = =��~�}�  �~  �}    l  = =�|�|     set the quoted value    � *   s e t   t h e   q u o t e d   v a l u e  r   = B n   = @ 1   > @�{
�{ 
strq o   = >�z�z 0 pathtome pathToMe o      �y�y 0 pathtome pathToMe  l  C C�x�w�v�x  �w  �v    l  C C�u�u   0 * restore the original text item delimiters    � T   r e s t o r e   t h e   o r i g i n a l   t e x t   i t e m   d e l i m i t e r s   r   C H!"! o   C D�t�t 00 originalitemdelimeters originalItemDelimeters" n     #$# 1   E G�s
�s 
txdl$ 1   D E�r
�r 
ascr  %&% l  I I�q�p�o�q  �p  �o  & '�n' L   I K(( o   I J�m�m 0 pathtome pathToMe�n   � )�l) l     �k�j�i�k  �j  �i  �l       �h*+,�h  * �g�f
�g .helphdhp****      � ****�f 40 getpathtoscriptcontainer getPathToScriptContainer+ �e �d�c-.�b
�e .helphdhp****      � ****�d 0 	arguments  �c  - 
�a�`�_�^�]�\�[�Z�Y�X�a 0 	arguments  �` 0 prevtids prevTIDs�_  0 splitarguments splitArguments�^ "0 currentlocation currentLocation�] $0 updatestatusfile updateStatusFile�\ 0 	booktitle 	bookTitle�[  0 remotelocation remoteLocation�Z 0 pathtome pathToMe�Y 0 scriptcommand scriptCommand�X 0 returnvalue returnValue. �W�V �U�T�S Z�R�Q�P � � � � � �
�W 
ascr
�V 
txdl
�U 
citm
�T 
cobj�S 
�R 
strq
�Q .sysoexecTEXT���     TEXT�P 40 getpathtoscriptcontainer getPathToScriptContainer�b m��,E�O���,FO��-E�O���,FO��k/E�O��l/E�O��m/E�O���/E�O��,%j O*�k+ 	E�O�%�%�%�%��,%�%��,%�%��,%�%E�O�j E�, �O ��N�M/0�L�O 40 getpathtoscriptcontainer getPathToScriptContainer�N �K1�K 1  �J�J 0 helpviewerurl helpViewerURL�M  / �I�H�G�I 0 helpviewerurl helpViewerURL�H 0 pathtome pathToMe�G 00 originalitemdelimeters originalItemDelimeters0 �F�E ��D�C ��B �	�A�@
�F 
ascr
�E 
txdl
�D 
citm
�C 
cobj�B��
�A 
TEXT
�@ 
strq�L L�E�O��,E�O���,FO��-�l/E�O�*�,FO��-[�\[Zl\Z�2E�O��%E�O�%�&E�O��,E�O���,FO� ascr  ��ޭ