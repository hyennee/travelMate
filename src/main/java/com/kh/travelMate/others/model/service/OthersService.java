package com.kh.travelMate.others.model.service;

import com.kh.travelMate.common.Attachment;
import com.kh.travelMate.others.model.vo.ConsultApply;
import com.kh.travelMate.others.model.vo.ConsultRequest;

public interface OthersService {

	int insertCONSULT_APPLY(ConsultApply ca, Attachment attachment);

	int insertConsultRequest(ConsultRequest cr);

}