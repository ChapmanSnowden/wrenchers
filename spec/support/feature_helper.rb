def sign_in(user, password = nil)
	visit '/'
	fill_in 'Email', with: user.email
	fill_in 'Password', with: password || 'password'
	click_on 'Sign in'
end
