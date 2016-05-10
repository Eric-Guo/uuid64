require 'securerandom'
module SecureRandom
  def SecureRandom.uuid64
    [[SecureRandom.uuid.gsub(/-/, '')].pack('H*')].pack('m').gsub(/==/,'').gsub(/\n/,'')
  end
end