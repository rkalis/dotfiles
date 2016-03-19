function pubkey
    cat ~/.ssh/id_rsa.pub | pbcopy; and echo '=> Public key copied to pasteboard.'
end
