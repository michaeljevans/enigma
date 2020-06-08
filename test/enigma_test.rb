require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_readable_attributes
    assert_equal '080620', @enigma.today
  end

  def test_it_can_encrypt_messages
    # Key and Date provided
    message   = 'hello world'
    encrypted = 'keder ohulw'
    expected  = {encryption: encrypted, key: '02715', date: '040895'}

    assert_equal expected, @enigma.encrypt(message, '02715', '040895')

    # Key provided, Date NOT provided
    message   = 'hello world'
    encrypted = 'lltosgdrvsl'
    expected  = {encryption: encrypted, key: '00357', date: '080620'}

    assert_equal expected, @enigma.encrypt(message, '00357')

    # NEITHER provided
    # message  = 'hello world'
    # expected = {encryption: 'nhyeucihxoq', key: '02674', date: '080620'}
    # @enigma.expects(:generate_key).returns('02674')
    #
    # assert_equal expected, @enigma.encrypt(message)
  end

  def test_it_can_decrypt_messages
    # Key and Date provided
    encrypted = 'keder ohulw'
    decrypted = 'hello world'
    expected  = {decryption: decrypted, key: '02715', date: '040895'}

    assert_equal expected, @enigma.decrypt(encrypted, '02715', '040895')

    # Key provided, Date NOT provided
    encrypted = 'htnwooyzr f'
    decrypted = 'hello world'
    expected  = {decryption: decrypted, key: '23838', date: '080620'}

    assert_equal expected, @enigma.decrypt(encrypted, '23838', '080620')
  end
end
