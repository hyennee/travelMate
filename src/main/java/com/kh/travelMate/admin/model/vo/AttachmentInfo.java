package com.kh.travelMate.admin.model.vo;

import java.sql.Date;

public class AttachmentInfo {
	private int attachMent_No;
	private String origin_Name;
	private String modify_Name;
	private String file_Root;
	private Date upload_Date;
	private String type;
	private int ref_No;
	
	public AttachmentInfo() {}

	public AttachmentInfo(int attachMent_No, String origin_Name, String modify_Name, String file_Root, Date upload_Date,
			String type, int ref_No) {
		super();
		this.attachMent_No = attachMent_No;
		this.origin_Name = origin_Name;
		this.modify_Name = modify_Name;
		this.file_Root = file_Root;
		this.upload_Date = upload_Date;
		this.type = type;
		this.ref_No = ref_No;
	}

	public int getAttachMent_No() {
		return attachMent_No;
	}

	public void setAttachMent_No(int attachMent_No) {
		this.attachMent_No = attachMent_No;
	}

	public String getOrigin_Name() {
		return origin_Name;
	}

	public void setOrigin_Name(String origin_Name) {
		this.origin_Name = origin_Name;
	}

	public String getModify_Name() {
		return modify_Name;
	}

	public void setModify_Name(String modify_Name) {
		this.modify_Name = modify_Name;
	}

	public String getFile_Root() {
		return file_Root;
	}

	public void setFile_Root(String file_Root) {
		this.file_Root = file_Root;
	}

	public Date getUpload_Date() {
		return upload_Date;
	}

	public void setUpload_Date(Date upload_Date) {
		this.upload_Date = upload_Date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getRef_No() {
		return ref_No;
	}

	public void setRef_No(int ref_No) {
		this.ref_No = ref_No;
	}

	@Override
	public String toString() {
		return "AttachmentInfo [attachMent_No=" + attachMent_No + ", origin_Name=" + origin_Name + ", modify_Name="
				+ modify_Name + ", file_Root=" + file_Root + ", upload_Date=" + upload_Date + ", type=" + type
				+ ", ref_No=" + ref_No + "]";
	}
	
}
