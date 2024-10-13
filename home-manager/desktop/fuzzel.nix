{
    pkgs,
    ...
}: {
    programs.fuzzel = {
        enable = true;

        settings = {
            main = {
                width = 40;
                vertical-pad = 10;
                inner-pad = 10;
                lines = 8;
                line-height = 30;
            };
        };
    };
}