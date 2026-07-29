switch:
    nh os switch

boot:
    nh os boot

test:
    nh os test

update:
    nix flake update
    git add flake.lock
    git commit -m "global(flake.lock): update flake lock"
    git push

slow:
    nh os switch -j 1

install-system-yes-i-really-super-duper-absolutely-mean-it:
    read -r -n 1 -p "Are you super duper absolutely sure? [y/N]" confirm
    echo ""
    case "$confirm" in
        [Yy]* )
            echo "Installing..."
            disko-install --write-efi-boot-entries --flake .#frosties --disk main /dev/disk/by-id/ata-ST1000LM035-1RK172_WDEHTZNN
            ;;
        * )
            echo "Aborting."
            ;;
    esac
