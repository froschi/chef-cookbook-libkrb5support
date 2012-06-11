packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libkeyutils"

  packages |= %w/
    libkrb5support0
  /
when "precise"
  packages |= %w/
    libkrb5support0
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
