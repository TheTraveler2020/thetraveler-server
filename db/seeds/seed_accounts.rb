Account.delete_all
Account.create(
  name: 'kulubali',
  email: 'user@gmail.com',
  password: '123456',
  confirmed_at: Date.today,
  uid: 'email'
)
