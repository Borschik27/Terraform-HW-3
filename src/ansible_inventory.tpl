webservers:
  hosts:
%{ for vm in web_vms ~}
    ${vm.name}:
      ansible_user: "${vm.user}"
      ansible_host: ${vm.external_ip}
      ansible_port: 22
      ansible_connection: ssh
      fqdn: "${vm.fqdn}"

%{~ endfor ~}
databases:
  hosts:
%{ for vm in db_vms ~}
    ${vm.name}:
      ansible_user: "${vm.user}"
      ansible_host: ${vm.external_ip}
      ansible_port: 22
      ansible_connection: ssh
      fqdn: "${vm.fqdn}"

%{~ endfor ~}
storage:
  hosts:
%{ for vm in storage_vms ~}
    ${vm.name}:
      ansible_user: "${vm.user}"
      ansible_host: ${vm.external_ip}
      ansible_port: 22
      ansible_connection: ssh
      fqdn: "${vm.fqdn}"

%{~ endfor ~}
