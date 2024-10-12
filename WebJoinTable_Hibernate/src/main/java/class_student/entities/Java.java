package class_student.entities;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
@Entity
@Table(name="Java")
public class Java {
@Id
@NotEmpty(message = "Nhập mã Khoá Học!")
@Column(name="JavaId")
private String javaId;
@Column(name="Image")
private String image;
@NotEmpty(message = "Ten Khoá Học!")
@Column(name="CourseDescription")
private String courseText;
@NotNull(message = "Nhập Giá Khoá Học!")
@Column(name="Price")
private Float price;
@NotEmpty(message = "Nhập THời gian Khoá Học!")
@Column(name="Time")
private String time;
@ManyToOne
@JoinColumn(name="StudentId",referencedColumnName = "StudentId")
private Student student;


public Java() {
	// TODO Auto-generated constructor stub
}


public Java(@NotEmpty(message = "Nhập mã Khoá Học!") String javaId, String image,
		@NotEmpty(message = "Ten Khoá Học!") String courseText, @NotNull(message = "Nhập Giá Khoá Học!") Float price,
		@NotEmpty(message = "Nhập THời gian Khoá Học!") String time, Student student) {
	super();
	this.javaId = javaId;
	this.image = image;
	this.courseText = courseText;
	this.price = price;
	this.time = time;
	this.student = student;
}


public String getJavaId() {
	return javaId;
}


public void setJavaId(String javaId) {
	this.javaId = javaId;
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


public Student getStudent() {
	return student;
}


public void setStudent(Student student) {
	this.student = student;
}







}
