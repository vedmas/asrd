package com.kropotov.asrd.entities;

import com.kropotov.asrd.dto.SystemUser;
import com.kropotov.asrd.entities.common.BaseEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "users")
public class User extends BaseEntity {

	@Column(name = "username")
	private String userName;

	@Column(name = "password")
	private String password;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "patronymic")
	private String patronymic;

	@Column(name = "email")
	private String email;

	@Column(name = "work_phone")
	private String workPhone;

	@Column(name = "mobile_phone")
	private String mobilePhone;

	@ManyToOne()
	@JoinColumn(name = "status_user_id")
	private StatusUser statusUser;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "users_roles",
	joinColumns = @JoinColumn(name = "user_id"),
	inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Collection<Role> roles;


	public User(String userName, String password, String firstName, String lastName, String patronymic, String email) {
		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.patronymic = patronymic;
		this.email = email;
	}

	public User(String userName, String password, String firstName, String lastName, String patronymic, String email,
                Collection<Role> roles) {
		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.patronymic = patronymic;
		this.email = email;
		this.roles = roles;
	}

	public User(SystemUser systemUser) {
		this.userName = systemUser.getUserName();
		this.password = systemUser.getPassword();
		this.firstName = systemUser.getFirstName();
		this.lastName = systemUser.getLastName();
		this.patronymic = systemUser.getPatronymic();
		this.email = systemUser.getEmail();
		this.roles = systemUser.getRoles();
		this.statusUser = systemUser.getStatusUser();
	}
}
