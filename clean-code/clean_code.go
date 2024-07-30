package main

import "fmt"

// Because we exported the type so it should be written in caplital letter 'User'.
type User struct {
	Email    string
	Password string
}

// to follow the Go naming conventions we should rename 'userRepo' to "UserRepo"
type UserRepo struct {
	DB []User
}

// added a return value and an error to indicate succes or failure and to avoid printing directly.
func (r *UserRepo) Register(u User) error {
	if u.Email == "" || u.Password == "" {
		return fmt.Errorf("register failed: missing emial or password")
	}
	r.DB = append(r.DB, u)
	return nil
}

// added a return value and an error to indicate authentication status and returning a speficif result.
func (r *UserRepo) Login(u User) (string, error) {
	if u.Email == "" || u.Password == "" {
		return "", fmt.Errorf("login failed: missing email or passwor")
	}
	for _, us := range r.DB {
		if u.Email == u.Email && u.Password == u.Password {
			return "auth token", nil
		}
	}
	//if authentication fails, return error in order to provide a clear indication of failure.
	return "", fmt.Errorf("login failed: invalid email or password")
}
