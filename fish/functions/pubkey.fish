function pubkey
    cat ~/.ssh/id_ecdsa.pub | pbcopy; and echo '=> Public key copied to pasteboard.'
end
