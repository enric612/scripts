#!/usr/bin/env bash

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME=Tomorrow\ Night\ Eighties
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG=Tomorrow_Night_Eighties
[[ -z "$GCONFTOOL" ]] && GCONFTOOL=gconftool
[[ -z "$BASE_KEY" ]] && BASE_KEY=/apps/gnome-terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

gset() {
  local type="$1"; shift
  local key="$1"; shift
  local val="$1"; shift

  "$GCONFTOOL" --set --type "$type" "$PROFILE_KEY/$key" -- "$val"
}

# because gconftool doesn't have "append"
glist_append() {
  local type="$1"; shift
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$GCONFTOOL" --get "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "$val"
    } | head -c-1 | tr "\n" ,
  )"

  "$GCONFTOOL" --set --type list --list-type $type "$key" "[$entries]"
}

# append the Tomorrow profile to the profile list
glist_append string /apps/gnome-terminal/global/profile_list "$PROFILE_SLUG"

gset string visible_name "$PROFILE_NAME"
gset string palette "#000000000000:
                    #F2F277777A7A:
                    #9999CCCC9999:
                    #F9F991915757:
                    #66669999CCCC:
                    #CCCC9999CCCC:
                    #6666CCCCCCCC:
                    #515151515151:
                    #666666666666:
                    #FFFF33333434:
                    #9999CCCC9999:
                    #FFFFCCCC6666:
                    #66669999CCCC:
                    #B7B77777E0E0:
                    #5454CECED6D6:
                    #393939393939"
gset string background_color "#2d2d2d2d2d2d"
gset string foreground_color "#cccccccccccc"
gset string bold_color "#66669999CCCC"
gset bool   bold_color_same_as_fg "false"
gset bool   use_theme_colors "false"
gset bool   use_theme_background "false"
