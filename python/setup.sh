#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*

info "Setting up Conda environments..."

find * -name "*.yml" | while read fn; do
    envname="${fn%.*}"
    substep_info "Creating $envname environment..."
    if conda env create -f $fn &>/dev/null; then
        substep_success "Created $envname environment."
    else
        substep_success "Environment already exists."
        substep_info "Updating $envname environment..."
        if conda env update -f $fn &>/dev/null; then
            substep_success "Updated $envname environment."
        else
            substep_error "Failed updating $envname environment."
        fi
    fi
done

success "Finished setting up Conda environments."
