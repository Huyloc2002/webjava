package class_student.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="Students")
public class Student {
@Id
@Column(name="StudentId")
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Integer studentId;

@Column(name="StudentName")
@NotEmpty(message = "Nhập Tên Của Bạn!")
private String studentName;


private String image;

@Column(name="Gender")
@NotNull(message = "Chọn Gới Tính!")
private Boolean gender;

@Column(name="Email")
@NotEmpty(message = "Nhập Email Của Bạn!")
private String email;


@Column(name="DateOfBirth")
@DateTimeFormat(pattern = "yyyy-MM-dd")
@NotNull(message = "Nhập Ngày Sinh Của Bạn!")
@Past(message = "Nhập quá Số Ngày Hiện Tại!")
private Date dateofBirth;

@Column(name="Address")
@NotEmpty(message = "Nhập quê Quán của Bạn!")
private String address;

@Column(name="PhoneNumber")
@NotEmpty(message = "Nhập Số Điện Thoại CỦa Bạn!")
private String phoneNumber;
@Column(name="Dateregistration")
@NotEmpty(message = "Nhập Ngày đăng kí CỦa Bạn!")
private String dateregistration;

@ManyToOne
@JoinColumn(name="CouId",referencedColumnName = "CouId")
private Course course;
public Student() {
	// TODO Auto-generated constructor stub
}
public Student(Integer studentId, @NotEmpty(message = "Nhập Tên Của Bạn!") String studentName, String image,
		@NotNull(message = "Chọn Gới Tính!") Boolean gender, @NotEmpty(message = "Nhập Email Của Bạn!") String email,
		@NotNull(message = "Nhập Ngày Sinh Của Bạn!") @Past(message = "Nhập quá Số Ngày Hiện Tại!") Date dateofBirth,
		@NotEmpty(message = "Nhập quê Quán của Bạn!") String address,
		@NotEmpty(message = "Nhập Số Điện Thoại CỦa Bạn!") String phoneNumber,
		@NotEmpty(message = "Nhập Ngày đăng kí CỦa Bạn!") String dateregistration, Course course) {
	super();
	this.studentId = studentId;
	this.studentName = studentName;
	this.image = image;
	this.gender = gender;
	this.email = email;
	this.dateofBirth = dateofBirth;
	this.address = address;
	this.phoneNumber = phoneNumber;
	this.dateregistration = dateregistration;
	this.course = course;
}
public Integer getStudentId() {
	return studentId;
}
public void setStudentId(Integer studentId) {
	this.studentId = studentId;
}
public String getStudentName() {
	return studentName;
}
public void setStudentName(String studentName) {
	this.studentName = studentName;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public Boolean getGender() {
	return gender;
}
public void setGender(Boolean gender) {
	this.gender = gender;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Date getDateofBirth() {
	return dateofBirth;
}
public void setDateofBirth(Date dateofBirth) {
	this.dateofBirth = dateofBirth;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getDateregistration() {
	return dateregistration;
}
public void setDateregistration(String dateregistration) {
	this.dateregistration = dateregistration;
}
public Course getCourse() {
	return course;
}
public void setCourse(Course course) {
	this.course = course;
}



}
