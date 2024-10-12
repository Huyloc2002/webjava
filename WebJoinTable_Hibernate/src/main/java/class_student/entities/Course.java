package class_student.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
@Entity
@Table(name="Courses")
public class Course {
@Id
@NotEmpty(message = "Nhập mã Khoá Học!")
@Column(name="CouId")
private String couId;
@NotEmpty(message = "Nhập Tên Khoá Học!")
@Column(name="CourseName")
private String courseName;
@Column(name="Image")
private String image;
@NotEmpty(message = "Mô tả Khoá Học!")
@Column(name="CourseDescription")
private String courseText;
@NotNull(message = "Nhập Giá Khoá Học!")
@Column(name="Price")
private Float price;
@NotEmpty(message = "Nhập THời gian Khoá Học!")
@Column(name="Time")
private String time;
@OneToMany(mappedBy = "course")
private Set<Student> listStudents;


public Course() {
	// TODO Auto-generated constructor stub
}


public Course(String couId, String courseName, String image, String courseText, Float price, String time) {
	super();
	this.couId = couId;
	this.courseName = courseName;
	this.image = image;
	this.courseText = courseText;
	this.price = price;
	this.time = time;
}


public String getCouId() {
	return couId;
}


public void setCouId(String couId) {
	this.couId = couId;
}


public String getCourseName() {
	return courseName;
}


public void setCourseName(String courseName) {
	this.courseName = courseName;
}


public String getImage() {
	return image;
}


public void setImage(String image) {
	this.image = image;
}


public String getCourseText() {
	return courseText;
}


public void setCourseText(String courseText) {
	this.courseText = courseText;
}


public Float getPrice() {
	return price;
}


public void setPrice(Float price) {
	this.price = price;
}


public String getTime() {
	return time;
}


public void setTime(String time) {
	this.time = time;
}


public Set<Student> getListStudents() {
	return listStudents;
}


public void setListStudents(Set<Student> listStudents) {
	this.listStudents = listStudents;
}






}
