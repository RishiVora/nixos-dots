# vim:ft=kitty

## name: Catppuccin
## author: Pocco81 (https://github.com/Pocco81)
## license: MIT
## upstream: https://raw.githubusercontent.com/catppuccin/kitty/main/catppuccin.conf
## blurb: Soothing pastel theme for the high-spirited!
{
    allow_remote_control = true;
    # General settings
    window_padding_width = 8;
    # font_size = 12;

    # The basic colors
    foreground              = "#E2E0EC";
    background              = "#0B0A10";
    selection_foreground    = "#D9E0EE";
    selection_background    = "#575268";

    # Transparent Background
    # background_opacity      = "0.95";
    background_opacity      = "1";

    # Cursor colors
    cursor                  = "#F5E0DC";
    cursor_text_color       = "#1E1E2E";

    # URL underline color when hovering with mouse
    url_color               = "#F5E0DC";

    # kitty window border colors
    active_border_color     = "#C9CBFF";
    inactive_border_color   = "#575268";
    bell_border_color       = "#FAE3B0";

    # OS Window titlebar colors
    wayland_titlebar_color = "system";
    macos_titlebar_color = "system";

    #: Tab bar colors
    active_tab_foreground   = "#F5C2E7";
    active_tab_background   = "#575268";
    inactive_tab_foreground = "#D9E0EE";
    inactive_tab_background = "#1E1E2E";
    tab_bar_background      = "#161320";

    # Colors for marks (marked text in the terminal)
    mark1_foreground = "#1E1E2E";
    mark1_background = "#96CDFB";
    mark2_foreground = "#1E1E2E";
    mark2_background = "#F5C2E7";
    mark3_foreground = "#1E1E2E";
    mark3_background = "#B5E8E0";

    #: The 16 terminal colors
    #: black
    color0 = "#2B273F";
    color8 = "#61588E";

    #: red
    color1 = "#F38BA8";
    color9 = "#F38BA8";

    #: green
    color2 = "#A6E3A1";
    color10 = "#A6E3A1";

    #: yellow
    color3 = "#F9E2AF";
    color11 = "#F9E2AF";

    #: blue
    color4 = "#D3E8FF";
    color12 = "#D3E8FF";

    #: magenta
    color5 = "#F1A7E2";
    color13 = "#F1A7E2";

    #: cyan
    color6 = "#94E2D5";
    color14 = "#94E2D5";

    #: white
    color7 = "#E2E0EC";
    color15 = "#E2E0EC";
}
