class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.user_type? 'Manager'
      can :manage, :all
    else
      can :read, :all
    end
  end
end
