Vim�UnDo� �:`)`��$z(�7ܞ� ��$��!e�~���   B   0        return request.cached_setup(setup_album)   B   $      :       :   :   :    Od�n    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Od��     �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Od��     �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od��     �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od��     �                class SongMixin():5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od��    �                class SongMixin):5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Od�     �                 �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�"     �                �             5�_�      	                 
    ����                                                                                                                                                                                                                                                                                                                                                             Od�%     �                �             5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             Od�,    �             5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             Od�0     �                 �              5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             Od�=     �                &"""Mixin providing song testing object5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             Od�?     �                0"""Mixin providing temporary song testing object5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                             Od�@    �             5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             Od�E     �                3"""Mixin providing temporary song testing object"""5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Od�F     �                 �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�O    �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Od�S    �                	import os5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             Od�|    �      
          class SongMixin:5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             Od�     �   	      !          �   	           5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�   	 �         $          �         #    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od��   
 �         &          �         %    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�     �         +      @    Song(path=<dynamic*>, artist='testArtist', title='testSong',5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�     �                <    *Path may later be reached by using the song funcarg and5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�     �                (     looking up the song.name attribute.5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�     �                    5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                                                             Od�    �         (      ;    an mp3 file. Not suitable for testing tagging features.5�_�                           ����                                                                                                                                                                                                                                                                                                                                       )          V       Od�K    �   $   &          "        TestSong.temp_song.close()�                /                path = TestSong.temp_song.name,�                :        TestSong.temp_song = tempfile.NamedTemporaryFile()5�_�                    )       ����                                                                                                                                                                                                                                                                                                                                                             Od�z     �   )            5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             Od�z     �   )   /              5�_�                     .       ����                                                                                                                                                                                                                                                                                                                                                             Od�     �   -                  """reates5�_�      !               .       ����                                                                                                                                                                                                                                                                                                                                                             Od�     �   -   1   /          �   -   /   .    5�_�       "           !   1        ����                                                                                                                                                                                                                                                                                                                                                             Od��     �   1            5�_�   !   #           "   0   
    ����                                                                                                                                                                                                                                                                                                                                                             Od��     �   /   1   =      
    Album(5�_�   "   $           #   0   O    ����                                                                                                                                                                                                                                                                                                                                                             Od��     �   /   2   =      [    Album(artist='testArtist', title='testAlbum', year='2012', tracks=['Song 1', 'Song 2',k5�_�   #   %           $   1       ����                                                                                                                                                                                                                                                                                                                                                             Od��     �   0   2   >          'Song 2',k5�_�   $   &           %   1       ����                                                                                                                                                                                                                                                                                                                                                             Od�    �   0   2   >              'Song 2',k5�_�   %   '           &   5       ����                                                                                                                                                                                                                                                                                                                            <          5          V   (    Od�!     �   4   5                  def build_album():   (            """Setup: Construct Album"""                album = Album.Album(   *                    artist = "testArtist",   (                    title = "testAlbum",   "                    year = "2012",   P                    tracks = ["Song 1", "Song 2", "Song 3", "Song 4", "Song 5"])               return album5�_�   &   )           '   2       ����                                                                                                                                                                                                                                                                                                                            5          5          V   (    Od�"     �   2   ;   6    5�_�   '   *   (       )   :       ����                                                                                                                                                                                                                                                                                                                            =          =          V   (    Od�(     �   :   <   >    5�_�   )   +           *   3        ����                                                                                                                                                                                                                                                                                                                            >          >          V   (    Od�+     �   2   4   ?    5�_�   *   ,           +   4        ����                                                                                                                                                                                                                                                                                                                            ?          ?          V   (    Od�.     �   3   5   @    5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                            @          @          V   (    Od�0     �         A    5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                            A          A          V   (    Od�1     �         B    5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                            B          B          V   (    Od�3     �   A   C                      �   0   2              �                        �                    �                    �   
                 5�_�   .   0           /   7        ����                                                                                                                                                                                                                                                                                                                            B          B          V   (    Od�<     �   6   ?   C              def build_album():   (            """Setup: Construct Album"""                album = Album.Album(   *                    artist = "testArtist",   (                    title = "testAlbum",   "                    year = "2012",   P                    tracks = ["Song 1", "Song 2", "Song 3", "Song 4", "Song 5"])               return album5�_�   /   1           0   7       ����                                                                                                                                                                                                                                                                                                                            B          B          V   (    Od�@    �   6   8   C          def build_album():5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                            B          B          V   (    Od�o     �         C    5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                            C          C          V   (    Od�p     �                 5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                            B          B          V   (    Od�q    �         D       �         C    5�_�   3   5           4   .        ����                                                                                                                                                                                                                                                                                                                            C          C          V   (    Od�    �   -   /   D    5�_�   4   6           5   D        ����                                                                                                                                                                                                                                                                                                                            D          D          V   (    Od�    �   C   D           5�_�   5   7           6   8        ����                                                                                                                                                                                                                                                                                                                            D          D          V   (    Od�     �   7   8           5�_�   6   8           7           ����                                                                                                                                                                                                                                                                                                                            C          C          V   (    Od�    �                 5�_�   7   9           8   B   $    ����                                                                                                                                                                                                                                                                                                                                                             Od��    �   A              0        return request.cached_setup(build_album)5�_�   8   :           9   7       ����                                                                                                                                                                                                                                                                                                                                                             Od�D    �   6   8   B          def setup_album():5�_�   9               :   B   $    ����                                                                                                                                                                                                                                                                                                                                                             Od�m    �   A              0        return request.cached_setup(setup_album)5�_�   '           )   (   3       ����                                                                                                                                                                                                                                                                                                                            =          =          V   (    Od�#     �   2   4   >          def build_album():5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Od�:     �         )      3        T.temp_song = tempfile.NamedTemporaryFile()5��