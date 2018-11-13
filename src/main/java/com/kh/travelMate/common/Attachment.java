package com.kh.travelMate.common;

import java.sql.Date;

public class Attachment
{
	private int attachmentNo;
	private String originName;
	private String modifyName;
	private String fileRoot;
	private Date uploadDate;
	private String type;
	private int refNo;
	
	public Attachment() {}

	public Attachment(int attachmentNo, String originName, String modifyName, String fileRoot, Date uploadDate,
			String type, int refNo) {
		super();
		this.attachmentNo = attachmentNo;
		this.originName = originName;
		this.modifyName = modifyName;
		this.fileRoot = fileRoot;
		this.uploadDate = uploadDate;
		this.type = type;
		this.refNo = refNo;
	}

	public int getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getModifyName() {
		return modifyName;
	}

	public void setModifyName(String modifyName) {
		this.modifyName = modifyName;
	}

	public String getFileRoot() {
		return fileRoot;
	}

	public void setFileRoot(String fileRoot) {
		this.fileRoot = fileRoot;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getRefNo() {
		return refNo;
	}

	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}

	@Override
	public String toString() {
		return "Attachment [attachmentNo=" + attachmentNo + ", originName=" + originName + ", modifyName=" + modifyName
				+ ", fileRoot=" + fileRoot + ", uploadDate=" + uploadDate + ", type=" + type + ", refNo=" + refNo + "]";
	}
}