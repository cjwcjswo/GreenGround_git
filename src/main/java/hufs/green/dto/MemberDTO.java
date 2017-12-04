package hufs.green.dto;

import org.springframework.web.multipart.MultipartFile;

public class MemberDTO {
	private String lastName;
	private String firstName;
	private String email;
	private String password;
	private String photo;
	private MultipartFile photoFile;
	private String role;
	
	public MemberDTO(){}
	
	
	public MemberDTO(String lastName, String firstName, String email, String password, String photo,
			MultipartFile photoFile, String role) {
		super();
		this.lastName = lastName;
		this.firstName = firstName;
		this.email = email;
		this.password = password;
		this.photo = photo;
		this.photoFile = photoFile;
		this.role = role;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public MultipartFile getPhotoFile() {
		return photoFile;
	}
	public void setPhotoFile(MultipartFile photoFile) {
		this.photoFile = photoFile;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "MemberDTO [" + (lastName != null ? "lastName=" + lastName + ", " : "")
				+ (firstName != null ? "firstName=" + firstName + ", " : "")
				+ (email != null ? "email=" + email + ", " : "") + (photo != null ? "photo=" + photo + ", " : "")
				+ (photoFile != null ? "photoFile=" + photoFile + ", " : "") + (role != null ? "role=" + role : "")
				+ "]";
	}
	
	
}
