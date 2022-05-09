
# Configuring gpg on yubiey

See [Yubico support](https://support.yubico.com/hc/en-us/articles/360016649139-YubiKey-5-2-3-Enhancements-to-OpenPGP-3-4A-Support

The best docs are by [Dr Duh](https://github.com/drduh/YubiKey-Guide#configure-smartcard)

``` bash

 # this will create an encryption subkey, so it's ok to delete the key
gpg --expert --full-gen-key
gpg --edit-key D6228262C615B22E
# select the key with (e) e.g
key 1
# then delete it
deletekey
save

```

to check

```
bash-3.2$ gpg -K
/var/folders/60/fvy38zbs5tl3lcdmkt3glnd00000gn/T/tmp.YS923nQm/pubring.kbx
-------------------------------------------------------------------------
sec   ed25519/0xD6228262C615B22E 2022-05-08 [SC]
      Key fingerprint = B931 57F1 62A6 A167 9EB4  F837 D622 8262 C615 B22E
uid                   [ultimate] Toby O'Sullivan (ECC Ultimate Key) <spangener@gmail.com>
```



