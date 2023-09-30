require 'digest'
if Gem.win_platform?
    system("cls")
else
    system("clear")
end
puts "\033[90m                           888                      
                           888
                           888
 8888b.  88888b.   8888b.  888 888  888 88888888  .d88b.  888d888
    \"88b 888 \"88b     \"88b 888 888  888    d88P  d8P  Y8b 888P\"
.d888888 888  888 .d888888 888 888  888   d88P   88888888 888
888  888 888  888 888  888 888 Y88b 888  d88P    Y8b.     888
\"Y888888 888  888 \"Y888888 888  \"Y88888 88888888  \"Y8888  888 
                                    888
                               Y8b d88P
                                \"Y88P\"\n         \033[00;31mChannel Telegram : @Team_Exploit\n"

def hash_type(h)
  hash_lengths = {
    16 => ['MySQL-323', 'NTLM'],
    20 => ['RipeMD-160', 'Haval-160', 'Tiger-160'],
    24 => ['CRC-24'],
    28 => ['Snefru-128'],
    32 => ['MD5', 'MD4', 'Double MD5', 'LM', 'RIPEMD-128', 'Haval-128', 'Skein-256(128)', 'Skein-512(128)', 'SAM - (LM Hash', 'NT Hash)'],
    37 => ['base64'],
    40 => ['SHA-1', 'Double SHA-1', 'RIPEMD-160', 'Haval-160(4)', 'Tiger-160(4)', 'SHA-1(Hex)', 'marshal'],
    44 => ['SHA-384(Hex)'],
    48 => ['Haval-192', 'Skein-256(160)'],
    56 => ['SHA-224', 'SHA-3(Keccak)224'],
    64 => ['SHA-256', 'RIPEMD-256', 'SHA3-256', 'SipHash-2-4', 'Skein-512(256)', 'MGF1(SHA-256)', 'Keccak-256', 'BLAKE3-256', 'Whirlpool-512', 'DSA', 'ECDSA', 'Ed25519', 'GOST R 34.11-94', 'HAVAL-256', 'HMAC-MD5', 'HMAC-SHA1', 'HMAC-SHA256', 'HMAC-SHA512', 'MD2', 'MD6-224', 'MD6-256', 'MD6-384', 'MD6-512', 'RIPEMD-320', 'SipHash', 'SM3', 'Snefru-256', 'SRP', 'Tangle'],
    76 => ['SHA-384', 'SHA-3(Keccak)384'],
    80 => ['SHA-1(Django)', 'PBKDF2-SHA1', 'PBKDF2-HMAC-SHA1'],
    96 => ['SHA-384(Hex)', 'SHA-3(Keccak)512', 'SHA-384(Django)', 'PBKDF2-HMAC-SHA256'],
    100 => ['Skein-256(224)'],
    112 => ['SHA-512/224'],
    128 => ['SHA-256(Django)', 'SHA-512', 'Whirlpool', 'RIPEMD-320', 'Skein-512(384)', 'SHA-3(Keccak)256'],
    132 => ['Skein-1024(384)'],
    144 => ['SHA-1(MaNGOS)', 'SHA-1(MaNGOS2)', 'RIPEMD-160(HMAC)', 'SHA-1(PBKDF2)'],
    145 => ['SHA-1(MaNGOS2)'],
    160 => ['SHA-1(Wordpress)', 'SHA-512(Drupal)', 'Haval-192(5)', 'Tiger-192(5)', 'SHA-1(Base64)'],
    180 => ['SHA-512(LinkedIn)', 'Skein-1024(512)'],
    192 => ['RIPEMD-384', 'SHA-384(Django)', 'SHA4(sha3-384)'],
    200 => ['SHA-1(EC-CRYPT)'],
    224 => ['SHA-224', 'Skein-512(448)', 'Skein-1024(512)', 'SHA3-224', 'SHA3-224(Django)'],
    256 => ['SHA-256(Django)', 'SHA3-256(Django)', 'Skein-1024(256)', 'Skein-512(512)', 'SHA3-256', 'RIPEMD-256(AIX)', 'RIPEMD-256(HPUX)', 'RIPEMD-256(Linux)', 'RIPEMD-256(Solaris)', 'RIPEMD-256(Windows)', 'BLAKE2s-256', 'SHA-2(256)', 'SHAKE128', 'BLAKE3-256', 'base256'],
    280 => ['LM'],
    288 => ['Skein-1024(288)'],
    320 => ['RIPEMD-320(HPUX)', 'Skein-512(256)', 'SHAKE256'],
    384 => ['SHA-384', 'SHA3-384', 'Skein-1024(384)'],
    400 => ['Whirlpool(HMAC)'],
    452 => ['SHA-1(Delphi)'],
    512 => ['SHA-512', 'Whirlpool(DH)', 'Double SHA-512', 'RIPEMD-512', 'Skein-256(512)', 'Skein-512(1024)', 'Skein-1024(512)', 'SHA3-512', 'SipHash-4-8', 'BLAKE2b-512', 'SHA-2(512)', 'SHAKE256'],
    576 => ['Skein-1024(576)'],
    768 => ['SHA3-384(Django)'],
    800 => ['SHA-3(Keccak)384', 'SHA3-512(Drupal)'],
    1024 => ['Skein-1024(1024)'],
    1440 => ['SHA-384(base64)'],
    2048 => ['Skein-1024(2048)'],
  }

  hash_lengths.each do |key, value|
    if h.length == key
      return value.join("\n") + ' hash'
    elsif h.include?('=')
      return "\033[01;31m[\033[01;32m+\033[01;31m] \033[00;32mBase64 hash"
    end
  end

  return "\033[01;31m[-] \033[00;31m No hash detected !"
end

print "\033[01;31m[\033[01;32m?\033[01;31m] \033[00;32mEnter the hash: \033[00;32m"
h = gets.chomp
hash_type = hash_type(h)
puts "\033[01;31m[\033[01;32m+\033[01;31m] \033[00;32mThe hash type of \033[01;33m#{h} \033[01;32mis : #{hash_type}"
