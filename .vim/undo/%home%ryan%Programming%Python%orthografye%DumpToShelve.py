Vim�UnDo� ����1V,���{�ӇZp�V"�t34���+�                    <       <   <   <    O]$�   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             O]�     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             O]�     �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             O]�     �                def database_shelve(*args):5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             O]�     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             O]�     �                   wordlist = shelve.open(5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       O]�     �                   wordlist = shelve.open(file5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                v       O]�     �                   with  shelve.open(file5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                v       O]�     �                   with shelve.open(file5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                v       O] W     �                       wordlist.5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                v       O] W     �                       wordlist5�_�   
                    -    ����                                                                                                                                                                                                                                                                                                                                                v       O] _     �                /def database_shelve(*args, file="wordlist.db"):5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       O] o     �                       wordlist[5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       O] v     �                       wordlist[database]5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       O]!q     �                   �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       O]!y     �                   �             5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                v       O]!�     �               !    from collections import count5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       O]!�     �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       O]!�     �         	              �             5�_�                       &    ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]!�     �      	   	      )        wordlist.setdefault(database, [])5�_�                       "    ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]!�     �         
          �         	    5�_�                           ����                                                                                                                                                                                                                                                                                                                            
   '       
   &       v   &    O]"     �                   def histogram5�_�                           ����                                                                                                                                                                                                                                                                                                                            
   '       
   &       v   &    O]"     �                   def get_histogram5�_�                           ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"     �                       return 5�_�                           ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"     �                        return Counter()5�_�                           ����                                                                                                                                                                                                                                                                                                                            
   '       
   &       v   &    O]"     �                    def get_histogram():5�_�                           ����                                                                                                                                                                                                                                                                                                                            	   '       	   &       v   &    O]"     �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"     �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"     �                        histogram = Counter()5�_�                       &    ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"     �               0        wordlist.setdefault(database, histogram)5�_�                           ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"=     �               0        wordlist.setdefault(database, Counter())5�_�                        )    ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"?     �               )        wordlist.get(database, Counter())5�_�      !                      ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"K     �               )        wordlist.get(database, Counter())5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"X     �                     5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"b     �               5        histogram = wordlist.get(database, Counter())5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]"d     �                         5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]#     �                   �             5�_�   $   &           %      	    ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]#     �               7    with shelve.open(file, writeback=True) as wordlist:5�_�   %   '           &      2    ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]##    �               ?    with closing(shelve.open(file, writeback=True) as wordlist:5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                               '          &       v   &    O]#<    �                         counter.5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                v       O]#�    �          	      Bdef database_shelve(*args, file="wordlist.db", database="missed"):5�_�   (   *           )   	        ����                                                                                                                                                                                                                                                                                                                                                v       O]#�    �      	           5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                                             O]$v     �              5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                             O]$}     �          	       5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                                                             O]$     �                 Clas5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                             O]$�     �          	       �              5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                             O]$�     �                 Bdef database_shelve(words, file="wordlist.db", database="missed"):       import shelve   "    from contextlib import closing   #    from collections import Counter          @    with closing(shelve.open(file, writeback=True)) as wordlist:   3        counter = wordlist.get(database, Counter())           counter.update(args)5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                             O]$�     �         
          �         	    5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                             O]$�     �                   def __init__():5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                             O]$�     �                       �             5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                       	           V        O]$�     �                        import shelve   &        from contextlib import closing   '        from collections import Counter5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                  V        O]$�     �          
    5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                            
           
           V        O]$�     �             5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                  V        O]$�     �                        import shelve5�_�   5   7           6           ����                                                                                                                                                                                                                                                                                                                                                  V        O]$�     �               &        from contextlib import closing5�_�   6   8           7           ����                                                                                                                                                                                                                                                                                                                                                  V        O]$�     �               '        from collections import Counter5�_�   7   9           8           ����                                                                                                                                                                                                                                                                                                                                                  V        O]$�    �             5�_�   8   :           9           ����                                                                                                                                                                                                                                                                                                                                                  V        O]$�     �      
                     �      
       5�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                                v       O]$�    �               F    def database_shelve(words, file="wordlist.db", database="missed"):5�_�   :   <           ;          ����                                                                                                                                                                                                                                                                                                                                                v       O]$�    �                        5�_�   ;               <   
        ����                                                                                                                                                                                                                                                                                                                                                v       O]$�   	 �   	   
           5��