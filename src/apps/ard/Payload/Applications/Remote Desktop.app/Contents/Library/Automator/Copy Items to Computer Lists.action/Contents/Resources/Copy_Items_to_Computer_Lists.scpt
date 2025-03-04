FasdUAS 1.101.10   ��   ��    k             l     ��  ��    0 *  Copy_Items_to_Computer_Lists.applescript     � 	 	 T     C o p y _ I t e m s _ t o _ C o m p u t e r _ L i s t s . a p p l e s c r i p t   
  
 l     ��  ��    $   Copy Items to Computer Lists     �   <     C o p y   I t e m s   t o   C o m p u t e r   L i s t s      l     ��������  ��  ��        l     ��  ��    + %  Created by Sal Soghoian on 6/26/12.     �   J     C r e a t e d   b y   S a l   S o g h o i a n   o n   6 / 2 6 / 1 2 .      l     ��  ��    = 7  Copyright � 2012-2013 Apple Inc. All rights reserved.     �   n     C o p y r i g h t   �   2 0 1 2 - 2 0 1 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� <0 copy_items_to_computer_lists Copy_Items_to_Computer_Lists  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + : 4 PROPERTIES USED AS REFERENCES TO INTERFACE OBJECTS     , � - - h   P R O P E R T I E S   U S E D   A S   R E F E R E N C E S   T O   I N T E R F A C E   O B J E C T S   *  . / . l     �� 0 1��   0 T N PROPERTIES LINKED TO TABLE CONTROLLER OBJECTS OR UI ELEMENTS IN THE INTERFACE    1 � 2 2 �   P R O P E R T I E S   L I N K E D   T O   T A B L E   C O N T R O L L E R   O B J E C T S   O R   U I   E L E M E N T S   I N   T H E   I N T E R F A C E /  3 4 3 j   	 �� 5�� &0 tablecontroller01 tableController01 5 m   	 
��
�� 
msng 4  6 7 6 j    �� 8�� "0 ownerinputfield ownerInputField 8 m    ��
�� 
msng 7  9 : 9 j    �� ;�� "0 groupinputfield groupInputField ; m    ��
�� 
msng :  < = < j    �� >�� 60 destinationpathinputfield destinationPathInputField > m    ��
�� 
msng =  ? @ ? l     ��������  ��  ��   @  A B A l      �� C D��   C 5 / THE HANDLER EXECUTED WHEN THE WORKFLOW IS RUN     D � E E ^   T H E   H A N D L E R   E X E C U T E D   W H E N   T H E   W O R K F L O W   I S   R U N   B  F G F i     H I H I      �� J���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ J  K L K o      ���� 	0 input   L  M N M o      ���� 0 anaction anAction N  O�� O o      ���� 0 errorref errorRef��  ��   I k    � P P  Q R Q I    �� S��
�� .ascrcmnt****      � **** S l     T���� T m      U U � V V < A U T O M A T O R - A C T I O N   r u n W i t h I n p u t :��  ��  ��   R  W X W l    Y Z [ Y r     \ ] \ c    	 ^ _ ^ o    ���� 	0 input   _ m    ��
�� 
list ] o      ���� 	0 input   Z a [ In an ASOC action like this one, be sure to convert input from NSArray to AppleScript list    [ � ` ` �   I n   a n   A S O C   a c t i o n   l i k e   t h i s   o n e ,   b e   s u r e   t o   c o n v e r t   i n p u t   f r o m   N S A r r a y   t o   A p p l e S c r i p t   l i s t X  a b a l   ��������  ��  ��   b  c d c l   �� e f��   e 7 1 STORE THE ACTION PARAMETERS RECORD IN A VARIABLE    f � g g b   S T O R E   T H E   A C T I O N   P A R A M E T E R S   R E C O R D   I N   A   V A R I A B L E d  h i h r     j k j n    l m l I    �������� 0 
parameters  ��  ��   m  f     k l      n���� n o      ���� ,0 parametersdictionary parametersDictionary��  ��   i  o p o l   �� q r��   q ) # GET THE VALUE FOR ERROR PARAMETERS    r � s s F   G E T   T H E   V A L U E   F O R   E R R O R   P A R A M E T E R S p  t�� t Z   � u v�� w u =    x y x l    z���� z c     { | { n    } ~ } I    �� ���� 0 valueforkey_ valueForKey_   ��� � m     � � � � �  e r r o r O c c u r e d��  ��   ~ o    ���� ,0 parametersdictionary parametersDictionary | m    ��
�� 
bool��  ��   y m    ��
�� boovtrue v k   ! B � �  � � � r   ! + � � � l  ! ) ����� � c   ! ) � � � n  ! ' � � � I   " '�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   " # � � � � �  e r r o r T i t l e��  ��   � o   ! "���� ,0 parametersdictionary parametersDictionary � m   ' (��
�� 
TEXT��  ��   � o      ���� 0 
errortitle 
errorTitle �  � � � r   , 6 � � � l  , 4 ����� � c   , 4 � � � n  , 2 � � � I   - 2�� ����� 0 valueforkey_ valueForKey_ �  ��� � m   - . � � � � �  e r r o r M e s s a g e��  ��   � o   , -���� ,0 parametersdictionary parametersDictionary � m   2 3��
�� 
TEXT��  ��   � o      ���� 0 errormessage errorMessage �  � � � r   7 ? � � � K   7 ; � � �� ����� 60 nsapplescripterrormessage NSAppleScriptErrorMessage � o   8 9���� 0 errormessage errorMessage��   � n       � � � 1   < >��
�� 
pcnt � o   ; <���� 0 errorref errorRef �  ��� � L   @ B � � m   @ A��
�� 
msng��  ��   w k   E� � �  � � � l  E E�� � ���   � - ' get a list of the selected table items    � � � � N   g e t   a   l i s t   o f   t h e   s e l e c t e d   t a b l e   i t e m s �  � � � r   E L � � � c   E J � � � l  E H ����� � n   E H � � � o   F H���� 0 selectedComputerListNames   � o   E F���� ,0 parametersdictionary parametersDictionary��  ��   � m   H I��
�� 
list � l      ����� � o      ���� 60 selectedcomputerlistnames selectedComputerListNames��  ��   �  � � � l  M M�� � ���   � %  derive the computer references    � � � � >   d e r i v e   t h e   c o m p u t e r   r e f e r e n c e s �  � � � O   M � � � � k   W � � �  � � � r   W b � � � l  W ` ����� � n   W ` � � � 1   \ `��
�� 
pnam � 2   W \��
�� 
clst��  ��   � l      ����� � o      ���� 40 currentcomputerlistnames currentComputerListNames��  ��   �  � � � r   c g � � � J   c e����   � l      ����� � o      ���� 00 computerlistreferences computerListReferences��  ��   �  ��� � Y   h � ��� � ��� � k   v � � �  � � � r   v � � � � c   v ~ � � � l  v | ����� � n   v | � � � 4   w |�� �
�� 
cobj � o   z {���� 0 i   � l  v w ����� � o   v w���� 60 selectedcomputerlistnames selectedComputerListNames��  ��  ��  ��   � m   | }��
�� 
TEXT � o      ���� 0 thisname thisName �  ��� � Z   � � � ��� � � E  � � � � � l  � � ����� � o   � ����� 40 currentcomputerlistnames currentComputerListNames��  ��   � o   � ����� 0 thisname thisName � l  � � � � � � r   � � � � � l  � � ���� � e   � � � � 4   � ��~ �
�~ 
clst � o   � ��}�} 0 thisname thisName��  �   � l      ��|�{ � n       � � �  ;   � � � l  � � ��z�y � o   � ��x�x 00 computerlistreferences computerListReferences�z  �y  �|  �{   �   check existence    � � � �     c h e c k   e x i s t e n c e��   � k   � � � �  � � � r   � � � � � l  � � ��w�v � n  � � � � � I   � ��u ��t�u &0 nslocalizedstring NSLocalizedString �  ��s � m   � � � � � � � , M I S S I N G _ C O M P U T E R _ E R R O R�s  �t   �  f   � ��w  �v   � o      �r�r $0 thiserrormessage thisErrorMessage �  �  � r   � � K   � � �q�p�q 60 nsapplescripterrormessage NSAppleScriptErrorMessage o   � ��o�o $0 thiserrormessage thisErrorMessage�p   n       1   � ��n
�n 
pcnt o   � ��m�m 0 errorref errorRef  �l L   � � m   � ��k
�k 
msng�l  ��  �� 0 i   � m   k l�j�j  � l  l q	�i�h	 I  l q�g
�f
�g .corecnte****       ****
 l  l m�e�d o   l m�c�c 60 selectedcomputerlistnames selectedComputerListNames�e  �d  �f  �i  �h  ��  ��   � 5   M T�b�a
�b 
capp m   O P � . c o m . a p p l e . R e m o t e D e s k t o p
�a kfrmID   �  Z   � ��`�_ =  � � o   � ��^�^ 00 computerlistreferences computerListReferences J   � ��]�]   k   � �  r   � � l  � ��\�[ n  � � I   � ��Z�Y�Z &0 nslocalizedstring NSLocalizedString �X m   � � �   0 N O _ S E L E C T E D _ F I E L D S _ E R R O R�X  �Y    f   � ��\  �[   o      �W�W $0 thiserrormessage thisErrorMessage !"! r   � �#$# K   � �%% �V&�U�V 60 nsapplescripterrormessage NSAppleScriptErrorMessage& o   � ��T�T $0 thiserrormessage thisErrorMessage�U  $ n      '(' 1   � ��S
�S 
pcnt( o   � ��R�R 0 errorref errorRef" )�Q) L   � �** m   � ��P
�P 
msng�Q  �`  �_   +,+ l  � ��O�N�M�O  �N  �M  , -.- l  � ��L/0�L  / ) # GET THE VALUE FOR OTHER PARAMETERS   0 �11 F   G E T   T H E   V A L U E   F O R   O T H E R   P A R A M E T E R S. 232 r   � �454 [   � �676 l  � �8�K�J8 c   � �9:9 l  � �;�I�H; n   � �<=< o   � ��G�G 0 destinationIndex  = o   � ��F�F ,0 parametersdictionary parametersDictionary�I  �H  : m   � ��E
�E 
long�K  �J  7 m   � ��D�D 5 o      �C�C $0 destinationindex destinationIndex3 >?> r   � �@A@ c   � �BCB l  � �D�B�AD n   � �EFE o   � ��@�@ 0 destinationPath  F o   � ��?�? ,0 parametersdictionary parametersDictionary�B  �A  C m   � ��>
�> 
utxtA o      �=�= "0 destinationpath destinationPath? GHG r   � �IJI c   � �KLK c   � �MNM l  � �O�<�;O n   � �PQP o   � ��:�: 0 	openItems  Q o   � ��9�9 ,0 parametersdictionary parametersDictionary�<  �;  N m   � ��8
�8 
longL m   � ��7
�7 
boolJ o      �6�6 0 	openitems 	openItemsH RSR r   �TUT c   �VWV c   �XYX l  � Z�5�4Z n   � [\[ o   � �3�3 0 shouldEncrypt  \ o   � ��2�2 ,0 parametersdictionary parametersDictionary�5  �4  Y m   �1
�1 
longW m  �0
�0 
boolU o      �/�/ 0 shouldencrypt shouldEncryptS ]^] r  	_`_ [  	aba l 	c�.�-c c  	ded l 	f�,�+f n  	ghg o  
�*�* 0 replacementIndex  h o  	
�)�) ,0 parametersdictionary parametersDictionary�,  �+  e m  �(
�( 
long�.  �-  b m  �'�' ` o      �&�& $0 replacementindex replacementIndex^ iji r  (klk c  $mnm c  "opo l q�%�$q n  rsr o  �#�# 0 stopOnError  s o  �"�" ,0 parametersdictionary parametersDictionary�%  �$  p m  !�!
�! 
longn m  "#� 
�  
booll o      �� 0 stoponerror stopOnErrorj tut r  )8vwv [  )4xyx l )2z��z c  )2{|{ l ).}��} n  ).~~ o  *.�� 0 bandwidthIndex   o  )*�� ,0 parametersdictionary parametersDictionary�  �  | m  .1�
� 
long�  �  y m  23�� w o      ��  0 bandwidthindex bandwidthIndexu ��� r  9H��� [  9D��� l 9B���� c  9B��� l 9>���� n  9>��� o  :>�� 0 ownershipIndex  � o  9:�� ,0 parametersdictionary parametersDictionary�  �  � m  >A�
� 
long�  �  � m  BC�� � o      ��  0 ownershipindex ownershipIndex� ��� r  Ie��� n  Ia��� 4  Za��
� 
cobj� o  ]`��  0 bandwidthindex bandwidthIndex� J  IZ�� ��� m  IJ�
�
  � ��� m  JM�	�	 � ��� m  MP�� � ��� m  PS�� � ��� m  SV��( �  � l     ���� o      �� "0 bandwidthamount bandwidthAmount�  �  � ��� Q  f����� r  iv��� c  ir��� l in��� � n  in��� o  jn���� 0 	groupName  � o  ij���� ,0 parametersdictionary parametersDictionary�  �   � m  nq��
�� 
utxt� o      ���� 0 	groupname 	groupName� R      ������
�� .ascrerr ****      � ****��  ��  � r  ~���� m  ~��� ���  � o      ���� 0 	groupname 	groupName� ��� Q  ������ r  ����� c  ����� l �������� n  ����� o  ������ 0 	ownerName  � o  ������ ,0 parametersdictionary parametersDictionary��  ��  � m  ����
�� 
utxt� o      ���� 0 	ownername 	ownerName� R      ������
�� .ascrerr ****      � ****��  ��  � r  ����� m  ���� ���  � o      ���� 0 	ownername 	ownerName� ��� l ����������  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� F A U T O M A T O R - A C T I O N   d e s t i n a t i o n I n d e x :  � o  ������ $0 destinationindex destinationIndex��  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� D A U T O M A T O R - A C T I O N   d e s t i n a t i o n P a t h :  � o  ������ "0 destinationpath destinationPath��  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� 8 A U T O M A T O R - A C T I O N   o p e n I t e m s :  � o  ������ 0 	openitems 	openItems��  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� @ A U T O M A T O R - A C T I O N   s h o u l d E n c r y p t :  � o  ������ 0 shouldencrypt shouldEncrypt��  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� F A U T O M A T O R - A C T I O N   r e p l a c e m e n t I n d e x :  � o  ������ $0 replacementindex replacementIndex��  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� < A U T O M A T O R - A C T I O N   s t o p O n E r r o r :  � o  ������ 0 stoponerror stopOnError��  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� B A U T O M A T O R - A C T I O N   b a n d w i d t h I n d e x :  � o  ������  0 bandwidthindex bandwidthIndex��  ��  ��  � ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� m  ���� ��� B A U T O M A T O R - A C T I O N   o w n e r s h i p I n d e x :  � o  ������  0 ownershipindex ownershipIndex��  ��  ��  �    I �	����
�� .ascrcmnt****      � **** l ����� b  � m  � � D A U T O M A T O R - A C T I O N   b a n d w i d t h A m o u n t :   o  ���� "0 bandwidthamount bandwidthAmount��  ��  ��   	 I 
��
��
�� .ascrcmnt****      � ****
 l 
���� b  
 m  
 � 8 A U T O M A T O R - A C T I O N   g r o u p N a m e :   o  ���� 0 	groupname 	groupName��  ��  ��  	  I !����
�� .ascrcmnt****      � **** l ���� b   m   � 8 A U T O M A T O R - A C T I O N   o w n e r N a m e :   o  ���� 0 	ownername 	ownerName��  ��  ��    l ""��������  ��  ��    r  ". l "*���� n "*  I  #*��!���� &0 nslocalizedstring NSLocalizedString! "��" m  #&## �$$  A C T I O N _ T I T L E��  ��     f  "#��  ��   l     %����% o      ���� 0 taskname taskName��  ��   &'& l //��������  ��  ��  ' ()( O  /�*+* k  ;�,, -.- n ;C/0/ I  <C��1���� 0 logthis logThis1 2��2 m  <?33 �44 D A U T O M A T O R - A C T I O N   c o n s t r u c t i n g   t a s k��  ��  0  f  ;<. 565 l DD��������  ��  ��  6 787 n DL9:9 I  EL��;���� 0 logthis logThis; <��< m  EH== �>> D A U T O M A T O R - A C T I O N   c o n s t r u c t i n g   t a s k��  ��  :  f  DE8 ?@? l MM��������  ��  ��  @ ABA r  MhCDC n  MdEFE 4  ]d��G
�� 
cobjG o  `c���� $0 replacementindex replacementIndexF J  M]HH IJI m  MP��
�� enm1ccr3J KLK m  PS��
�� enm1ccr4L MNM m  SV��
�� enm1rplcN O��O m  VY��
�� enm1ccr2��  D l     P����P o      ���� 00 replacementenumeration replacementEnumeration��  ��  B QRQ n iuSTS I  ju��U���� 0 logthis logThisU V��V b  jqWXW m  jmYY �ZZ R A U T O M A T O R - A C T I O N   r e p l a c e m e n t E n u m e r a t i o n :  X o  mp���� 00 replacementenumeration replacementEnumeration��  ��  T  f  ijR [\[ l vv��������  ��  ��  \ ]^] r  v�_`_ n  v�aba 4  ����c
�� 
cobjc o  ������ $0 destinationindex destinationIndexb J  v�dd efe m  vy��
�� enm2rltvf ghg m  y|��
�� enm2appsh iji m  |��
�� enm2cudfj klk m  ���
�� enm2cusrl mnm m  ����
�� enm2macsn opo m  ����
�� enm2sfntp qrq m  ����
�� enm2sprfr sts m  ���
� enm2btrtt uvu m  ��ww �xx  m e n u   s e p e r a t o rv y�~y m  ���}
�} enm2spcf�~  ` l     z�|�{z o      �z�z 00 destinationenumeration destinationEnumeration�|  �{  ^ {|{ n ��}~} I  ���y�x�y 0 logthis logThis ��w� b  ����� m  ���� ��� R A U T O M A T O R - A C T I O N   d e s t i n a t i o n E n u m e r a t i o n :  � o  ���v�v 00 destinationenumeration destinationEnumeration�w  �x  ~  f  ��| ��� l ���u�t�s�u  �t  �s  � ��� r  ����� n  ����� 4  ���r�
�r 
cobj� o  ���q�q  0 ownershipindex ownershipIndex� J  ���� ��� m  ���p
�p enm3coo3� ��� m  ���o
�o enm3coo2� ��� m  ���n
�n enm3coo1� ��� m  ���� ���  m e n u   s e p e r a t o r� ��m� m  ���l
�l enm3coo4�m  � l     ��k�j� o      �i�i  0 ownershipvalue ownershipValue�k  �j  � ��� n ����� I  ���h��g�h 0 logthis logThis� ��f� b  ����� m  ���� ��� B A U T O M A T O R - A C T I O N   o w n e r s h i p V a l u e :  � o  ���e�e  0 ownershipvalue ownershipValue�f  �g  �  f  ��� ��� l ���d�c�b�d  �c  �b  � ��� Z  �r���a�� = ����� l ����`�_� o  ���^�^  0 ownershipindex ownershipIndex�`  �_  � m  ���]�] � l ������ Z  �����\�� = ����� l ����[�Z� o  ���Y�Y $0 destinationindex destinationIndex�[  �Z  � m  ���X�X 
� l �R���� k  �R�� ��� n ����� I  ���W��V�W 0 logthis logThis� ��U� m  ���� ��� . A U T O M A T O R - A C T I O N   t a s k   A�U  �V  �  f  ��� ��T� r  �R��� I �N�S�R�
�S .corecrel****      � null�R  � �Q��
�Q 
kocl� m  ���P
�P 
cpit� �O��N
�O 
prdt� K   H�� �M��
�M 
pnam� o  �L�L 0 taskname taskName� �K��
�K 
shot� m  	
�J
�J boovfals� �I��
�I 
iloc� m  �H
�H enm2spcf� �G��
�G 
cpth� o  �F�F "0 destinationpath destinationPath� �E��
�E 
itms� o  �D�D 	0 input  � �C��
�C 
cres� o  �B�B 00 replacementenumeration replacementEnumeration� �A��
�A 
cagi� o  !$�@�@ "0 bandwidthamount bandwidthAmount� �?��
�? 
shoO� o  '(�>�> 0 	openitems 	openItems� �=��
�= 
serr� o  +.�<�< 0 stoponerror stopOnError� �;��
�; 
ston� m  14�:
�: enm3coo4� �9��
�9 
cgrp� o  7:�8�8 0 	groupname 	groupName� �7��
�7 
cown� o  =@�6�6 0 	ownername 	ownerName� �5��4
�5 
ncrp� o  CD�3�3 0 shouldencrypt shouldEncrypt�4  �N  � o      �2�2 0 thistask thisTask�T  �   specific folder   � ���     s p e c i f i c   f o l d e r�\  � k  U��� ��� n U]��� I  V]�1��0�1 0 logthis logThis� ��/� m  VY�� ��� . A U T O M A T O R - A C T I O N   t a s k   B�/  �0  �  f  UV� ��.� r  ^���� I ^��-�,�
�- .corecrel****      � null�,  � �+��
�+ 
kocl� m  be�*
�* 
cpit� �)��(
�) 
prdt� K  h��� �'��
�' 
pnam� o  kn�&�& 0 taskname taskName� �%��
�% 
shot� m  qr�$
�$ boovfals� �#��
�# 
iloc� o  ux�"�" 00 destinationenumeration destinationEnumeration� �!��
�! 
itms� o  {|� �  	0 input  � �� 
� 
cres� o  ��� 00 replacementenumeration replacementEnumeration  �
� 
cagi o  ���� "0 bandwidthamount bandwidthAmount �
� 
shoO o  ���� 0 	openitems 	openItems �
� 
serr o  ���� 0 stoponerror stopOnError �
� 
ston m  ���
� enm3coo4 �	

� 
cgrp	 o  ���� 0 	groupname 	groupName
 �
� 
cown o  ���� 0 	ownername 	ownerName ��
� 
ncrp o  ���� 0 shouldencrypt shouldEncrypt�  �(  � o      �� 0 thistask thisTask�.  �   specific owner   � �    s p e c i f i c   o w n e r�a  � Z  �r� = �� l ���� o  ���
�
 $0 destinationindex destinationIndex�  �   m  ���	�	 
 l � k  �  n �� I  ����� 0 logthis logThis � m  �� �   . A U T O M A T O R - A C T I O N   t a s k   C�  �    f  �� !�! r  �"#" I ���$
� .corecrel****      � null�  $ �%&
� 
kocl% m  ���
� 
cpit& � '��
�  
prdt' K  �(( ��)*
�� 
pnam) o  ������ 0 taskname taskName* ��+,
�� 
shot+ m  ����
�� boovfals, ��-.
�� 
iloc- m  ����
�� enm2spcf. ��/0
�� 
cpth/ o  ������ "0 destinationpath destinationPath0 ��12
�� 
itms1 o  ������ 	0 input  2 ��34
�� 
cres3 o  ������ 00 replacementenumeration replacementEnumeration4 ��56
�� 
cagi5 o  ������ "0 bandwidthamount bandwidthAmount6 ��78
�� 
shoO7 o  ������ 0 	openitems 	openItems8 ��9:
�� 
serr9 o  ����� 0 stoponerror stopOnError: ��;<
�� 
ston; o  ����  0 ownershipvalue ownershipValue< ��=��
�� 
ncrp= o  ���� 0 shouldencrypt shouldEncrypt��  ��  # o      ���� 0 thistask thisTask�     specific folder    �>>     s p e c i f i c   f o l d e r�   k  r?? @A@ n %BCB I  %��D���� 0 logthis logThisD E��E m  !FF �GG . A U T O M A T O R - A C T I O N   t a s k   D��  ��  C  f  A H��H r  &rIJI I &n����K
�� .corecrel****      � null��  K ��LM
�� 
koclL m  *-��
�� 
cpitM ��N��
�� 
prdtN K  0hOO ��PQ
�� 
pnamP o  36���� 0 taskname taskNameQ ��RS
�� 
shotR m  9:��
�� boovfalsS ��TU
�� 
ilocT o  =@���� 00 destinationenumeration destinationEnumerationU ��VW
�� 
itmsV o  CD���� 	0 input  W ��XY
�� 
cresX o  GJ���� 00 replacementenumeration replacementEnumerationY ��Z[
�� 
cagiZ o  MP���� "0 bandwidthamount bandwidthAmount[ ��\]
�� 
shoO\ o  ST���� 0 	openitems 	openItems] ��^_
�� 
serr^ o  WZ���� 0 stoponerror stopOnError_ ��`a
�� 
ston` o  ]`����  0 ownershipvalue ownershipValuea ��b��
�� 
ncrpb o  cd���� 0 shouldencrypt shouldEncrypt��  ��  J o      ���� 0 thistask thisTask��  � cdc l ss��������  ��  ��  d efe n s{ghg I  t{��i���� 0 logthis logThisi j��j m  twkk �ll > A U T O M A T O R - A C T I O N   e x e c u t i n g   t a s k��  ��  h  f  stf mnm l ||��������  ��  ��  n opo I |���qr
�� .mcp extkreco       taskq o  |���� 0 thistask thisTaskr ��s��
�� 
on  s o  ������ 00 computerlistreferences computerListReferences��  p tut l ����������  ��  ��  u v��v L  ��ww o  ������ 00 computerlistreferences computerListReferences��  + 5  /8��x��
�� 
cappx m  14yy �zz . c o m . a p p l e . R e m o t e D e s k t o p
�� kfrmID  ) {��{ l ����������  ��  ��  ��  ��   G |}| l     ��������  ��  ��  } ~~ i    ��� I      ������� 0 logthis logThis� ���� o      ���� 0 thisitem thisItem��  ��  � I    �����
�� .ascrcmnt****      � ****� o     ���� 0 thisitem thisItem��   ��� l     ��������  ��  ��  � ��� l      ������  � = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    � ��� n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  � ��� i     ��� I      �������� 
0 opened  ��  ��  � k     ��� ��� I    �����
�� .ascrcmnt****      � ****� l    ������ m     �� ��� < A U T O M A T O R - A C T I O N   o p e n e d :   e n t e r��  ��  ��  � ��� l   ������  � . ( get a list of the stored computer names   � ��� P   g e t   a   l i s t   o f   t h e   s t o r e d   c o m p u t e r   n a m e s� ��� r    ��� c    ��� l   ������ n    ��� o    ���� 0 selectedComputerListNames  � n   ��� I    �������� 0 
parameters  ��  ��  �  f    ��  ��  � m    ��
�� 
list� l     ������ o      ���� 60 selectedcomputerlistnames selectedComputerListNames��  ��  � ��� Z    +������ =   ��� l   ������ I   �����
�� .corecnte****       ****� l   ������ o    ���� 60 selectedcomputerlistnames selectedComputerListNames��  ��  ��  ��  ��  � m    ����  � l   !���� n   !��� I    !��������  0 populatetables populateTables��  ��  �  f    � > 8 if no items are stored, then populate with current data   � ��� p   i f   n o   i t e m s   a r e   s t o r e d ,   t h e n   p o p u l a t e   w i t h   c u r r e n t   d a t a��  � l  $ +���� n  $ +��� I   % +������� $0 adddatatotable01 addDataToTable01� ��� o   % &�� 60 selectedcomputerlistnames selectedComputerListNames� ��~� m   & '�}�} �~  ��  �  f   $ %� ' ! populate table using stored data   � ��� B   p o p u l a t e   t a b l e   u s i n g   s t o r e d   d a t a� ��� l  , ,�|���|  � @ : Set the enabled status of the group and owner text fields   � ��� t   S e t   t h e   e n a b l e d   s t a t u s   o f   t h e   g r o u p   a n d   o w n e r   t e x t   f i e l d s� ��� r   , :��� c   , 8��� l  , 6��{�z� n  , 6��� n  - 6��� I   1 6�y��x�y 0 valueforkey_ valueForKey_� ��w� m   1 2�� ���  o w n e r s h i p I n d e x�w  �x  � I   - 1�v�u�t�v 0 
parameters  �u  �t  �  f   , -�{  �z  � m   6 7�s
�s 
long� l     ��r�q� o      �p�p <0 currentselectedmenuitemindex currentSelectedMenuItemIndex�r  �q  � ��� Z   ; P���o�� =  ; >��� o   ; <�n�n <0 currentselectedmenuitemindex currentSelectedMenuItemIndex� m   < =�m�m � l  A G���� I   A G�l��k�l 00 setenabledoftextinputs setEnabledOfTextInputs� ��j� m   B C�i
�i boovtrue�j  �k  � !  the �Other...� menu option   � ��� 6   t h e    O t h e r . . .    m e n u   o p t i o n�o  � I   J P�h��g�h 00 setenabledoftextinputs setEnabledOfTextInputs� ��f� m   K L�e
�e boovfals�f  �g  � ��� l  Q Q�d���d  � ? 9 Set the enabled state of the destination path text field   � ��� r   S e t   t h e   e n a b l e d   s t a t e   o f   t h e   d e s t i n a t i o n   p a t h   t e x t   f i e l d� ��� r   Q _��� c   Q ]��� l  Q [��c�b� n  Q [��� n  R [��� I   V [�a��`�a 0 valueforkey_ valueForKey_� ��_� m   V W�� ���   d e s t i n a t i o n I n d e x�_  �`  � I   R V�^�]�\�^ 0 
parameters  �]  �\  �  f   Q R�c  �b  � m   [ \�[
�[ 
long� l     ��Z�Y� o      �X�X <0 currentselectedmenuitemindex currentSelectedMenuItemIndex�Z  �Y  � ��� Z   ` ����W�� =  ` c   o   ` a�V�V <0 currentselectedmenuitemindex currentSelectedMenuItemIndex m   a b�U�U 	� l  f u O  f u I   n t�T�S�T 0 setenabled_ setEnabled_ �R m   o p�Q
�Q boovtrue�R  �S   o   f k�P�P 60 destinationpathinputfield destinationPathInputField !  the �Other...� menu option    �		 6   t h e    O t h e r . . .    m e n u   o p t i o n�W  � O  x �

 I   � ��O�N�O 0 setenabled_ setEnabled_ �M m   � ��L
�L boovfals�M  �N   o   x }�K�K 60 destinationpathinputfield destinationPathInputField� �J I  � ��I�H
�I .ascrcmnt****      � **** l  � ��G�F m   � � � : A U T O M A T O R - A C T I O N   o p e n e d :   e x i t�G  �F  �H  �J  �  l     �E�D�C�E  �D  �C    l      �B�B   \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN     � �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N    i   ! $ I      �A�@�?�A $0 updateparameters updateParameters�@  �?   k     �   I    �>!�=
�> .ascrcmnt****      � ****! l    "�<�;" m     ## �$$ P A U T O M A T O R - A C T I O N   u p d a t e P a r a m e t e r s :   e n t e r�<  �;  �=    %&% l   �:'(�:  ' %  reset error indicator property   ( �)) >   r e s e t   e r r o r   i n d i c a t o r   p r o p e r t y& *+* n   ,-, n   ./. I    �90�8�9 $0 setvalue_forkey_ setValue_forKey_0 121 m    �7
�7 boovfals2 3�63 m    44 �55  e r r o r O c c u r e d�6  �8  / I    �5�4�3�5 0 
parameters  �4  �3  -  f    + 676 l   �2�1�0�2  �1  �0  7 898 l   �/:;�/  : R L TABLE 01: get the contents of table, which is returned as a list of records   ; �<< �   T A B L E   0 1 :   g e t   t h e   c o n t e n t s   o f   t a b l e ,   w h i c h   i s   r e t u r n e d   a s   a   l i s t   o f   r e c o r d s9 =>= l   ?@A? r    BCB n   DED o    �.�. 0 content  E o    �-�- &0 tablecontroller01 tableController01C o      �,�, 0 	tabledata 	tableData@   list of records   A �FF     l i s t   o f   r e c o r d s> GHG r     IJI J    �+�+  J l     K�*�)K o      �(�( 60 selectedcomputerlistnames selectedComputerListNames�*  �)  H LML Y   ! UN�'OP�&N k   / PQQ RSR l  / 5TUVT r   / 5WXW n   / 3YZY 4   0 3�%[
�% 
cobj[ o   1 2�$�$ 0 i  Z l  / 0\�#�"\ o   / 0�!�! 0 	tabledata 	tableData�#  �"  X o      � �  0 
thisrecord 
thisRecordU   a single record   V �]]     a   s i n g l e   r e c o r dS ^_^ r   6 =`a` c   6 ;bcb l  6 9d��d n   6 9efe o   7 9�� 0 selectionIndicator  f o   6 7�� 0 
thisrecord 
thisRecord�  �  c m   9 :�
� 
boola o      �� 0 rowselected rowSelected_ g�g Z   > Phi��h =  > Ajkj o   > ?�� 0 rowselected rowSelectedk m   ? @�
� boovtruei r   D Llml c   D Inon l  D Gp��p n   D Gqrq o   E G�� 0 computerListName  r o   D E�� 0 
thisrecord 
thisRecord�  �  o m   G H�
� 
TEXTm l     s��s n      tut  ;   J Ku l  I Jv��v o   I J�� 60 selectedcomputerlistnames selectedComputerListNames�  �  �  �  �  �  �  �' 0 i  O m   $ %�
�
 P l  % *w�	�w I  % *�x�
� .corecnte****       ****x o   % &�� 0 	tabledata 	tableData�  �	  �  �&  M yzy l  V V�{|�  { $  log selectedComputerListNames   | �}} <   l o g   s e l e c t e d C o m p u t e r L i s t N a m e sz ~~ Z   V ������ =  V Z��� o   V W�� 60 selectedcomputerlistnames selectedComputerListNames� J   W Y� �   � k   ] ��� ��� l  ] ]������  � B < throw the error to the run handler by passing as parameters   � ��� x   t h r o w   t h e   e r r o r   t o   t h e   r u n   h a n d l e r   b y   p a s s i n g   a s   p a r a m e t e r s� ��� n  ] h��� n  ^ h��� I   b h������� $0 setvalue_forkey_ setValue_forKey_� ��� m   b c��
�� boovtrue� ���� m   c d�� ���  e r r o r O c c u r e d��  ��  � I   ^ b�������� 0 
parameters  ��  ��  �  f   ] ^� ��� r   i q��� l  i o������ n  i o��� I   j o������� &0 nslocalizedstring NSLocalizedString� ���� m   j k�� ��� * S E L E C T I O N _ E R R O R _ T I T L E��  ��  �  f   i j��  ��  � l     ������ o      ���� 0 
errortitle 
errorTitle��  ��  � ��� r   r z��� l  r x������ n  r x��� I   s x������� &0 nslocalizedstring NSLocalizedString� ���� m   s t�� ��� . S E L E C T I O N _ E R R O R _ M E S S A G E��  ��  �  f   r s��  ��  � l     ������ o      ���� 0 errormessage errorMessage��  ��  � ��� n  { ���� n  | ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 0 
errortitle 
errorTitle� ���� m   � ��� ���  e r r o r T i t l e��  ��  � I   | ��������� 0 
parameters  ��  ��  �  f   { |� ���� n  � ���� n  � ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 0 errormessage errorMessage� ���� m   � ��� ���  e r r o r M e s s a g e��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � ���  �  �   ��� l  � �������  � 2 , write the values into the parameters record   � ��� X   w r i t e   t h e   v a l u e s   i n t o   t h e   p a r a m e t e r s   r e c o r d� ��� n  � ���� n  � ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 60 selectedcomputerlistnames selectedComputerListNames� ���� m   � ��� ��� 2 s e l e c t e d C o m p u t e r L i s t N a m e s��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � �� ���� I  � ������
�� .ascrcmnt****      � ****� l  � ������� m   � ��� ��� N A U T O M A T O R - A C T I O N   u p d a t e P a r a m e t e r s :   e x i t��  ��  ��  ��   ��� l     ��������  ��  ��  � ��� l      ������  � ( " SUB-ROUTINE POPULATES THE TABLES    � ��� D   S U B - R O U T I N E   P O P U L A T E S   T H E   T A B L E S  � ��� i   % (��� I      ��������  0 populatetables populateTables��  ��  � k     �� ��� l     ������  � ( " GET NAMES OF ARD REMOTE COMPUTERS   � ��� D   G E T   N A M E S   O F   A R D   R E M O T E   C O M P U T E R S� ��� r     ��� n    ��� I    �������� 20 getardcomputerlistnames getARDcomputerListNames��  ��  �  f     � l     ������ o      ���� &0 computerlistnames computerListNames��  ��  � ��� l   ������  �   POPULATE THE TABLE   � ��� &   P O P U L A T E   T H E   T A B L E� ���� n   ��� I   	 ������� $0 adddatatotable01 addDataToTable01� ��� o   	 
���� &0 computerlistnames computerListNames� ���� m   
 ����  ��  ��  �  f    	��  � � � l     ��������  ��  ��     l      ����   ; 5 EACH TABLE GETS ITS OWN CONTROLLER AND SUB-ROUTINES     � j   E A C H   T A B L E   G E T S   I T S   O W N   C O N T R O L L E R   A N D   S U B - R O U T I N E S    i   ) ,	 I      ��
���� $0 adddatatotable01 addDataToTable01
  o      ���� 0 	itemnames 	itemNames �� o      ���� .0 defaultselectionvalue defaultSelectionValue��  ��  	 l    F k     F  l     ����   !  remove existing list items    � 6   r e m o v e   e x i s t i n g   l i s t   i t e m s  O     I    ������  0 removeobjects_ removeObjects_ �� n  	  o    ���� 0 content   o   	 ���� &0 tablecontroller01 tableController01��  ��   o     ���� &0 tablecontroller01 tableController01   l   ��!"��  ! &   add new items to the empty list   " �## @   a d d   n e w   i t e m s   t o   t h e   e m p t y   l i s t  $��$ Y    F%��&'��% k   $ A(( )*) r   $ *+,+ n   $ (-.- 4   % (��/
�� 
cobj/ o   & '���� 0 i  . l  $ %0����0 o   $ %���� 0 	itemnames 	itemNames��  ��  , o      ���� 0 thisname thisName* 121 l  + +��34��  3 p j NOTE: two sets of brackets are used: the outermost indicates a list, and the innermost indicates a record   4 �55 �   N O T E :   t w o   s e t s   o f   b r a c k e t s   a r e   u s e d :   t h e   o u t e r m o s t   i n d i c a t e s   a   l i s t ,   a n d   t h e   i n n e r m o s t   i n d i c a t e s   a   r e c o r d2 676 l  + +��89��  8 � � NOTE: |selectionIndicator| is the key added to the array controller for controlling the checkbox column. |computerListName| is the key added to the array controller for controlling the computer names column.   9 �::�   N O T E :   | s e l e c t i o n I n d i c a t o r |   i s   t h e   k e y   a d d e d   t o   t h e   a r r a y   c o n t r o l l e r   f o r   c o n t r o l l i n g   t h e   c h e c k b o x   c o l u m n .   | c o m p u t e r L i s t N a m e |   i s   t h e   k e y   a d d e d   t o   t h e   a r r a y   c o n t r o l l e r   f o r   c o n t r o l l i n g   t h e   c o m p u t e r   n a m e s   c o l u m n .7 ;��; O  + A<=< I   3 @��>���� 0 addobjects_ addObjects_> ?��? J   4 <@@ A��A K   4 :BB ��CD�� 0 selectionIndicator  C o   5 6���� .0 defaultselectionvalue defaultSelectionValueD ��E���� 0 computerListName  E o   7 8���� 0 thisname thisName��  ��  ��  ��  = o   + 0���� &0 tablecontroller01 tableController01��  �� 0 i  & m    ���� ' l   F����F I   ��G��
�� .corecnte****       ****G o    ���� 0 	itemnames 	itemNames��  ��  ��  ��  ��     POPULATE THE TABLE    �HH &   P O P U L A T E   T H E   T A B L E IJI l     ��������  ��  ��  J KLK l      ��MN��  M 7 1 ROUTINES FOR GETTING DATA FROM THE APPLICATIONS    N �OO b   R O U T I N E S   F O R   G E T T I N G   D A T A   F R O M   T H E   A P P L I C A T I O N S  L PQP i   - 0RSR I      �������� 20 getardcomputerlistnames getARDcomputerListNames��  ��  S k     TT UVU O     WXW r    YZY l   [����[ n    \]\ 1    ��
�� 
pnam] 2    �
� 
clst��  ��  Z o      �~�~ 0 
thesenames 
theseNamesX 5     �}^�|
�} 
capp^ m    __ �`` . c o m . a p p l e . R e m o t e D e s k t o p
�| kfrmID  V a�{a L    bb o    �z�z 0 
thesenames 
theseNames�{  Q cdc l     �y�x�w�y  �x  �w  d efe l      �vgh�v  g %  METHOD UPDATES TABLE CONTENTS    h �ii >   M E T H O D   U P D A T E S   T A B L E   C O N T E N T S  f jkj i   1 4lml I      �un�t�u 0 updatetables_ updateTables_n o�so o      �r�r 
0 sender  �s  �t  m n    pqp I    �q�p�o�q  0 populatetables populateTables�p  �o  q  f     k rsr l     �n�m�l�n  �m  �l  s tut l      �kvw�k  v , & METHODS FOR SETTING TABLE CHECKBOXES    w �xx L   M E T H O D S   F O R   S E T T I N G   T A B L E   C H E C K B O X E S  u yzy i   5 8{|{ I      �j}�i�j ,0 setcheckboxestotrue_ setCheckboxesToTrue_} ~�h~ o      �g�g 
0 sender  �h  �i  | X      �f� r    ��� m    �e
�e boovtrue� n      ��� o    �d�d 0 selectionIndicator  � o    �c�c 0 
eachobject 
eachObject�f 0 
eachobject 
eachObject� l   
��b�a� n   
��� o    
�`�` 0 content  � o    �_�_ &0 tablecontroller01 tableController01�b  �a  z ��� l     �^�]�\�^  �]  �\  � ��� i   9 <��� I      �[��Z�[ .0 setcheckboxestofalse_ setCheckboxesToFalse_� ��Y� o      �X�X 
0 sender  �Y  �Z  � X      ��W�� r    ��� m    �V
�V boovfals� n      ��� o    �U�U 0 selectionIndicator  � o    �T�T 0 
eachobject 
eachObject�W 0 
eachobject 
eachObject� l   
��S�R� n   
��� o    
�Q�Q 0 content  � o    �P�P &0 tablecontroller01 tableController01�S  �R  � ��� l     �O�N�M�O  �N  �M  � ��� l      �L���L  � H B METHOD FOR SETTING ENABLED STATE OF DESTINATION PATH INPUT FIELD    � ��� �   M E T H O D   F O R   S E T T I N G   E N A B L E D   S T A T E   O F   D E S T I N A T I O N   P A T H   I N P U T   F I E L D  � ��� i   = @��� I      �K��J�K :0 setenabledstateoftextinput_ setEnabledStateOfTextInput_� ��I� o      �H�H 
0 sender  �I  �J  � k     /�� ��� r     ��� n    ��� I    �G�F�E�G *0 indexofselecteditem indexOfSelectedItem�F  �E  � o     �D�D 
0 sender  � o      �C�C 0 	thisindex 	thisIndex� ��B� Z    /���A�� =   ��� o    	�@�@ 0 	thisindex 	thisIndex� m   	 
�?�? 	� l   ���� O   ��� I    �>��=�> 0 setenabled_ setEnabled_� ��<� m    �;
�; boovtrue�<  �=  � o    �:�: 60 destinationpathinputfield destinationPathInputField� !  the �Other...� menu option   � ��� 6   t h e    O t h e r . . .    m e n u   o p t i o n�A  � O    /��� I   ( .�9��8�9 0 setenabled_ setEnabled_� ��7� m   ) *�6
�6 boovfals�7  �8  � o     %�5�5 60 destinationpathinputfield destinationPathInputField�B  � ��� l     �4�3�2�4  �3  �2  � ��� l      �1���1  � 8 2 METHOD FOR SETTING ENABLED STATE OF INPUT FIELDS    � ��� d   M E T H O D   F O R   S E T T I N G   E N A B L E D   S T A T E   O F   I N P U T   F I E L D S  � ��� i   A D��� I      �0��/�0 <0 setenabledstateoftextinputs_ setEnabledStateOfTextInputs_� ��.� o      �-�- 
0 sender  �.  �/  � k     �� ��� r     ��� n    ��� I    �,�+�*�, *0 indexofselecteditem indexOfSelectedItem�+  �*  � o     �)�) 
0 sender  � o      �(�( 0 	thisindex 	thisIndex� ��'� Z    ���&�� =   ��� o    	�%�% 0 	thisindex 	thisIndex� m   	 
�$�$ � l   ���� I    �#��"�# 00 setenabledoftextinputs setEnabledOfTextInputs� ��!� m    � 
�  boovtrue�!  �"  � !  the �Other...� menu option   � ��� 6   t h e    O t h e r . . .    m e n u   o p t i o n�&  � I    ���� 00 setenabledoftextinputs setEnabledOfTextInputs� ��� m    �
� boovfals�  �  �'  � ��� l     ����  �  �  � ��� i   E H��� I      ���� 00 setenabledoftextinputs setEnabledOfTextInputs� ��� o      �� 0 
statevalue 
stateValue�  �  � k     �� ��� O    ��� I    ���� 0 setenabled_ setEnabled_� ��� o   	 
�� 0 
statevalue 
stateValue�  �  � o     �� "0 ownerinputfield ownerInputField� ��� O   ��� I    ���� 0 setenabled_ setEnabled_� ��� o    �� 0 
statevalue 
stateValue�  �  � o    �
�
 "0 groupinputfield groupInputField�  � ��� l     �	���	  �  �  � ��� l     ����  �   LOCALIZATION ROUTINE   � ��� *   L O C A L I Z A T I O N   R O U T I N E� ��� i   I L��� I      � �� &0 nslocalizedstring NSLocalizedString  � 1      �
� 
kMsg�  �  � L      c      n     n    I    �	� � H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_	 

 1    ��
�� 
kMsg  m    ��
�� 
msng �� m    ��
�� 
msng��  �    I    �������� 
0 bundle  ��  ��    f      m    ��
�� 
utxt� �� l     ��������  ��  ��  ��    �� l     ��������  ��  ��  ��       ����   ���� <0 copy_items_to_computer_lists Copy_Items_to_Computer_Lists �� �� <0 copy_items_to_computer_lists Copy_Items_to_Computer_Lists  ����
�� misccura
�� 
pcls �  A M B u n d l e A c t i o n ������������ !"#$%&��   ��������������������������������������
�� 
pare�� &0 tablecontroller01 tableController01�� "0 ownerinputfield ownerInputField�� "0 groupinputfield groupInputField�� 60 destinationpathinputfield destinationPathInputField�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� 0 logthis logThis�� 
0 opened  �� $0 updateparameters updateParameters��  0 populatetables populateTables�� $0 adddatatotable01 addDataToTable01�� 20 getardcomputerlistnames getARDcomputerListNames�� 0 updatetables_ updateTables_�� ,0 setcheckboxestotrue_ setCheckboxesToTrue_�� .0 setcheckboxestofalse_ setCheckboxesToFalse_�� :0 setenabledstateoftextinput_ setEnabledStateOfTextInput_�� <0 setenabledstateoftextinputs_ setEnabledStateOfTextInputs_�� 00 setenabledoftextinputs setEnabledOfTextInputs�� &0 nslocalizedstring NSLocalizedString��  
�� 
msng
�� 
msng
�� 
msng
�� 
msng �� I����'(���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� ��)�� )  �������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef��  ' ���������������������������������������������������������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef�� ,0 parametersdictionary parametersDictionary�� 0 
errortitle 
errorTitle�� 0 errormessage errorMessage�� 60 selectedcomputerlistnames selectedComputerListNames�� 40 currentcomputerlistnames currentComputerListNames�� 00 computerlistreferences computerListReferences�� 0 i  �� 0 thisname thisName�� $0 thiserrormessage thisErrorMessage�� $0 destinationindex destinationIndex�� "0 destinationpath destinationPath�� 0 	openitems 	openItems�� 0 shouldencrypt shouldEncrypt�� $0 replacementindex replacementIndex�� 0 stoponerror stopOnError��  0 bandwidthindex bandwidthIndex��  0 ownershipindex ownershipIndex�� "0 bandwidthamount bandwidthAmount�� 0 	groupname 	groupName�� 0 	ownername 	ownerName�� 0 taskname taskName�� 00 replacementenumeration replacementEnumeration�� 00 destinationenumeration destinationEnumeration��  0 ownershipvalue ownershipValue�� 0 thistask thisTask( p U������ ����� ��� ��������������������� ���������������������������������������������������#y3��=����������Y����������~�}�|w�{�z��y�x�w��v���u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e��d�cF�bk�a�`
�� .ascrcmnt****      � ****
�� 
list�� 0 
parameters  �� 0 valueforkey_ valueForKey_
�� 
bool
�� 
TEXT�� 60 nsapplescripterrormessage NSAppleScriptErrorMessage
�� 
pcnt
�� 
msng�� 0 selectedComputerListNames  
�� 
capp
�� kfrmID  
�� 
clst
�� 
pnam
�� .corecnte****       ****
�� 
cobj�� &0 nslocalizedstring NSLocalizedString�� 0 destinationIndex  
�� 
long�� 0 destinationPath  
�� 
utxt�� 0 	openItems  �� 0 shouldEncrypt  �� 0 replacementIndex  �� 0 stopOnError  �� 0 bandwidthIndex  �� 0 ownershipIndex  �� �� �� ��( �� �� 0 	groupName  ��  ��  �� 0 	ownerName  �� 0 logthis logThis
�� enm1ccr3
�� enm1ccr4
�� enm1rplc
�� enm1ccr2�� 
�� enm2rltv
�� enm2apps
�� enm2cudf
�� enm2cusr
� enm2macs
�~ enm2sfnt
�} enm2sprf
�| enm2btrt
�{ enm2spcf�z 

�y enm3coo3
�x enm3coo2
�w enm3coo1
�v enm3coo4
�u 
kocl
�t 
cpit
�s 
prdt
�r 
shot
�q 
iloc
�p 
cpth
�o 
itms
�n 
cres
�m 
cagi
�l 
shoO
�k 
serr
�j 
ston
�i 
cgrp
�h 
cown
�g 
ncrp�f 
�e .corecrel****      � null�d �c �b 
�a 
on  
�` .mcp extkreco       task����j O��&E�O)j+ E�O��k+ �&e  &��k+ �&E�O��k+ �&E�O�l��,FO�YJ��,�&E�O)��a 0 Z*a -a ,E�OjvE�O Fk�j kh 	�a �/�&E�O�� *a �/E�6FY )a k+ E�O�l��,FO�[OY��UO�jv  )a k+ E�O�l��,FO�Y hO�a ,a &kE�O�a ,a &E�O�a ,a &�&E�O�a ,a &�&E�O�a ,a &kE^ O�a ,a &�&E^ O�a  ,a &kE^ O�a !,a &kE^ Oja "a #a $a %a &va ] /E^ O �a ',a &E^ W X ( )a *E^ O �a +,a &E^ W X ( )a ,E^ Oa -�%j Oa .�%j Oa /�%j Oa 0�%j Oa 1] %j Oa 2] %j Oa 3] %j Oa 4] %j Oa 5] %j Oa 6] %j Oa 7] %j O)a 8k+ E^ O)�a 9a 0Q)a :k+ ;O)a <k+ ;Oa =a >a ?a @a Ava ] /E^ O)a B] %k+ ;Oa Ca Da Ea Fa Ga Ha Ia Ja Ka La Mva �/E^ O)a N] %k+ ;Oa Oa Pa Qa Ra Sa &va ] /E^ O)a T] %k+ ;O] a &  ֬a M  j)a Uk+ ;O*a Va Wa Xa ] a Yfa Za La [�a \�a ]] a ^] a _�a `] a aa Sa b] a c] a d�a ea A fE^ Y c)a gk+ ;O*a Va Wa Xa ] a Yfa Z] a \�a ]] a ^] a _�a `] a aa Sa b] a c] a d�a ha A fE^ Y ��a M  ^)a ik+ ;O*a Va Wa Xa ] a Yfa Za La [�a \�a ]] a ^] a _�a `] a a] a d�a ja A fE^ Y W)a kk+ ;O*a Va Wa Xa ] a Yfa Z] a \�a ]] a ^] a _�a `] a a] a d�a la A fE^ O)a mk+ ;O] a n�l oO�UOP �_��^�]*+�\�_ 0 logthis logThis�^ �[,�[ ,  �Z�Z 0 thisitem thisItem�]  * �Y�Y 0 thisitem thisItem+ �X
�X .ascrcmnt****      � ****�\ �j   �W��V�U-.�T�W 
0 opened  �V  �U  - �S�R�S 60 selectedcomputerlistnames selectedComputerListNames�R <0 currentselectedmenuitemindex currentSelectedMenuItemIndex. ��Q�P�O�N�M�L�K��J�I�H�G��F�E
�Q .ascrcmnt****      � ****�P 0 
parameters  �O 0 selectedComputerListNames  
�N 
list
�M .corecnte****       ****�L  0 populatetables populateTables�K $0 adddatatotable01 addDataToTable01�J 0 valueforkey_ valueForKey_
�I 
long�H �G 00 setenabledoftextinputs setEnabledOfTextInputs�F 	�E 0 setenabled_ setEnabled_�T ��j O)j+ �,�&E�O�j j  
)j+ Y 	)�kl+ O)j+ �k+ 	�&E�O��  *ek+ Y *fk+ O)j+ �k+ 	�&E�O��  b   *ek+ UY b   *fk+ UOa j  �D�C�B/0�A�D $0 updateparameters updateParameters�C  �B  / �@�?�>�=�<�;�:�@ 0 	tabledata 	tableData�? 60 selectedcomputerlistnames selectedComputerListNames�> 0 i  �= 0 
thisrecord 
thisRecord�< 0 rowselected rowSelected�; 0 
errortitle 
errorTitle�: 0 errormessage errorMessage0 #�9�84�7�6�5�4�3�2�1�0���/�����
�9 .ascrcmnt****      � ****�8 0 
parameters  �7 $0 setvalue_forkey_ setValue_forKey_�6 0 content  
�5 .corecnte****       ****
�4 
cobj�3 0 selectionIndicator  
�2 
bool�1 0 computerListName  
�0 
TEXT�/ &0 nslocalizedstring NSLocalizedString�A ��j O)j+ f�l+ Ob  �,E�OjvE�O 3k�j kh ��/E�O��,�&E�O�e  ��,�&�6FY h[OY��O�jv  >)j+ e�l+ O)�k+ E�O)�k+ E�O)j+ �a l+ O)j+ �a l+ Y hO)j+ �a l+ Oa j  �.��-�,12�+�.  0 populatetables populateTables�-  �,  1 �*�* &0 computerlistnames computerListNames2 �)�(�) 20 getardcomputerlistnames getARDcomputerListNames�( $0 adddatatotable01 addDataToTable01�+ )j+  E�O)�jl+  �'	�&�%34�$�' $0 adddatatotable01 addDataToTable01�& �#5�# 5  �"�!�" 0 	itemnames 	itemNames�! .0 defaultselectionvalue defaultSelectionValue�%  3 � ����  0 	itemnames 	itemNames� .0 defaultselectionvalue defaultSelectionValue� 0 i  � 0 thisname thisName4 ��������� 0 content  �  0 removeobjects_ removeObjects_
� .corecnte****       ****
� 
cobj� 0 selectionIndicator  � 0 computerListName  � � 0 addobjects_ addObjects_�$ Gb   *b  �,k+ UO /k�j kh ��/E�Ob   *���kvk+ U[OY�� �S��67�� 20 getardcomputerlistnames getARDcomputerListNames�  �  6 �� 0 
thesenames 
theseNames7 �_���
� 
capp
� kfrmID  
� 
clst
� 
pnam� )���0 	*�-�,E�UO�  �m�
�	89�� 0 updatetables_ updateTables_�
 �:� :  �� 
0 sender  �	  8 �� 
0 sender  9 ��  0 populatetables populateTables� )j+  ! �|��;<� � ,0 setcheckboxestotrue_ setCheckboxesToTrue_� ��=�� =  ���� 
0 sender  �  ; ������ 
0 sender  �� 0 
eachobject 
eachObject< ������������ 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 selectionIndicator  �  ! b  �,[��l kh e��,F[OY��" �������>?���� .0 setcheckboxestofalse_ setCheckboxesToFalse_�� ��@�� @  ���� 
0 sender  ��  > ������ 
0 sender  �� 0 
eachobject 
eachObject? ������������ 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 selectionIndicator  �� ! b  �,[��l kh f��,F[OY��# �������AB���� :0 setenabledstateoftextinput_ setEnabledStateOfTextInput_�� ��C�� C  ���� 
0 sender  ��  A ������ 
0 sender  �� 0 	thisindex 	thisIndexB �������� *0 indexofselecteditem indexOfSelectedItem�� 	�� 0 setenabled_ setEnabled_�� 0�j+  E�O��  b   *ek+ UY b   *fk+ U$ �������DE���� <0 setenabledstateoftextinputs_ setEnabledStateOfTextInputs_�� ��F�� F  ���� 
0 sender  ��  D ������ 
0 sender  �� 0 	thisindex 	thisIndexE �������� *0 indexofselecteditem indexOfSelectedItem�� �� 00 setenabledoftextinputs setEnabledOfTextInputs�� �j+  E�O��  *ek+ Y *fk+ % �������GH���� 00 setenabledoftextinputs setEnabledOfTextInputs�� ��I�� I  ���� 0 
statevalue 
stateValue��  G ���� 0 
statevalue 
stateValueH ���� 0 setenabled_ setEnabled_��  b   *�k+  UOb   *�k+  U& �������JK���� &0 nslocalizedstring NSLocalizedString�� ��L�� L  ��
�� 
kMsg��  J ��
�� 
kMsgK ���������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�� )j+  ���m+ �& ascr  ��ޭ