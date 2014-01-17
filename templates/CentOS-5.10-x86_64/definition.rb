Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '384',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'on',
  :virtualbox => {
    :vm_options => [
      "pae" => "on",
      "ioapic" => "on",
    ],
  },
  :os_type_id => 'RedHat_64',
  :iso_file => "CentOS-5.10-x86_64-bin-DVD-1of2.iso",
  :iso_src => "http://mirrors.kernel.org/centos/5.10/isos/x86_64/CentOS-5.10-x86_64-bin-DVD-1of2.iso",
  :iso_md5 => "715f7355074c00530cd6ee1d9f43cc3f",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [ 'linux text ks=http://%IP%:%PORT%/ks.cfg<Enter>' ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "ruby.sh",
    "chef.sh",
    "puppet.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})