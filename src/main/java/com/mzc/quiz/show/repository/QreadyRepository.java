package com.mzc.quiz.show.repository;

import com.mzc.quiz.show.entity.Show;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface QreadyRepository extends MongoRepository<Show, String> {
    Show save(Show show);
    Show findShowById(String Id);
    List<Show> findShowByQuizInfo_Email(String email);
    Show deleteShowById(String Id);

}
