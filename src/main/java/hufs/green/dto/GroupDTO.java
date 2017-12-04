package hufs.green.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class GroupDTO {
	private String groupId;
	private String groupName;
	private MemberDTO groupLeader;
	private String groupPhoto;
	private MultipartFile groupPhotoFile;
	private List<MemberDTO> memberList;
	
	public GroupDTO(){}
	
	
	public GroupDTO(String groupId, String groupName, MemberDTO groupLeader, String groupPhoto,
			MultipartFile groupPhotoFile, List<MemberDTO> memberList) {
		super();
		this.groupId = groupId;
		this.groupName = groupName;
		this.groupLeader = groupLeader;
		this.groupPhoto = groupPhoto;
		this.groupPhotoFile = groupPhotoFile;
		this.memberList = memberList;
	}


	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
	public MemberDTO getGroupLeader() {
		return groupLeader;
	}


	public void setGroupLeader(MemberDTO groupLeader) {
		this.groupLeader = groupLeader;
	}


	public String getGroupPhoto() {
		return groupPhoto;
	}
	public void setGroupPhoto(String groupPhoto) {
		this.groupPhoto = groupPhoto;
	}
	public MultipartFile getGroupPhotoFile() {
		return groupPhotoFile;
	}
	public void setGroupPhotoFile(MultipartFile groupPhotoFile) {
		this.groupPhotoFile = groupPhotoFile;
	}
	public List<MemberDTO> getMemberList() {
		return memberList;
	}
	public void setMemberList(List<MemberDTO> memberList) {
		this.memberList = memberList;
	}

	@Override
	public String toString() {
		return "GroupDTO [" + (groupId != null ? "groupId=" + groupId + ", " : "")
				+ (groupName != null ? "groupName=" + groupName + ", " : "")
				+ (groupLeader != null ? "groupLeader=" + groupLeader + ", " : "")
				+ (groupPhoto != null ? "groupPhoto=" + groupPhoto + ", " : "")
				+ (groupPhotoFile != null ? "groupPhotoFile=" + groupPhotoFile + ", " : "")
				+ (memberList != null ? "memberList=" + memberList : "") + "]";
	}
	
	
}
