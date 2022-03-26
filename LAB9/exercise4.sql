ALTER TABLE Author 
ADD author_sum_rating integer DEFAULT 0;

CREATE TRIGGER updating_author_sum_rating
AFTER UPDATE OF Rating ON Book 
FOR EACH ROW
EXECUTE PROCEDURE updating_author_sum_rating();