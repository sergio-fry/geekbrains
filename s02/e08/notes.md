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

## i18n

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

## Attachements


```ruby
class NotifyMailer < ApplicationMailer
  def user_deadlines(user, events)
    @events = events
    attachments['filename.jpg'] = File.read('/path/to/original.jpg')
    mail(
      to: email_address_with_name(user.email, user.name),
      subject: I18n.t('emails.subjects.user_deadlines')
    )
  end
end

```


Inline

```ruby
class NotifyMailer < ApplicationMailer
  def user_deadlines(user, events)
    @events = events
    attachments.inline['filename.jpg'] = File.read('/path/to/original.jpg')
    mail(
      to: email_address_with_name(user.email, user.name),
      subject: I18n.t('emails.subjects.user_deadlines')
    )
  end
end
```

```erb
<%= image_tag attachments['filename.jpg'].url %>
```

## Preview

spec/mailers/previews/notify_mailer_preview.rb

```ruby
class NotifyMailerPreview < ActionMailer::Preview
  def user_deadlines
    user = User.first
    NotifyMailer.user_deadlines(user, user.events)
  end
end
```

http://localhost:3000/rails/mailers
 
