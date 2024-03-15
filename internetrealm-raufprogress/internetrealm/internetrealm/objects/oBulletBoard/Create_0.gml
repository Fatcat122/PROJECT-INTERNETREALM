if current_width < global.border_width {
    current_width += ((global.border_width - current_width) / 2);
} else if current_width > global.border_width {
    current_width -= ((current_width - global.border_width) / 2);
}

if current_height < global.border_height {
    current_height += ((global.border_height - current_height) / 2);
} else if current_height > global.border_height {
    current_height -= ((current_height - global.border_height) / 2);
}