# Exercise 5

class LaunchDiscussionWorkflow

  def initialize(discussion, host, participants_email_string)
    @discussion = discussion
    @host = host
    @participants_email_string = participants_email_string
  end

  def run
    return false unless valid?
    generate_participants
    ActiveRecord::Base.transaction do
      @discussion.save!
      create_discussion_roles
    end
    true
  end

  private def valid?
    @discussion.present? && @host.present?
  end

  def generate_participants
    return if @participants_email_string.blank?
    @participants = @participants_email_string.split.uniq.map do |email_address|
      User.create(email: email_address.downcase, password: Devise.friendly_token)
    end
  end

  def create_discussion_roles
    @participants.each do |participant|
      DiscussionRole.create(discussion: @discussion, user: participant)
    end
  end
end


discussion = Discussion.new(title: "fake")
host = User.find(42)
participants = "fake1@example.com\nfake2@example.com\nfake3@example.com"

workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
workflow.run