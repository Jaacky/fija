# frozen_string_literal: true

class Version
  def self.version
    "v#{read_version}"
  end

  def self.read_version
    File.read "VERSION"
  rescue StandardError
    raise "VERSION file not found or unreadable."
  end
end
