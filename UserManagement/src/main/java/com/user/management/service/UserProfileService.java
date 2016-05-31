package com.user.management.service;

import java.util.List;

import com.user.management.model.UserProfile;

public interface UserProfileService {
	UserProfile findById(int id);

	UserProfile findByType(String type);

	List<UserProfile> findAll();
}
