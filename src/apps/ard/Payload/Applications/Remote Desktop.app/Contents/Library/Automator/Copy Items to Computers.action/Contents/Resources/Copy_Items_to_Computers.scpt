FasdUAS 1.101.10   ��   ��    k             l     ��  ��    + %  Copy_Items_to_Computers.applescript     � 	 	 J     C o p y _ I t e m s _ t o _ C o m p u t e r s . a p p l e s c r i p t   
  
 l     ��  ��       Copy Items to Computers     �   2     C o p y   I t e m s   t o   C o m p u t e r s      l     ��������  ��  ��        l     ��  ��    + %  Created by Sal Soghoian on 6/23/12.     �   J     C r e a t e d   b y   S a l   S o g h o i a n   o n   6 / 2 3 / 1 2 .      l     ��  ��    = 7  Copyright � 2012-2013 Apple Inc. All rights reserved.     �   n     C o p y r i g h t   �   2 0 1 2 - 2 0 1 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� 20 copy_items_to_computers Copy_Items_to_Computers  k            ! " ! j     �� #
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
msng��  ��   w k   E� � �  � � � l  E E�� � ���   � - ' get a list of the selected table items    � � � � N   g e t   a   l i s t   o f   t h e   s e l e c t e d   t a b l e   i t e m s �  � � � r   E L � � � c   E J � � � l  E H ����� � n   E H � � � o   F H���� 0 selectedComputerNames   � o   E F���� ,0 parametersdictionary parametersDictionary��  ��   � m   H I��
�� 
list � l      ����� � o      ���� .0 selectedcomputernames selectedComputerNames��  ��   �  � � � l  M M�� � ���   � %  derive the computer references    � � � � >   d e r i v e   t h e   c o m p u t e r   r e f e r e n c e s �  � � � O   M � � � � k   W � � �  � � � r   W b � � � l  W ` ����� � n   W ` � � � 1   \ `��
�� 
pnam � 2   W \��
�� 
gstl��  ��   � l      ����� � o      ���� ,0 currentcomputernames currentComputerNames��  ��   �  � � � r   c g � � � J   c e����   � l      ����� � o      ���� (0 computerreferences computerReferences��  ��   �  ��� � Y   h � ��� � ��� � k   v � � �  � � � r   v � � � � c   v ~ � � � l  v | ����� � n   v | � � � 4   w |�� �
�� 
cobj � o   z {���� 0 i   � l  v w ����� � o   v w���� .0 selectedcomputernames selectedComputerNames��  ��  ��  ��   � m   | }��
�� 
TEXT � o      ���� 0 thisname thisName �  ��� � Z   � � � ��� � � E  � � � � � l  � � ����� � o   � ����� ,0 currentcomputernames currentComputerNames��  ��   � o   � ����� 0 thisname thisName � l  � � � � � � r   � � � � � l  � � ���� � e   � � � � 4   � ��~ �
�~ 
gstl � o   � ��}�} 0 thisname thisName��  �   � l      ��|�{ � n       � � �  ;   � � � l  � � ��z�y � o   � ��x�x (0 computerreferences computerReferences�z  �y  �|  �{   �   check existence    � � � �     c h e c k   e x i s t e n c e��   � k   � � � �  � � � r   � � � � � l  � � ��w�v � n  � � � � � I   � ��u ��t�u &0 nslocalizedstring NSLocalizedString �  ��s � m   � � � � � � � , M I S S I N G _ C O M P U T E R _ E R R O R�s  �t   �  f   � ��w  �v   � o      �r�r $0 thiserrormessage thisErrorMessage �  �  � r   � � K   � � �q�p�q 60 nsapplescripterrormessage NSAppleScriptErrorMessage o   � ��o�o $0 thiserrormessage thisErrorMessage�p   n       1   � ��n
�n 
pcnt o   � ��m�m 0 errorref errorRef  �l L   � � m   � ��k
�k 
msng�l  ��  �� 0 i   � m   k l�j�j  � l  l q	�i�h	 I  l q�g
�f
�g .corecnte****       ****
 l  l m�e�d o   l m�c�c .0 selectedcomputernames selectedComputerNames�e  �d  �f  �i  �h  ��  ��   � 5   M T�b�a
�b 
capp m   O P � . c o m . a p p l e . R e m o t e D e s k t o p
�a kfrmID   �  Z   � ��`�_ =  � � o   � ��^�^ (0 computerreferences computerReferences J   � ��]�]   k   � �  r   � � l  � ��\�[ n  � � I   � ��Z�Y�Z &0 nslocalizedstring NSLocalizedString �X m   � � �   0 N O _ S E L E C T E D _ F I E L D S _ E R R O R�X  �Y    f   � ��\  �[   o      �W�W $0 thiserrormessage thisErrorMessage !"! r   � �#$# K   � �%% �V&�U�V 60 nsapplescripterrormessage NSAppleScriptErrorMessage& o   � ��T�T $0 thiserrormessage thisErrorMessage�U  $ n      '(' 1   � ��S
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
�� .ascrcmnt****      � **** l ���� b   m   � 8 A U T O M A T O R - A C T I O N   o w n e r N a m e :   o  ���� 0 	ownername 	ownerName��  ��  ��    l ""��������  ��  ��    r  ". l "*���� n "*  I  #*��!���� &0 nslocalizedstring NSLocalizedString! "��" m  #&## �$$  A C T I O N _ T I T L E��  ��     f  "#��  ��   l     %����% o      ���� 0 taskname taskName��  ��   &'& l //��������  ��  ��  ' ()( O  /�*+* k  ;�,, -.- n ;C/0/ I  <C��1���� 0 logthis logThis1 2��2 m  <?33 �44 D A U T O M A T O R - A C T I O N   c o n s t r u c t i n g   t a s k��  ��  0  f  ;<. 565 l DD��������  ��  ��  6 787 r  D_9:9 n  D[;<; 4  T[��=
�� 
cobj= o  WZ���� $0 replacementindex replacementIndex< J  DT>> ?@? m  DG��
�� enm1ccr3@ ABA m  GJ��
�� enm1ccr4B CDC m  JM��
�� enm1rplcD E��E m  MP��
�� enm1ccr2��  : l     F����F o      ���� 00 replacementenumeration replacementEnumeration��  ��  8 GHG n `lIJI I  al��K���� 0 logthis logThisK L��L b  ahMNM m  adOO �PP R A U T O M A T O R - A C T I O N   r e p l a c e m e n t E n u m e r a t i o n :  N o  dg���� 00 replacementenumeration replacementEnumeration��  ��  J  f  `aH QRQ l mm��������  ��  ��  R STS r  m�UVU n  m�WXW 4  ����Y
�� 
cobjY o  ������ $0 destinationindex destinationIndexX J  m�ZZ [\[ m  mp��
�� enm2rltv\ ]^] m  ps��
�� enm2apps^ _`_ m  sv��
�� enm2cudf` aba m  vy��
�� enm2cusrb cdc m  y|��
�� enm2macsd efe m  |��
�� enm2sfntf ghg m  ���
�� enm2sprfh iji m  ����
�� enm2btrtj klk m  ��mm �nn  m e n u   s e p e r a t o rl o��o m  ����
�� enm2spcf��  V l     p����p o      ���� 00 destinationenumeration destinationEnumeration��  ��  T qrq n ��sts I  ���u�~� 0 logthis logThisu v�}v b  ��wxw m  ��yy �zz R A U T O M A T O R - A C T I O N   d e s t i n a t i o n E n u m e r a t i o n :  x o  ���|�| 00 destinationenumeration destinationEnumeration�}  �~  t  f  ��r {|{ l ���{�z�y�{  �z  �y  | }~} r  ��� n  ����� 4  ���x�
�x 
cobj� o  ���w�w  0 ownershipindex ownershipIndex� J  ���� ��� m  ���v
�v enm3coo3� ��� m  ���u
�u enm3coo2� ��� m  ���t
�t enm3coo1� ��� m  ���� ���  m e n u   s e p e r a t o r� ��s� m  ���r
�r enm3coo4�s  � l     ��q�p� o      �o�o  0 ownershipvalue ownershipValue�q  �p  ~ ��� n ����� I  ���n��m�n 0 logthis logThis� ��l� b  ����� m  ���� ��� B A U T O M A T O R - A C T I O N   o w n e r s h i p V a l u e :  � o  ���k�k  0 ownershipvalue ownershipValue�l  �m  �  f  ��� ��� l ���j�i�h�j  �i  �h  � ��� Z  �i���g�� = ����� l ����f�e� o  ���d�d  0 ownershipindex ownershipIndex�f  �e  � m  ���c�c � l ������ Z  �����b�� = ����� l ����a�`� o  ���_�_ $0 destinationindex destinationIndex�a  �`  � m  ���^�^ 
� l �I���� k  �I�� ��� n ����� I  ���]��\�] 0 logthis logThis� ��[� m  ���� ��� . A U T O M A T O R - A C T I O N   t a s k   A�[  �\  �  f  ��� ��Z� r  �I��� I �E�Y�X�
�Y .corecrel****      � null�X  � �W��
�W 
kocl� m  ���V
�V 
cpit� �U��T
�U 
prdt� K  �?�� �S��
�S 
pnam� o  ���R�R 0 taskname taskName� �Q��
�Q 
shot� m   �P
�P boovfals� �O��
�O 
iloc� m  �N
�N enm2spcf� �M��
�M 
cpth� o  
�L�L "0 destinationpath destinationPath� �K��
�K 
itms� o  �J�J 	0 input  � �I��
�I 
cres� o  �H�H 00 replacementenumeration replacementEnumeration� �G��
�G 
cagi� o  �F�F "0 bandwidthamount bandwidthAmount� �E��
�E 
shoO� o  �D�D 0 	openitems 	openItems� �C��
�C 
serr� o  "%�B�B 0 stoponerror stopOnError� �A��
�A 
ston� m  (+�@
�@ enm3coo4� �?��
�? 
cgrp� o  .1�>�> 0 	groupname 	groupName� �=��
�= 
cown� o  47�<�< 0 	ownername 	ownerName� �;��:
�; 
ncrp� o  :;�9�9 0 shouldencrypt shouldEncrypt�:  �T  � o      �8�8 0 thistask thisTask�Z  �   specific folder   � ���     s p e c i f i c   f o l d e r�b  � k  L��� ��� n LT��� I  MT�7��6�7 0 logthis logThis� ��5� m  MP�� ��� . A U T O M A T O R - A C T I O N   t a s k   B�5  �6  �  f  LM� ��4� r  U���� I U��3�2�
�3 .corecrel****      � null�2  � �1��
�1 
kocl� m  Y\�0
�0 
cpit� �/��.
�/ 
prdt� K  _��� �-��
�- 
pnam� o  be�,�, 0 taskname taskName� �+��
�+ 
shot� m  hi�*
�* boovfals� �)��
�) 
iloc� o  lo�(�( 00 destinationenumeration destinationEnumeration� �'��
�' 
itms� o  rs�&�& 	0 input  � �%��
�% 
cres� o  vy�$�$ 00 replacementenumeration replacementEnumeration� �#��
�# 
cagi� o  |�"�" "0 bandwidthamount bandwidthAmount� �!��
�! 
shoO� o  ��� �  0 	openitems 	openItems� ���
� 
serr� o  ���� 0 stoponerror stopOnError� ���
� 
ston� m  ���
� enm3coo4� �� 
� 
cgrp� o  ���� 0 	groupname 	groupName  �
� 
cown o  ���� 0 	ownername 	ownerName ��
� 
ncrp o  ���� 0 shouldencrypt shouldEncrypt�  �.  � o      �� 0 thistask thisTask�4  �   specific owner   � �    s p e c i f i c   o w n e r�g  � Z  �i� = ��	 l ��
��
 o  ���� $0 destinationindex destinationIndex�  �  	 m  ���� 
 l � k  �  n �� I  ����� 0 logthis logThis � m  �� � . A U T O M A T O R - A C T I O N   t a s k   C�  �    f  �� � r  � I ��
�	
�
 .corecrel****      � null�	   �
� 
kocl m  ���
� 
cpit ��
� 
prdt K  � � 
� 
pnam o  ���� 0 taskname taskName  �!"
� 
shot! m  ���
� boovfals" � #$
�  
iloc# m  ����
�� enm2spcf$ ��%&
�� 
cpth% o  ������ "0 destinationpath destinationPath& ��'(
�� 
itms' o  ������ 	0 input  ( ��)*
�� 
cres) o  ������ 00 replacementenumeration replacementEnumeration* ��+,
�� 
cagi+ o  ������ "0 bandwidthamount bandwidthAmount, ��-.
�� 
shoO- o  ������ 0 	openitems 	openItems. ��/0
�� 
serr/ o  ������ 0 stoponerror stopOnError0 ��12
�� 
ston1 o  ������  0 ownershipvalue ownershipValue2 ��3��
�� 
ncrp3 o  ���� 0 shouldencrypt shouldEncrypt��  �   o      ���� 0 thistask thisTask�     specific folder    �44     s p e c i f i c   f o l d e r�   k  i55 676 n 898 I  ��:���� 0 logthis logThis: ;��; m  << �== . A U T O M A T O R - A C T I O N   t a s k   D��  ��  9  f  7 >��> r  i?@? I e����A
�� .corecrel****      � null��  A ��BC
�� 
koclB m  !$��
�� 
cpitC ��D��
�� 
prdtD K  '_EE ��FG
�� 
pnamF o  *-���� 0 taskname taskNameG ��HI
�� 
shotH m  01��
�� boovfalsI ��JK
�� 
ilocJ o  47���� 00 destinationenumeration destinationEnumerationK ��LM
�� 
itmsL o  :;���� 	0 input  M ��NO
�� 
cresN o  >A���� 00 replacementenumeration replacementEnumerationO ��PQ
�� 
cagiP o  DG���� "0 bandwidthamount bandwidthAmountQ ��RS
�� 
shoOR o  JK���� 0 	openitems 	openItemsS ��TU
�� 
serrT o  NQ���� 0 stoponerror stopOnErrorU ��VW
�� 
stonV o  TW����  0 ownershipvalue ownershipValueW ��X��
�� 
ncrpX o  Z[���� 0 shouldencrypt shouldEncrypt��  ��  @ o      ���� 0 thistask thisTask��  � YZY l jj��������  ��  ��  Z [\[ n jr]^] I  kr��_���� 0 logthis logThis_ `��` m  knaa �bb > A U T O M A T O R - A C T I O N   e x e c u t i n g   t a s k��  ��  ^  f  jk\ cdc I s~��ef
�� .mcp extkreco       taske o  sv���� 0 thistask thisTaskf ��g��
�� 
on  g o  yz���� (0 computerreferences computerReferences��  d hih l ��������  ��  ��  i j��j L  �kk o  ����� (0 computerreferences computerReferences��  + 5  /8��l��
�� 
cappl m  14mm �nn . c o m . a p p l e . R e m o t e D e s k t o p
�� kfrmID  ) o��o l ����������  ��  ��  ��  ��   G pqp l     ��������  ��  ��  q rsr i    tut I      ��v���� 0 logthis logThisv w��w o      ���� 0 thisitem thisItem��  ��  u I    ��x��
�� .ascrcmnt****      � ****x o     ���� 0 thisitem thisItem��  s yzy l     ��������  ��  ��  z {|{ l      ��}~��  } = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW    ~ � n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W  | ��� i     ��� I      �������� 
0 opened  ��  ��  � k     ��� ��� I    �����
�� .ascrcmnt****      � ****� l    ������ m     �� ��� < A U T O M A T O R - A C T I O N   o p e n e d :   e n t e r��  ��  ��  � ��� l   ������  � . ( get a list of the stored computer names   � ��� P   g e t   a   l i s t   o f   t h e   s t o r e d   c o m p u t e r   n a m e s� ��� r    ��� c    ��� l   ������ n    ��� o    ���� 0 selectedComputerNames  � n   ��� I    �������� 0 
parameters  ��  ��  �  f    ��  ��  � m    ��
�� 
list� l     ������ o      ���� .0 selectedcomputernames selectedComputerNames��  ��  � ��� Z    +������ =   ��� l   ������ I   �����
�� .corecnte****       ****� l   ������ o    ���� .0 selectedcomputernames selectedComputerNames��  ��  ��  ��  ��  � m    ����  � l   !���� n   !��� I    !��������  0 populatetables populateTables��  ��  �  f    � > 8 if no items are stored, then populate with current data   � ��� p   i f   n o   i t e m s   a r e   s t o r e d ,   t h e n   p o p u l a t e   w i t h   c u r r e n t   d a t a��  � l  $ +���� n  $ +��� I   % +������� $0 adddatatotable01 addDataToTable01� ��� o   % &���� .0 selectedcomputernames selectedComputerNames� ���� m   & '���� ��  ��  �  f   $ %� ' ! populate table using stored data   � ��� B   p o p u l a t e   t a b l e   u s i n g   s t o r e d   d a t a� ��� l  , ,������  � @ : Set the enabled status of the group and owner text fields   � ��� t   S e t   t h e   e n a b l e d   s t a t u s   o f   t h e   g r o u p   a n d   o w n e r   t e x t   f i e l d s� ��� r   , :��� c   , 8��� l  , 6������ n  , 6��� n  - 6��� I   1 6������� 0 valueforkey_ valueForKey_� ���� m   1 2�� ���  o w n e r s h i p I n d e x��  ��  � I   - 1��~�}� 0 
parameters  �~  �}  �  f   , -��  ��  � m   6 7�|
�| 
long� l     ��{�z� o      �y�y <0 currentselectedmenuitemindex currentSelectedMenuItemIndex�{  �z  � ��� Z   ; P���x�� =  ; >��� o   ; <�w�w <0 currentselectedmenuitemindex currentSelectedMenuItemIndex� m   < =�v�v � l  A G���� I   A G�u��t�u 00 setenabledoftextinputs setEnabledOfTextInputs� ��s� m   B C�r
�r boovtrue�s  �t  � !  the �Other...� menu option   � ��� 6   t h e    O t h e r . . .    m e n u   o p t i o n�x  � I   J P�q��p�q 00 setenabledoftextinputs setEnabledOfTextInputs� ��o� m   K L�n
�n boovfals�o  �p  � ��� l  Q Q�m���m  � ? 9 Set the enabled state of the destination path text field   � ��� r   S e t   t h e   e n a b l e d   s t a t e   o f   t h e   d e s t i n a t i o n   p a t h   t e x t   f i e l d� ��� r   Q _��� c   Q ]��� l  Q [��l�k� n  Q [��� n  R [��� I   V [�j��i�j 0 valueforkey_ valueForKey_� ��h� m   V W�� ���   d e s t i n a t i o n I n d e x�h  �i  � I   R V�g�f�e�g 0 
parameters  �f  �e  �  f   Q R�l  �k  � m   [ \�d
�d 
long� l     ��c�b� o      �a�a <0 currentselectedmenuitemindex currentSelectedMenuItemIndex�c  �b  � ��� Z   ` ����`�� =  ` c��� o   ` a�_�_ <0 currentselectedmenuitemindex currentSelectedMenuItemIndex� m   a b�^�^ 	� l  f u���� O  f u��� I   n t�]��\�] 0 setenabled_ setEnabled_� ��[� m   o p�Z
�Z boovtrue�[  �\  � o   f k�Y�Y 60 destinationpathinputfield destinationPathInputField� !  the �Other...� menu option   � ��� 6   t h e    O t h e r . . .    m e n u   o p t i o n�`  � O  x ���� I   � ��X �W�X 0 setenabled_ setEnabled_  �V m   � ��U
�U boovfals�V  �W  � o   x }�T�T 60 destinationpathinputfield destinationPathInputField� �S I  � ��R�Q
�R .ascrcmnt****      � **** l  � ��P�O m   � � � : A U T O M A T O R - A C T I O N   o p e n e d :   e x i t�P  �O  �Q  �S  �  l     �N�M�L�N  �M  �L   	
	 l      �K�K   \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN     � �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  
  i   ! $ I      �J�I�H�J $0 updateparameters updateParameters�I  �H   k     �  I    �G�F
�G .ascrcmnt****      � **** l    �E�D m      � P A U T O M A T O R - A C T I O N   u p d a t e P a r a m e t e r s :   e n t e r�E  �D  �F    l   �C�C   %  reset error indicator property    � >   r e s e t   e r r o r   i n d i c a t o r   p r o p e r t y  n    !  n   "#" I    �B$�A�B $0 setvalue_forkey_ setValue_forKey_$ %&% m    �@
�@ boovfals& '�?' m    (( �))  e r r o r O c c u r e d�?  �A  # I    �>�=�<�> 0 
parameters  �=  �<  !  f     *+* l   �;�:�9�;  �:  �9  + ,-, l   �8./�8  . R L TABLE 01: get the contents of table, which is returned as a list of records   / �00 �   T A B L E   0 1 :   g e t   t h e   c o n t e n t s   o f   t a b l e ,   w h i c h   i s   r e t u r n e d   a s   a   l i s t   o f   r e c o r d s- 121 l   3453 r    676 n   898 o    �7�7 0 content  9 o    �6�6 &0 tablecontroller01 tableController017 o      �5�5 0 	tabledata 	tableData4   list of records   5 �::     l i s t   o f   r e c o r d s2 ;<; r     =>= J    �4�4  > l     ?�3�2? o      �1�1 .0 selectedcomputernames selectedComputerNames�3  �2  < @A@ Y   ! UB�0CD�/B k   / PEE FGF l  / 5HIJH r   / 5KLK n   / 3MNM 4   0 3�.O
�. 
cobjO o   1 2�-�- 0 i  N l  / 0P�,�+P o   / 0�*�* 0 	tabledata 	tableData�,  �+  L o      �)�) 0 
thisrecord 
thisRecordI   a single record   J �QQ     a   s i n g l e   r e c o r dG RSR r   6 =TUT c   6 ;VWV l  6 9X�(�'X n   6 9YZY o   7 9�&�& 0 selectionIndicator  Z o   6 7�%�% 0 
thisrecord 
thisRecord�(  �'  W m   9 :�$
�$ 
boolU o      �#�# 0 rowselected rowSelectedS [�"[ Z   > P\]�!� \ =  > A^_^ o   > ?�� 0 rowselected rowSelected_ m   ? @�
� boovtrue] r   D L`a` c   D Ibcb l  D Gd��d n   D Gefe o   E G�� 0 computerName  f o   D E�� 0 
thisrecord 
thisRecord�  �  c m   G H�
� 
TEXTa l     g��g n      hih  ;   J Ki l  I Jj��j o   I J�� .0 selectedcomputernames selectedComputerNames�  �  �  �  �!  �   �"  �0 0 i  C m   $ %�� D l  % *k��k I  % *�l�
� .corecnte****       ****l o   % &�� 0 	tabledata 	tableData�  �  �  �/  A mnm l  V V�op�  o    log selectedComputerNames   p �qq 4   l o g   s e l e c t e d C o m p u t e r N a m e sn rsr Z   V �tu��t =  V Zvwv o   V W�
�
 .0 selectedcomputernames selectedComputerNamesw J   W Y�	�	  u k   ] �xx yzy l  ] ]�{|�  { B < throw the error to the run handler by passing as parameters   | �}} x   t h r o w   t h e   e r r o r   t o   t h e   r u n   h a n d l e r   b y   p a s s i n g   a s   p a r a m e t e r sz ~~ n  ] h��� n  ^ h��� I   b h���� $0 setvalue_forkey_ setValue_forKey_� ��� m   b c�
� boovtrue� ��� m   c d�� ���  e r r o r O c c u r e d�  �  � I   ^ b���� 0 
parameters  �  �  �  f   ] ^ ��� r   i q��� l  i o�� ��� n  i o��� I   j o������� &0 nslocalizedstring NSLocalizedString� ���� m   j k�� ��� * S E L E C T I O N _ E R R O R _ T I T L E��  ��  �  f   i j�   ��  � l     ������ o      ���� 0 
errortitle 
errorTitle��  ��  � ��� r   r z��� l  r x������ n  r x��� I   s x������� &0 nslocalizedstring NSLocalizedString� ���� m   s t�� ��� . S E L E C T I O N _ E R R O R _ M E S S A G E��  ��  �  f   r s��  ��  � l     ������ o      ���� 0 errormessage errorMessage��  ��  � ��� n  { ���� n  | ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 0 
errortitle 
errorTitle� ���� m   � ��� ���  e r r o r T i t l e��  ��  � I   | ��������� 0 
parameters  ��  ��  �  f   { |� ���� n  � ���� n  � ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 0 errormessage errorMessage� ���� m   � ��� ���  e r r o r M e s s a g e��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � ���  �  �  s ��� l  � �������  � 2 , write the values into the parameters record   � ��� X   w r i t e   t h e   v a l u e s   i n t o   t h e   p a r a m e t e r s   r e c o r d� ��� n  � ���� n  � ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� .0 selectedcomputernames selectedComputerNames� ���� m   � ��� ��� * s e l e c t e d C o m p u t e r N a m e s��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � �� ���� I  � ������
�� .ascrcmnt****      � ****� l  � ������� m   � ��� ��� N A U T O M A T O R - A C T I O N   u p d a t e P a r a m e t e r s :   e x i t��  ��  ��  ��   ��� l     ��������  ��  ��  � ��� l      ������  � ( " SUB-ROUTINE POPULATES THE TABLES    � ��� D   S U B - R O U T I N E   P O P U L A T E S   T H E   T A B L E S  � ��� i   % (��� I      ��������  0 populatetables populateTables��  ��  � k     �� ��� l     ������  � ( " GET NAMES OF ARD REMOTE COMPUTERS   � ��� D   G E T   N A M E S   O F   A R D   R E M O T E   C O M P U T E R S� ��� r     ��� n    ��� I    �������� *0 getardcomputernames getARDComputerNames��  ��  �  f     � l     ������ o      ���� 0 computernames computerNames��  ��  � ��� l   ������  �   POPULATE THE TABLE   � ��� &   P O P U L A T E   T H E   T A B L E� ���� n   ��� I   	 ������� $0 adddatatotable01 addDataToTable01� ��� o   	 
���� 0 computernames computerNames� ���� m   
 ����  ��  ��  �  f    	��  � ��� l     ��������  ��  ��  � ��� l      ������  � ; 5 EACH TABLE GETS ITS OWN CONTROLLER AND SUB-ROUTINES    � ��� j   E A C H   T A B L E   G E T S   I T S   O W N   C O N T R O L L E R   A N D   S U B - R O U T I N E S  � ��� i   ) ,��� I      ������� $0 adddatatotable01 addDataToTable01� � � o      ���� 0 	itemnames 	itemNames  �� o      ���� .0 defaultselectionvalue defaultSelectionValue��  ��  � l    F k     F  l     ��	��   !  remove existing list items   	 �

 6   r e m o v e   e x i s t i n g   l i s t   i t e m s  O     I    ������  0 removeobjects_ removeObjects_ �� n  	  o    ���� 0 content   o   	 ���� &0 tablecontroller01 tableController01��  ��   o     ���� &0 tablecontroller01 tableController01  l   ����   &   add new items to the empty list    � @   a d d   n e w   i t e m s   t o   t h e   e m p t y   l i s t �� Y    F���� k   $ A  r   $ *  n   $ (!"! 4   % (��#
�� 
cobj# o   & '���� 0 i  " l  $ %$����$ o   $ %���� 0 	itemnames 	itemNames��  ��    o      ���� 0 thisname thisName %&% l  + +��'(��  ' p j NOTE: two sets of brackets are used: the outermost indicates a list, and the innermost indicates a record   ( �)) �   N O T E :   t w o   s e t s   o f   b r a c k e t s   a r e   u s e d :   t h e   o u t e r m o s t   i n d i c a t e s   a   l i s t ,   a n d   t h e   i n n e r m o s t   i n d i c a t e s   a   r e c o r d& *+* l  + +��,-��  , � � NOTE: |selectionIndicator| is the key added to the array controller for controlling the checkbox column. |computerName| is the key added to the array controller for controlling the computer names column.   - �..�   N O T E :   | s e l e c t i o n I n d i c a t o r |   i s   t h e   k e y   a d d e d   t o   t h e   a r r a y   c o n t r o l l e r   f o r   c o n t r o l l i n g   t h e   c h e c k b o x   c o l u m n .   | c o m p u t e r N a m e |   i s   t h e   k e y   a d d e d   t o   t h e   a r r a y   c o n t r o l l e r   f o r   c o n t r o l l i n g   t h e   c o m p u t e r   n a m e s   c o l u m n .+ /��/ O  + A010 I   3 @��2���� 0 addobjects_ addObjects_2 3��3 J   4 <44 5��5 K   4 :66 ��78�� 0 selectionIndicator  7 o   5 6���� .0 defaultselectionvalue defaultSelectionValue8 ��9���� 0 computerName  9 o   7 8���� 0 thisname thisName��  ��  ��  ��  1 o   + 0���� &0 tablecontroller01 tableController01��  �� 0 i   m    ����  l   :����: I   ��;��
�� .corecnte****       ****; o    ���� 0 	itemnames 	itemNames��  ��  ��  ��  ��     POPULATE THE TABLE    �<< &   P O P U L A T E   T H E   T A B L E� =>= l     ��������  ��  ��  > ?@? l      ��AB��  A 7 1 ROUTINES FOR GETTING DATA FROM THE APPLICATIONS    B �CC b   R O U T I N E S   F O R   G E T T I N G   D A T A   F R O M   T H E   A P P L I C A T I O N S  @ DED i   - 0FGF I      �������� *0 getardcomputernames getARDComputerNames��  ��  G k     HH IJI O     KLK r    MNM l   O����O n    PQP 1    ��
�� 
pnamQ 2    ��
�� 
gstl��  ��  N o      ���� 0 
thesenames 
theseNamesL 5     ��R��
�� 
cappR m    SS �TT . c o m . a p p l e . R e m o t e D e s k t o p
�� kfrmID  J U��U L    VV o    ���� 0 
thesenames 
theseNames��  E WXW l     ��������  ��  ��  X YZY l      �[\�  [ %  METHOD UPDATES TABLE CONTENTS    \ �]] >   M E T H O D   U P D A T E S   T A B L E   C O N T E N T S  Z ^_^ i   1 4`a` I      �~b�}�~ 0 updatetables_ updateTables_b c�|c o      �{�{ 
0 sender  �|  �}  a n    ded I    �z�y�x�z  0 populatetables populateTables�y  �x  e  f     _ fgf l     �w�v�u�w  �v  �u  g hih l      �tjk�t  j , & METHODS FOR SETTING TABLE CHECKBOXES    k �ll L   M E T H O D S   F O R   S E T T I N G   T A B L E   C H E C K B O X E S  i mnm i   5 8opo I      �sq�r�s ,0 setcheckboxestotrue_ setCheckboxesToTrue_q r�qr o      �p�p 
0 sender  �q  �r  p X      s�ots r    uvu m    �n
�n boovtruev n      wxw o    �m�m 0 selectionIndicator  x o    �l�l 0 
eachobject 
eachObject�o 0 
eachobject 
eachObjectt l   
y�k�jy n   
z{z o    
�i�i 0 content  { o    �h�h &0 tablecontroller01 tableController01�k  �j  n |}| l     �g�f�e�g  �f  �e  } ~~ i   9 <��� I      �d��c�d .0 setcheckboxestofalse_ setCheckboxesToFalse_� ��b� o      �a�a 
0 sender  �b  �c  � X      ��`�� r    ��� m    �_
�_ boovfals� n      ��� o    �^�^ 0 selectionIndicator  � o    �]�] 0 
eachobject 
eachObject�` 0 
eachobject 
eachObject� l   
��\�[� n   
��� o    
�Z�Z 0 content  � o    �Y�Y &0 tablecontroller01 tableController01�\  �[   ��� l     �X�W�V�X  �W  �V  � ��� l      �U���U  � H B METHOD FOR SETTING ENABLED STATE OF DESTINATION PATH INPUT FIELD    � ��� �   M E T H O D   F O R   S E T T I N G   E N A B L E D   S T A T E   O F   D E S T I N A T I O N   P A T H   I N P U T   F I E L D  � ��� i   = @��� I      �T��S�T :0 setenabledstateoftextinput_ setEnabledStateOfTextInput_� ��R� o      �Q�Q 
0 sender  �R  �S  � k     /�� ��� r     ��� n    ��� I    �P�O�N�P *0 indexofselecteditem indexOfSelectedItem�O  �N  � o     �M�M 
0 sender  � o      �L�L 0 	thisindex 	thisIndex� ��K� Z    /���J�� =   ��� o    	�I�I 0 	thisindex 	thisIndex� m   	 
�H�H 	� l   ���� O   ��� I    �G��F�G 0 setenabled_ setEnabled_� ��E� m    �D
�D boovtrue�E  �F  � o    �C�C 60 destinationpathinputfield destinationPathInputField� !  the �Other...� menu option   � ��� 6   t h e    O t h e r . . .    m e n u   o p t i o n�J  � O    /��� I   ( .�B��A�B 0 setenabled_ setEnabled_� ��@� m   ) *�?
�? boovfals�@  �A  � o     %�>�> 60 destinationpathinputfield destinationPathInputField�K  � ��� l     �=�<�;�=  �<  �;  � ��� l      �:���:  � 8 2 METHOD FOR SETTING ENABLED STATE OF INPUT FIELDS    � ��� d   M E T H O D   F O R   S E T T I N G   E N A B L E D   S T A T E   O F   I N P U T   F I E L D S  � ��� i   A D��� I      �9��8�9 <0 setenabledstateoftextinputs_ setEnabledStateOfTextInputs_� ��7� o      �6�6 
0 sender  �7  �8  � k     �� ��� r     ��� n    ��� I    �5�4�3�5 *0 indexofselecteditem indexOfSelectedItem�4  �3  � o     �2�2 
0 sender  � o      �1�1 0 	thisindex 	thisIndex� ��0� Z    ���/�� =   ��� o    	�.�. 0 	thisindex 	thisIndex� m   	 
�-�- � l   ���� I    �,��+�, 00 setenabledoftextinputs setEnabledOfTextInputs� ��*� m    �)
�) boovtrue�*  �+  � !  the �Other...� menu option   � ��� 6   t h e    O t h e r . . .    m e n u   o p t i o n�/  � I    �(��'�( 00 setenabledoftextinputs setEnabledOfTextInputs� ��&� m    �%
�% boovfals�&  �'  �0  � ��� l     �$�#�"�$  �#  �"  � ��� i   E H��� I      �!�� �! 00 setenabledoftextinputs setEnabledOfTextInputs� ��� o      �� 0 
statevalue 
stateValue�  �   � k     �� ��� O    ��� I    ���� 0 setenabled_ setEnabled_� ��� o   	 
�� 0 
statevalue 
stateValue�  �  � o     �� "0 ownerinputfield ownerInputField� ��� O   ��� I    ���� 0 setenabled_ setEnabled_� ��� o    �� 0 
statevalue 
stateValue�  �  � o    �� "0 groupinputfield groupInputField�  � ��� l     ����  �  �  � ��� l     ����  �   LOCALIZATION ROUTINE   � ��� *   L O C A L I Z A T I O N   R O U T I N E� ��� i   I L��� I      ���� &0 nslocalizedstring NSLocalizedString� ��� 1      �

�
 
kMsg�  �  � L     �� c     ��� n    ��� n   ��� I    �	���	 H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_� ��� 1    �
� 
kMsg� � � m    �
� 
msng  � m    �
� 
msng�  �  � I    ���� 
0 bundle  �  �  �  f     � m    � 
�  
utxt�    �� l     ��������  ��  ��  ��       ����   ���� 20 copy_items_to_computers Copy_Items_to_Computers �� �� 20 copy_items_to_computers Copy_Items_to_Computers  ����
�� misccura
�� 
pcls �		  A M B u n d l e A c t i o n ��
������������  
 ��������������������������������������
�� 
pare�� &0 tablecontroller01 tableController01�� "0 ownerinputfield ownerInputField�� "0 groupinputfield groupInputField�� 60 destinationpathinputfield destinationPathInputField�� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� 0 logthis logThis�� 
0 opened  �� $0 updateparameters updateParameters��  0 populatetables populateTables�� $0 adddatatotable01 addDataToTable01�� *0 getardcomputernames getARDComputerNames�� 0 updatetables_ updateTables_�� ,0 setcheckboxestotrue_ setCheckboxesToTrue_�� .0 setcheckboxestofalse_ setCheckboxesToFalse_�� :0 setenabledstateoftextinput_ setEnabledStateOfTextInput_�� <0 setenabledstateoftextinputs_ setEnabledStateOfTextInputs_�� 00 setenabledoftextinputs setEnabledOfTextInputs�� &0 nslocalizedstring NSLocalizedString��  
�� 
msng
�� 
msng
�� 
msng
�� 
msng �� I�������� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�� ����   �������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef��   ���������������������������������������������������������� 	0 input  �� 0 anaction anAction�� 0 errorref errorRef�� ,0 parametersdictionary parametersDictionary�� 0 
errortitle 
errorTitle�� 0 errormessage errorMessage�� .0 selectedcomputernames selectedComputerNames�� ,0 currentcomputernames currentComputerNames�� (0 computerreferences computerReferences�� 0 i  �� 0 thisname thisName�� $0 thiserrormessage thisErrorMessage�� $0 destinationindex destinationIndex�� "0 destinationpath destinationPath�� 0 	openitems 	openItems�� 0 shouldencrypt shouldEncrypt�� $0 replacementindex replacementIndex�� 0 stoponerror stopOnError��  0 bandwidthindex bandwidthIndex��  0 ownershipindex ownershipIndex�� "0 bandwidthamount bandwidthAmount�� 0 	groupname 	groupName�� 0 	ownername 	ownerName�� 0 taskname taskName�� 00 replacementenumeration replacementEnumeration�� 00 destinationenumeration destinationEnumeration��  0 ownershipvalue ownershipValue�� 0 thistask thisTask o U������ ����� ��� ��������������������� ���������������������������������������������������#m3������������O����������������m����y�����������������~�}�|�{�z�y�x�w�v�u�t�s�r�q��p�o<�na�m�l
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
msng�� 0 selectedComputerNames  
�� 
capp
�� kfrmID  
�� 
gstl
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
�� enm2macs
�� enm2sfnt
�� enm2sprf
�� enm2btrt
�� enm2spcf�� 

�� enm3coo3
�� enm3coo2
�� enm3coo1
�� enm3coo4
�� 
kocl
�� 
cpit
� 
prdt
�~ 
shot
�} 
iloc
�| 
cpth
�{ 
itms
�z 
cres
�y 
cagi
�x 
shoO
�w 
serr
�v 
ston
�u 
cgrp
�t 
cown
�s 
ncrp�r 
�q .corecrel****      � null�p �o �n 
�m 
on  
�l .mcp extkreco       task����j O��&E�O)j+ E�O��k+ �&e  &��k+ �&E�O��k+ �&E�O�l��,FO�YA��,�&E�O)��a 0 Z*a -a ,E�OjvE�O Fk�j kh 	�a �/�&E�O�� *a �/E�6FY )a k+ E�O�l��,FO�[OY��UO�jv  )a k+ E�O�l��,FO�Y hO�a ,a &kE�O�a ,a &E�O�a ,a &�&E�O�a ,a &�&E�O�a ,a &kE^ O�a ,a &�&E^ O�a  ,a &kE^ O�a !,a &kE^ Oja "a #a $a %a &va ] /E^ O �a ',a &E^ W X ( )a *E^ O �a +,a &E^ W X ( )a ,E^ Oa -�%j Oa .�%j Oa /�%j Oa 0�%j Oa 1] %j Oa 2] %j Oa 3] %j Oa 4] %j Oa 5] %j Oa 6] %j Oa 7] %j O)a 8k+ E^ O)�a 9a 0H)a :k+ ;Oa <a =a >a ?a @va ] /E^ O)a A] %k+ ;Oa Ba Ca Da Ea Fa Ga Ha Ia Ja Ka Lva �/E^ O)a M] %k+ ;Oa Na Oa Pa Qa Ra &va ] /E^ O)a S] %k+ ;O] a &  ֬a L  j)a Tk+ ;O*a Ua Va Wa ] a Xfa Ya Ka Z�a [�a \] a ]] a ^�a _] a `a Ra a] a b] a c�a da @ eE^ Y c)a fk+ ;O*a Ua Va Wa ] a Xfa Y] a [�a \] a ]] a ^�a _] a `a Ra a] a b] a c�a ga @ eE^ Y ��a L  ^)a hk+ ;O*a Ua Va Wa ] a Xfa Ya Ka Z�a [�a \] a ]] a ^�a _] a `] a c�a ia @ eE^ Y W)a jk+ ;O*a Ua Va Wa ] a Xfa Y] a [�a \] a ]] a ^�a _] a `] a c�a ka @ eE^ O)a lk+ ;O] a m�l nO�UOP �ku�j�i�h�k 0 logthis logThis�j �g�g   �f�f 0 thisitem thisItem�i   �e�e 0 thisitem thisItem �d
�d .ascrcmnt****      � ****�h �j   �c��b�a �`�c 
0 opened  �b  �a   �_�^�_ .0 selectedcomputernames selectedComputerNames�^ <0 currentselectedmenuitemindex currentSelectedMenuItemIndex  ��]�\�[�Z�Y�X�W��V�U�T�S��R�Q
�] .ascrcmnt****      � ****�\ 0 
parameters  �[ 0 selectedComputerNames  
�Z 
list
�Y .corecnte****       ****�X  0 populatetables populateTables�W $0 adddatatotable01 addDataToTable01�V 0 valueforkey_ valueForKey_
�U 
long�T �S 00 setenabledoftextinputs setEnabledOfTextInputs�R 	�Q 0 setenabled_ setEnabled_�` ��j O)j+ �,�&E�O�j j  
)j+ Y 	)�kl+ O)j+ �k+ 	�&E�O��  *ek+ Y *fk+ O)j+ �k+ 	�&E�O��  b   *ek+ UY b   *fk+ UOa j  �P�O�N!"�M�P $0 updateparameters updateParameters�O  �N  ! �L�K�J�I�H�G�F�L 0 	tabledata 	tableData�K .0 selectedcomputernames selectedComputerNames�J 0 i  �I 0 
thisrecord 
thisRecord�H 0 rowselected rowSelected�G 0 
errortitle 
errorTitle�F 0 errormessage errorMessage" �E�D(�C�B�A�@�?�>�=�<���;�����
�E .ascrcmnt****      � ****�D 0 
parameters  �C $0 setvalue_forkey_ setValue_forKey_�B 0 content  
�A .corecnte****       ****
�@ 
cobj�? 0 selectionIndicator  
�> 
bool�= 0 computerName  
�< 
TEXT�; &0 nslocalizedstring NSLocalizedString�M ��j O)j+ f�l+ Ob  �,E�OjvE�O 3k�j kh ��/E�O��,�&E�O�e  ��,�&�6FY h[OY��O�jv  >)j+ e�l+ O)�k+ E�O)�k+ E�O)j+ �a l+ O)j+ �a l+ Y hO)j+ �a l+ Oa j  �:��9�8#$�7�:  0 populatetables populateTables�9  �8  # �6�6 0 computernames computerNames$ �5�4�5 *0 getardcomputernames getARDComputerNames�4 $0 adddatatotable01 addDataToTable01�7 )j+  E�O)�jl+  �3��2�1%&�0�3 $0 adddatatotable01 addDataToTable01�2 �/'�/ '  �.�-�. 0 	itemnames 	itemNames�- .0 defaultselectionvalue defaultSelectionValue�1  % �,�+�*�)�, 0 	itemnames 	itemNames�+ .0 defaultselectionvalue defaultSelectionValue�* 0 i  �) 0 thisname thisName& �(�'�&�%�$�#�"�!�( 0 content  �'  0 removeobjects_ removeObjects_
�& .corecnte****       ****
�% 
cobj�$ 0 selectionIndicator  �# 0 computerName  �" �! 0 addobjects_ addObjects_�0 Gb   *b  �,k+ UO /k�j kh ��/E�Ob   *���kvk+ U[OY�� � G��()��  *0 getardcomputernames getARDComputerNames�  �  ( �� 0 
thesenames 
theseNames) �S���
� 
capp
� kfrmID  
� 
gstl
� 
pnam� )���0 	*�-�,E�UO� �a��*+�� 0 updatetables_ updateTables_� �,� ,  �� 
0 sender  �  * �� 
0 sender  + ��  0 populatetables populateTables� )j+   �p��-.�� ,0 setcheckboxestotrue_ setCheckboxesToTrue_� �/� /  �
�
 
0 sender  �  - �	��	 
0 sender  � 0 
eachobject 
eachObject. ������ 0 content  
� 
kocl
� 
cobj
� .corecnte****       ****� 0 selectionIndicator  � ! b  �,[��l kh e��,F[OY�� ���� 01��� .0 setcheckboxestofalse_ setCheckboxesToFalse_� ��2�� 2  ���� 
0 sender  �   0 ������ 
0 sender  �� 0 
eachobject 
eachObject1 ������������ 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 selectionIndicator  �� ! b  �,[��l kh f��,F[OY�� �������34���� :0 setenabledstateoftextinput_ setEnabledStateOfTextInput_�� ��5�� 5  ���� 
0 sender  ��  3 ������ 
0 sender  �� 0 	thisindex 	thisIndex4 �������� *0 indexofselecteditem indexOfSelectedItem�� 	�� 0 setenabled_ setEnabled_�� 0�j+  E�O��  b   *ek+ UY b   *fk+ U �������67���� <0 setenabledstateoftextinputs_ setEnabledStateOfTextInputs_�� ��8�� 8  ���� 
0 sender  ��  6 ������ 
0 sender  �� 0 	thisindex 	thisIndex7 �������� *0 indexofselecteditem indexOfSelectedItem�� �� 00 setenabledoftextinputs setEnabledOfTextInputs�� �j+  E�O��  *ek+ Y *fk+  �������9:���� 00 setenabledoftextinputs setEnabledOfTextInputs�� ��;�� ;  ���� 0 
statevalue 
stateValue��  9 ���� 0 
statevalue 
stateValue: ���� 0 setenabled_ setEnabled_��  b   *�k+  UOb   *�k+  U �������<=���� &0 nslocalizedstring NSLocalizedString�� ��>�� >  ��
�� 
kMsg��  < ��
�� 
kMsg= ���������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�� )j+  ���m+ �& ascr  ��ޭ