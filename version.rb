class Version
  def self.version
    "v#{self.read_version}"
  end

  def self.read_version
    begin
      File.read 'VERSION'
    rescue
      raise "VERSION file not found or unreadable."
    end
  end
end
