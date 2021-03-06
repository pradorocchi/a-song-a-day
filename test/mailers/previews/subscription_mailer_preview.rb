# http://a-song-a-day.dev/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview

  # http://a-song-a-day.dev/rails/mailers/subscription_mailer/created
  def created
    subscription = Subscription.first!
    SubscriptionMailer.created(subscription)
  end

  # http://a-song-a-day.dev/rails/mailers/subscription_mailer/destroyed
  def destroyed
    subscription = Subscription.first!
    SubscriptionMailer.destroyed(subscription)
  end

  # http://a-song-a-day.dev/rails/mailers/subscription_mailer/song
  def song
    song = Song.first!
    subscription = song.curator.subscriptions.first!
    date = Date.today.to_s(:long)
    day = Date::DAYNAMES[Date.today.wday]
    SubscriptionMailer.song(song, subscription, date, day)
  end

end
