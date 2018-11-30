package com.Inmarit.account.service;

import com.Inmarit.account.model.User;

/** {@author gopinadh}!*/
public interface UserService {
	/** {@inheritDoc}} !*/
    void save(User user);
    /** {@inheritDoc}} !*/
    User findByUsername(String username);
}
