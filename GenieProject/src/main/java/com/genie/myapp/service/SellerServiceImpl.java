package com.genie.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.genie.myapp.dao.SellerDAO;

@Service
public class SellerServiceImpl implements SellerService {
	
	@Inject
	SellerDAO dao;
}
