# Mail

```ruby
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    ssl: true,
    address: 'smtp.yandex.ru',
    port: 465,
    authentication: 'login',
    user_name: 'example@yandex.ru',
    password: 'pass'
  }
```


```ruby
def user_deadlines(email, events)
  @events = events
  mail(
    to: email,
    subject: 'Есть невыполненные дела, срок которых заканчивается сегодня'
  )
end
```

with locales:

```yaml
ru:
  emails:
    subjects:
      user_deadlines: Есть невыполненные дела, срок которых заканчивается сегодня

```

```ruby
def user_deadlines(email, events)
  @events = events
  mail(
    to: email,
    subject: I18n.t('emails.subjects.user_deadlines')
  )
end
```
