class SongPolicy < ApplicationPolicy

  def index?
    @user && @user.band == record.band
  end

  def create?
    @user
  end

  def show?
    @user && @user.band == record.band
  end

  def update?
    @user && @user.band == record.band
  end

  def destroy?
    @user && @user.band == record.band
  end

end
