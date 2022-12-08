class PasswordManager
  def initialize
    @map = {}
  end

  def add(services, password)
    special = password.include?('!') || password.include?('@') || password.include?('$') || password.include?('%') || password.include?('&')
    if password.length > 7 && special
        return @map[services] = password
    else
        return false
    end
  end

  def password_for(services)
    return @map[services]
  end

  def services
    return @map.keys
  end
end
