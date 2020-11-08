Account.delete_all
Account.create(
  name: 'kulubali',
  email: 'user@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email'
)

Account.create(
  name: 'kulubali',
  email: 'guider@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email'
)

Account.create(
  name: 'kulubali',
  email: 'admin@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email'
)
