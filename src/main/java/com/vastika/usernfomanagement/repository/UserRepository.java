package com.vastika.usernfomanagement.repository;

import com.vastika.usernfomanagement.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
}
