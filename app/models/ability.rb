class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # Manage is all actions
    cannot :manage, :all

    # Abilities defined below other abilities overwrite
    can :read, :all
    can :create, User

    if user.role? :admin

      can :manage, :all

    elsif user.role? :member

      # Forum
      cannot :manage, Forum
      can :read, Forum

      # Topic
      can [:create, :read], Topic
      can :update, Topic do |t|
        t.user_id == user.id
      end
      cannot :destroy, Topic

      # Posts
      cannot :manage, Post
      can :read, Post
      can :create, Post
      can :manage, Post do |p|
        p.user_id == user.id
      end

      # Users
      cannot :manage, User
      can :read, User
      can :manage, User do |u|
        u.id == user.id
      end

    end

  end
end 