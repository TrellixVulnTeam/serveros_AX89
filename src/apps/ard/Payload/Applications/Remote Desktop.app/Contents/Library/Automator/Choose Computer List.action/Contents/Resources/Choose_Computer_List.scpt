FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "  Choose_Computer_List.applescript     � 	 	 D     C h o o s e _ C o m p u t e r _ L i s t . a p p l e s c r i p t   
  
 l     ��  ��       Choose Computer List     �   ,     C h o o s e   C o m p u t e r   L i s t      l     ��������  ��  ��        l     ��  ��    F @  Created by Sal Soghoian on 6/10/12. sal@apple.com, sal@mac.com     �   �     C r e a t e d   b y   S a l   S o g h o i a n   o n   6 / 1 0 / 1 2 .   s a l @ a p p l e . c o m ,   s a l @ m a c . c o m      l     ��  ��    = 7  Copyright � 2012-2013 Apple Inc. All rights reserved.     �   n     C o p y r i g h t   �   2 0 1 2 - 2 0 1 3   A p p l e   I n c .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        h     �� �� ,0 choose_computer_list Choose_Computer_List  k            ! " ! j     �� #
�� 
pare # 4     �� $
�� 
pcls $ m     % % � & &  A M B u n d l e A c t i o n "  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + : 4 PROPERTIES USED AS REFERENCES TO INTERFACE OBJECTS     , � - - h   P R O P E R T I E S   U S E D   A S   R E F E R E N C E S   T O   I N T E R F A C E   O B J E C T S   *  . / . l     �� 0 1��   0 E ? PROPERTIES LINKED TO TABLE CONTROLLER OBJECTS IN THE INTERFACE    1 � 2 2 ~   P R O P E R T I E S   L I N K E D   T O   T A B L E   C O N T R O L L E R   O B J E C T S   I N   T H E   I N T E R F A C E /  3 4 3 j   	 �� 5�� &0 tablecontroller01 tableController01 5 m   	 
��
�� 
msng 4  6 7 6 l     ��������  ��  ��   7  8 9 8 l      �� : ;��   : 5 / THE HANDLER EXECUTED WHEN THE WORKFLOW IS RUN     ; � < < ^   T H E   H A N D L E R   E X E C U T E D   W H E N   T H E   W O R K F L O W   I S   R U N   9  = > = i     ? @ ? I      �� A���� @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_ A  B C B o      ���� 	0 input   C  D E D o      ���� 0 anaction anAction E  F�� F o      ���� 0 errorref errorRef��  ��   @ k     � G G  H I H l     �� J K��   J 7 1 STORE THE ACTION PARAMETERS RECORD IN A VARIABLE    K � L L b   S T O R E   T H E   A C T I O N   P A R A M E T E R S   R E C O R D   I N   A   V A R I A B L E I  M N M r      O P O n     Q R Q I    �������� 0 
parameters  ��  ��   R  f      P l      S���� S o      ���� ,0 parametersdictionary parametersDictionary��  ��   N  T U T l   �� V W��   V ' ! GET THE VALUE FOR EACH PARAMETER    W � X X B   G E T   T H E   V A L U E   F O R   E A C H   P A R A M E T E R U  Y�� Y Z    � Z [�� \ Z =    ] ^ ] l    _���� _ c     ` a ` n    b c b I   	 �� d���� 0 valueforkey_ valueForKey_ d  e�� e m   	 
 f f � g g  e r r o r O c c u r e d��  ��   c o    	���� ,0 parametersdictionary parametersDictionary a m    ��
�� 
bool��  ��   ^ m    ��
�� boovtrue [ k    6 h h  i j i r     k l k l    m���� m c     n o n n    p q p I    �� r���� 0 valueforkey_ valueForKey_ r  s�� s m     t t � u u  e r r o r T i t l e��  ��   q o    ���� ,0 parametersdictionary parametersDictionary o m    ��
�� 
TEXT��  ��   l o      ���� 0 
errortitle 
errorTitle j  v w v r     * x y x l    ( z���� z c     ( { | { n    & } ~ } I   ! &�� ���� 0 valueforkey_ valueForKey_   ��� � m   ! " � � � � �  e r r o r M e s s a g e��  ��   ~ o     !���� ,0 parametersdictionary parametersDictionary | m   & '��
�� 
TEXT��  ��   y o      ���� 0 errormessage errorMessage w  � � � r   + 3 � � � K   + / � � �� ����� 60 nsapplescripterrormessage NSAppleScriptErrorMessage � o   , -���� 0 errormessage errorMessage��   � n       � � � 1   0 2��
�� 
pcnt � o   / 0���� 0 errorref errorRef �  ��� � L   4 6 � � m   4 5��
�� 
msng��  ��   \ k   9 � � �  � � � l  9 9�� � ���   � - ' get a list of the selected table items    � � � � N   g e t   a   l i s t   o f   t h e   s e l e c t e d   t a b l e   i t e m s �  � � � r   9 @ � � � c   9 > � � � l  9 < ����� � n   9 < � � � o   : <���� 0 selectedComputerListNames   � o   9 :���� ,0 parametersdictionary parametersDictionary��  ��   � m   < =��
�� 
list � l      ����� � o      ���� 60 selectedcomputerlistnames selectedComputerListNames��  ��   �  � � � l  A A�� � ���   � %  derive the computer references    � � � � >   d e r i v e   t h e   c o m p u t e r   r e f e r e n c e s �  ��� � O   A � � � � k   I � � �  � � � r   I R � � � l  I P ����� � n   I P � � � 1   L P��
�� 
pnam � 2   I L��
�� 
clst��  ��   � l      ����� � o      ���� 40 currentcomputerlistnames currentComputerListNames��  ��   �  � � � r   S W � � � J   S U����   � l      ����� � o      ���� 00 computerlistreferences computerListReferences��  ��   �  � � � Y   X � ��� � ��� � k   f � � �  � � � r   f p � � � c   f n � � � l  f l ����� � n   f l � � � 4   g l�� �
�� 
cobj � o   j k���� 0 i   � l  f g ����� � o   f g���� 60 selectedcomputerlistnames selectedComputerListNames��  ��  ��  ��   � m   l m��
�� 
TEXT � o      ���� 0 thisname thisName �  ��� � Z   q � � ��� � � E  q t � � � l  q r ����� � o   q r���� 40 currentcomputerlistnames currentComputerListNames��  ��   � o   r s���� 0 thisname thisName � l  w  � � � � r   w  � � � l  w | ����� � e   w | � � 4   w |�� �
�� 
clst � o   y z���� 0 thisname thisName��  ��   � l      ����� � n       � � �  ;   } ~ � l  | } ����� � o   | }���� 00 computerlistreferences computerListReferences��  ��  ��  ��   �   check existence    � � � �     c h e c k   e x i s t e n c e��   � k   � � � �  � � � r   � � � � � l  � � ����� � n  � � � � � I   � ��� ����� &0 nslocalizedstring NSLocalizedString �  ��� � m   � � � � � � � , M I S S I N G _ C O M P U T E R _ E R R O R��  ��   �  f   � ���  ��   � o      ���� $0 thiserrormessage thisErrorMessage �  � � � r   � � � � � K   � � � � �� ����� 60 nsapplescripterrormessage NSAppleScriptErrorMessage � o   � ��� $0 thiserrormessage thisErrorMessage��   � n       � � � 1   � ��~
�~ 
pcnt � o   � ��}�} 0 errorref errorRef �  ��| � L   � � � � m   � ��{
�{ 
msng�|  ��  �� 0 i   � m   [ \�z�z  � l  \ a ��y�x � I  \ a�w ��v
�w .corecnte****       **** � l  \ ] ��u�t � o   \ ]�s�s 60 selectedcomputerlistnames selectedComputerListNames�u  �t  �v  �y  �x  ��   �  ��r � L   � � � � o   � ��q�q 00 computerlistreferences computerListReferences�r   � 5   A F�p ��o
�p 
capp � m   C D � � � � � . c o m . a p p l e . R e m o t e D e s k t o p
�o kfrmID  ��  ��   >  � � � l     �n�m�l�n  �m  �l   �  � � � l      �k � ��k   � = 7 HANDLER CALLED BEFORE ACTION VIEW APPEARS IN WORKFLOW     � � � � n   H A N D L E R   C A L L E D   B E F O R E   A C T I O N   V I E W   A P P E A R S   I N   W O R K F L O W   �  � � � i     �  � I      �j�i�h�j 
0 opened  �i  �h    k     +  I    �g�f
�g .ascrcmnt****      � **** l    �e�d m      � 0 A U T O M A T O R - A C T I O N   o p e n e d :�e  �d  �f   	 l   �c
�c  
 3 - get a list of the stored computer list names    � Z   g e t   a   l i s t   o f   t h e   s t o r e d   c o m p u t e r   l i s t   n a m e s	  l   �b�b   ; 5 log (|selectedComputerListNames| of my parameters())    � j   l o g   ( | s e l e c t e d C o m p u t e r L i s t N a m e s |   o f   m y   p a r a m e t e r s ( ) )  r     c     l   �a�` n     o    �_�_ 0 selectedComputerListNames   n    I    �^�]�\�^ 0 
parameters  �]  �\    f    �a  �`   m    �[
�[ 
list l     �Z�Y o      �X�X 60 selectedcomputerlistnames selectedComputerListNames�Z  �Y   �W Z    + �V! =   "#" I   �U$�T
�U .corecnte****       ****$ l   %�S�R% o    �Q�Q 60 selectedcomputerlistnames selectedComputerListNames�S  �R  �T  # m    �P�P    l   !&'(& n   !)*) I    !�O�N�M�O  0 populatetables populateTables�N  �M  *  f    ' > 8 if no items are stored, then populate with current data   ( �++ p   i f   n o   i t e m s   a r e   s t o r e d ,   t h e n   p o p u l a t e   w i t h   c u r r e n t   d a t a�V  ! l  $ +,-., n  $ +/0/ I   % +�L1�K�L $0 adddatatotable01 addDataToTable011 232 o   % &�J�J 60 selectedcomputerlistnames selectedComputerListNames3 4�I4 m   & '�H�H �I  �K  0  f   $ %- ' ! populate table using stored data   . �55 B   p o p u l a t e   t a b l e   u s i n g   s t o r e d   d a t a�W   � 676 l     �G�F�E�G  �F  �E  7 898 l      �D:;�D  : \ V HANDLER CALLED TO STORE THE CURRENT SELECTIONS. CALLED WHEN WORKFLOW IS SAVED OR RUN    ; �<< �   H A N D L E R   C A L L E D   T O   S T O R E   T H E   C U R R E N T   S E L E C T I O N S .   C A L L E D   W H E N   W O R K F L O W   I S   S A V E D   O R   R U N  9 =>= i    ?@? I      �C�B�A�C $0 updateparameters updateParameters�B  �A  @ k     �AA BCB l     �@DE�@  D %  reset error indicator property   E �FF >   r e s e t   e r r o r   i n d i c a t o r   p r o p e r t yC GHG n    IJI n   KLK I    �?M�>�? $0 setvalue_forkey_ setValue_forKey_M NON m    �=
�= boovfalsO P�<P m    QQ �RR  e r r o r O c c u r e d�<  �>  L I    �;�:�9�; 0 
parameters  �:  �9  J  f     H STS l   �8�7�6�8  �7  �6  T UVU l   �5WX�5  W R L TABLE 01: get the contents of table, which is returned as a list of records   X �YY �   T A B L E   0 1 :   g e t   t h e   c o n t e n t s   o f   t a b l e ,   w h i c h   i s   r e t u r n e d   a s   a   l i s t   o f   r e c o r d sV Z[Z l   \]^\ r    _`_ n   aba o    �4�4 0 content  b o    �3�3 &0 tablecontroller01 tableController01` o      �2�2 0 	tabledata 	tableData]   list of records   ^ �cc     l i s t   o f   r e c o r d s[ ded r    fgf J    �1�1  g l     h�0�/h o      �.�. 60 selectedcomputerlistnames selectedComputerListNames�0  �/  e iji Y    Ok�-lm�,k k   ) Jnn opo l  ) /qrsq r   ) /tut n   ) -vwv 4   * -�+x
�+ 
cobjx o   + ,�*�* 0 i  w l  ) *y�)�(y o   ) *�'�' 0 	tabledata 	tableData�)  �(  u o      �&�& 0 
thisrecord 
thisRecordr   a single record   s �zz     a   s i n g l e   r e c o r dp {|{ r   0 7}~} c   0 5� l  0 3��%�$� n   0 3��� o   1 3�#�# 0 selectionIndicator  � o   0 1�"�" 0 
thisrecord 
thisRecord�%  �$  � m   3 4�!
�! 
bool~ o      � �  0 rowselected rowSelected| ��� Z   8 J����� =  8 ;��� o   8 9�� 0 rowselected rowSelected� m   9 :�
� boovtrue� r   > F��� c   > C��� l  > A���� n   > A��� o   ? A�� 0 computerListName  � o   > ?�� 0 
thisrecord 
thisRecord�  �  � m   A B�
� 
TEXT� l     ���� n      ���  ;   D E� l  C D���� o   C D�� 60 selectedcomputerlistnames selectedComputerListNames�  �  �  �  �  �  �  �- 0 i  l m    �� m l   $���� I   $���
� .corecnte****       ****� o     �� 0 	tabledata 	tableData�  �  �  �,  j ��� Z   P ����
�	� =  P T��� o   P Q�� 60 selectedcomputerlistnames selectedComputerListNames� J   Q S��  � k   W ��� ��� l  W W����  � B < throw the error to the run handler by passing as parameters   � ��� x   t h r o w   t h e   e r r o r   t o   t h e   r u n   h a n d l e r   b y   p a s s i n g   a s   p a r a m e t e r s� ��� n  W b��� n  X b��� I   \ b���� $0 setvalue_forkey_ setValue_forKey_� ��� m   \ ]�
� boovtrue� ��� m   ] ^�� ���  e r r o r O c c u r e d�  �  � I   X \�� ��� 0 
parameters  �   ��  �  f   W X� ��� r   c k��� l  c i������ n  c i��� I   d i������� &0 nslocalizedstring NSLocalizedString� ���� m   d e�� ��� * S E L E C T I O N _ E R R O R _ T I T L E��  ��  �  f   c d��  ��  � l     ������ o      ���� 0 
errortitle 
errorTitle��  ��  � ��� r   l t��� l  l r������ n  l r��� I   m r������� &0 nslocalizedstring NSLocalizedString� ���� m   m n�� ��� . S E L E C T I O N _ E R R O R _ M E S S A G E��  ��  �  f   l m��  ��  � l     ������ o      ���� 0 errormessage errorMessage��  ��  � ��� n  u ���� n  v ���� I   z �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   z {���� 0 
errortitle 
errorTitle� ���� m   { |�� ���  e r r o r T i t l e��  ��  � I   v z�������� 0 
parameters  ��  ��  �  f   u v� ���� n  � ���� n  � ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 0 errormessage errorMessage� ���� m   � ��� ���  e r r o r M e s s a g e��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � ���  �
  �	  � ��� l  � �������  � 2 , write the values into the parameters record   � ��� X   w r i t e   t h e   v a l u e s   i n t o   t h e   p a r a m e t e r s   r e c o r d� ���� n  � ���� n  � ���� I   � �������� $0 setvalue_forkey_ setValue_forKey_� ��� o   � ����� 60 selectedcomputerlistnames selectedComputerListNames� ���� m   � ��� ��� 2 s e l e c t e d C o m p u t e r L i s t N a m e s��  ��  � I   � ��������� 0 
parameters  ��  ��  �  f   � ���  > ��� l     ��������  ��  ��  � ��� l     ������  � ' ! SUB-ROUTINE POPULATES THE TABLES   � ��� B   S U B - R O U T I N E   P O P U L A T E S   T H E   T A B L E S� ��� i    ��� I      ��������  0 populatetables populateTables��  ��  � k     �� ��� l     ������  � $  GET NAMES OF FILEMAKER FIELDS   � ��� <   G E T   N A M E S   O F   F I L E M A K E R   F I E L D S� ��� r        n     I    �������� 20 getardcomputerlistnames getARDComputerListNames��  ��    f      l     ���� o      ���� &0 computerlistnames computerListNames��  ��  �  l   ����     POPULATE THE TABLE    �		 &   P O P U L A T E   T H E   T A B L E 
��
 n    I   	 ������ $0 adddatatotable01 addDataToTable01  o   	 
���� &0 computerlistnames computerListNames �� m   
 ����  ��  ��    f    	��  �  l     ��������  ��  ��    l      ����   ; 5 EACH TABLE GETS ITS OWN CONTROLLER AND SUB-ROUTINES     � j   E A C H   T A B L E   G E T S   I T S   O W N   C O N T R O L L E R   A N D   S U B - R O U T I N E S    i     I      ������ $0 adddatatotable01 addDataToTable01  o      ���� 0 	itemnames 	itemNames �� o      ���� .0 defaultselectionvalue defaultSelectionValue��  ��   l    F !"  k     F## $%$ l     ��&'��  & !  remove existing list items   ' �(( 6   r e m o v e   e x i s t i n g   l i s t   i t e m s% )*) O    +,+ I    ��-����  0 removeobjects_ removeObjects_- .��. n  	 /0/ o    ���� 0 content  0 o   	 ���� &0 tablecontroller01 tableController01��  ��  , o     ���� &0 tablecontroller01 tableController01* 121 l   ��34��  3 &   add new items to the empty list   4 �55 @   a d d   n e w   i t e m s   t o   t h e   e m p t y   l i s t2 6��6 Y    F7��89��7 k   $ A:: ;<; r   $ *=>= n   $ (?@? 4   % (��A
�� 
cobjA o   & '���� 0 i  @ l  $ %B����B o   $ %���� 0 	itemnames 	itemNames��  ��  > o      ���� 0 thisname thisName< CDC l  + +��EF��  E p j NOTE: two sets of brackets are used: the outermost indicates a list, and the innermost indicates a record   F �GG �   N O T E :   t w o   s e t s   o f   b r a c k e t s   a r e   u s e d :   t h e   o u t e r m o s t   i n d i c a t e s   a   l i s t ,   a n d   t h e   i n n e r m o s t   i n d i c a t e s   a   r e c o r dD H��H O  + AIJI I   3 @��K���� 0 addobjects_ addObjects_K L��L J   4 <MM N��N K   4 :OO ��PQ�� 0 selectionIndicator  P o   5 6���� .0 defaultselectionvalue defaultSelectionValueQ ��R���� 0 computerListName  R o   7 8���� 0 thisname thisName��  ��  ��  ��  J o   + 0���� &0 tablecontroller01 tableController01��  �� 0 i  8 m    ���� 9 l   S����S I   ��T��
�� .corecnte****       ****T o    ���� 0 	itemnames 	itemNames��  ��  ��  ��  ��  !   POPULATE THE TABLE   " �UU &   P O P U L A T E   T H E   T A B L E VWV l     ��������  ��  ��  W XYX l      ��Z[��  Z - ' ROUTINES FOR SETTING TABLE CHECKBOXES    [ �\\ N   R O U T I N E S   F O R   S E T T I N G   T A B L E   C H E C K B O X E S  Y ]^] i     #_`_ I      ��a���� ,0 setcheckboxestotrue_ setCheckboxesToTrue_a b��b o      ���� 
0 sender  ��  ��  ` X      c��dc r    efe m    ��
�� boovtruef n      ghg o    ���� 0 selectionIndicator  h o    ���� 0 
eachobject 
eachObject�� 0 
eachobject 
eachObjectd l   
i����i n   
jkj o    
���� 0 content  k o    ���� &0 tablecontroller01 tableController01��  ��  ^ lml l     ��������  ��  ��  m non i   $ 'pqp I      ��r���� .0 setcheckboxestofalse_ setCheckboxesToFalse_r s��s o      �� 
0 sender  ��  ��  q X      t�~ut r    vwv m    �}
�} boovfalsw n      xyx o    �|�| 0 selectionIndicator  y o    �{�{ 0 
eachobject 
eachObject�~ 0 
eachobject 
eachObjectu l   
z�z�yz n   
{|{ o    
�x�x 0 content  | o    �w�w &0 tablecontroller01 tableController01�z  �y  o }~} l     �v�u�t�v  �u  �t  ~ � l      �s���s  � * $ SUB-ROUTINE UPDATES TABLE CONTENTS    � ��� H   S U B - R O U T I N E   U P D A T E S   T A B L E   C O N T E N T S  � ��� i   ( +��� I      �r��q�r 0 updatetables_ updateTables_� ��p� o      �o�o 
0 sender  �p  �q  � n    ��� I    �n�m�l�n  0 populatetables populateTables�m  �l  �  f     � ��� l     �k�j�i�k  �j  �i  � ��� l      �h���h  � 7 1 ROUTINES FOR GETTING DATA FROM THE APPLICATIONS    � ��� b   R O U T I N E S   F O R   G E T T I N G   D A T A   F R O M   T H E   A P P L I C A T I O N S  � ��� i   , /��� I      �g�f�e�g 20 getardcomputerlistnames getARDComputerListNames�f  �e  � k     �� ��� O     ��� r    ��� l   ��d�c� n    ��� 1    �b
�b 
pnam� 2    �a
�a 
clst�d  �c  � o      �`�` 0 these_names  � 5     �_��^
�_ 
capp� m    �� ��� . c o m . a p p l e . R e m o t e D e s k t o p
�^ kfrmID  � ��]� L    �� o    �\�\ 0 these_names  �]  � ��� l     �[�Z�Y�[  �Z  �Y  � ��� l     �X���X  �   LOCALIZATION ROUTINE   � ��� *   L O C A L I Z A T I O N   R O U T I N E� ��� i   0 3��� I      �W��V�W &0 nslocalizedstring NSLocalizedString� ��U� 1      �T
�T 
kMsg�U  �V  � L     �� c     ��� n    ��� n   ��� I    �S��R�S H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_� ��� 1    �Q
�Q 
kMsg� ��� m    �P
�P 
msng� ��O� m    �N
�N 
msng�O  �R  � I    �M�L�K�M 
0 bundle  �L  �K  �  f     � m    �J
�J 
utxt� ��I� l     �H�G�F�H  �G  �F  �I    ��E� l     �D�C�B�D  �C  �B  �E       �A���A  � �@�@ ,0 choose_computer_list Choose_Computer_List� �? ���? ,0 choose_computer_list Choose_Computer_List� �� �>�=�
�> misccura
�= 
pcls� ���  A M B u n d l e A c t i o n� �<��;�:�����������<  � �9�8�7�6�5�4�3�2�1�0�/�.
�9 
pare�8 &0 tablecontroller01 tableController01�7 @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�6 
0 opened  �5 $0 updateparameters updateParameters�4  0 populatetables populateTables�3 $0 adddatatotable01 addDataToTable01�2 ,0 setcheckboxestotrue_ setCheckboxesToTrue_�1 .0 setcheckboxestofalse_ setCheckboxesToFalse_�0 0 updatetables_ updateTables_�/ 20 getardcomputerlistnames getARDComputerListNames�. &0 nslocalizedstring NSLocalizedString�;  
�: 
msng� �- @�,�+���*�- @0 runwithinput_fromaction_error_ runWithInput_fromAction_error_�, �)��) �  �(�'�&�( 	0 input  �' 0 anaction anAction�& 0 errorref errorRef�+  � �%�$�#�"�!� �������% 	0 input  �$ 0 anaction anAction�# 0 errorref errorRef�" ,0 parametersdictionary parametersDictionary�! 0 
errortitle 
errorTitle�  0 errormessage errorMessage� 60 selectedcomputerlistnames selectedComputerListNames� 40 currentcomputerlistnames currentComputerListNames� 00 computerlistreferences computerListReferences� 0 i  � 0 thisname thisName� $0 thiserrormessage thisErrorMessage� � f�� t� ������� ������ ��
� 0 
parameters  � 0 valueforkey_ valueForKey_
� 
bool
� 
TEXT� 60 nsapplescripterrormessage NSAppleScriptErrorMessage
� 
pcnt
� 
msng� 0 selectedComputerListNames  
� 
list
� 
capp
� kfrmID  
� 
clst
� 
pnam
� .corecnte****       ****
� 
cobj�
 &0 nslocalizedstring NSLocalizedString�* �)j+  E�O��k+ �&e  &��k+ �&E�O��k+ �&E�O�l��,FO�Y j��,�&E�O)���0 Y*�-a ,E�OjvE�O Dk�j kh 	�a �/�&E�O�� *�/E�6FY )a k+ E�O�l��,FO�[OY��O�U� �	 ������	 
0 opened  �  �  � �� 60 selectedcomputerlistnames selectedComputerListNames� ����� ����
� .ascrcmnt****      � ****� 0 
parameters  � 0 selectedComputerListNames  
� 
list
�  .corecnte****       ****��  0 populatetables populateTables�� $0 adddatatotable01 addDataToTable01� ,�j O)j+ �,�&E�O�j j  
)j+ Y 	)�kl+ � ��@���������� $0 updateparameters updateParameters��  ��  � ���������������� 0 	tabledata 	tableData�� 60 selectedcomputerlistnames selectedComputerListNames�� 0 i  �� 0 
thisrecord 
thisRecord�� 0 rowselected rowSelected�� 0 
errortitle 
errorTitle�� 0 errormessage errorMessage� ��Q�������������������������� 0 
parameters  �� $0 setvalue_forkey_ setValue_forKey_�� 0 content  
�� .corecnte****       ****
�� 
cobj�� 0 selectionIndicator  
�� 
bool�� 0 computerListName  
�� 
TEXT�� &0 nslocalizedstring NSLocalizedString�� �)j+  f�l+ Ob  �,E�OjvE�O 3k�j kh ��/E�O��,�&E�O�e  ��,�&�6FY h[OY��O�jv  :)j+  e�l+ O)�k+ E�O)�k+ E�O)j+  ��l+ O)j+  ��l+ Y hO)j+  �a l+ � �������������  0 populatetables populateTables��  ��  � ���� &0 computerlistnames computerListNames� ������ 20 getardcomputerlistnames getARDComputerListNames�� $0 adddatatotable01 addDataToTable01�� )j+  E�O)�jl+ � ������������ $0 adddatatotable01 addDataToTable01�� ����� �  ������ 0 	itemnames 	itemNames�� .0 defaultselectionvalue defaultSelectionValue��  � ���������� 0 	itemnames 	itemNames�� .0 defaultselectionvalue defaultSelectionValue�� 0 i  �� 0 thisname thisName� ������������������ 0 content  ��  0 removeobjects_ removeObjects_
�� .corecnte****       ****
�� 
cobj�� 0 selectionIndicator  �� 0 computerListName  �� �� 0 addobjects_ addObjects_�� Gb   *b  �,k+ UO /k�j kh ��/E�Ob   *���kvk+ U[OY��� ��`���������� ,0 setcheckboxestotrue_ setCheckboxesToTrue_�� ����� �  ���� 
0 sender  ��  � ������ 
0 sender  �� 0 
eachobject 
eachObject� ������������ 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 selectionIndicator  �� ! b  �,[��l kh e��,F[OY��� ��q���������� .0 setcheckboxestofalse_ setCheckboxesToFalse_�� ����� �  ���� 
0 sender  ��  � ������ 
0 sender  �� 0 
eachobject 
eachObject� ������������ 0 content  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 selectionIndicator  �� ! b  �,[��l kh f��,F[OY��� ������������� 0 updatetables_ updateTables_�� ����� �  ���� 
0 sender  ��  � ���� 
0 sender  � ����  0 populatetables populateTables�� )j+  � ������������� 20 getardcomputerlistnames getARDComputerListNames��  ��  � ���� 0 these_names  � ���������
�� 
capp
�� kfrmID  
�� 
clst
�� 
pnam�� )���0 	*�-�,E�UO�� ������������� &0 nslocalizedstring NSLocalizedString�� ����� �  ��
�� 
kMsg��  � ��
�� 
kMsg� ���������� 
0 bundle  
�� 
msng�� H0 "localizedstringforkey_value_table_ "localizedStringForKey_value_table_
�� 
utxt�� )j+  ���m+ �&ascr  ��ޭ