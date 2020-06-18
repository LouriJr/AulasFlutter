const String queryDDL = 'CREATE TABLE Universidades('
                        'id INTEGER PRIMARY KEY,'
                        'name TEXT,'
                        'imagePath TEXT,'
                        'likes INTEGER,'
                        'unlikes INTEGER)';

                       
String like(int id, int value) => 'UPDATE Universidades SET likes = $value WHERE id = $id';
String unlike(int id, int value) => 'UPDATE Universidades SET unlikes = $value WHERE id = $id';
