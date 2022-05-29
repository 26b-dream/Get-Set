function install_dir($file) {
    $name = (get-item $file).BaseName
    $type = (get-item $file).Directory.BaseName
    
    Return "C:\$type\$name"
}
