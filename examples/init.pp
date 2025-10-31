# Example usage of paw_ansible_role_docker

# Simple include with default parameters
include paw_ansible_role_docker

# Or with custom parameters:
# class { 'paw_ansible_role_docker':
#   docker_edition => 'ce',
#   docker_packages => ['docker-{{ docker_edition }}', 'docker-{{ docker_edition }}-cli', 'docker-{{ docker_edition }}-rootless-extras', 'containerd.io', 'docker-buildx-plugin'],
#   docker_packages_state => 'present',
#   docker_obsolete_packages => ['docker', 'docker.io', 'docker-engine', 'docker-doc', 'docker-compose', 'docker-compose-v2', 'podman-docker', 'containerd', 'runc'],
#   docker_service_manage => true,
#   docker_service_state => 'started',
#   docker_service_enabled => true,
#   docker_service_start_command => undef,
#   docker_restart_handler_state => 'restarted',
#   docker_install_compose_plugin => true,
#   docker_compose_package => 'docker-compose-plugin',
#   docker_compose_package_state => 'present',
#   docker_install_compose => false,
#   docker_compose_version => 'v2.32.1',
#   docker_compose_arch => '{{ ansible_facts.architecture }}',
#   docker_compose_url => 'https://github.com/docker/compose/releases/download/{{ docker_compose_version }}/docker-compose-linux-{{ docker_compose_arch }}',
#   docker_compose_path => '/usr/local/bin/docker-compose',
#   docker_add_repo => true,
#   docker_repo_url => 'https://download.docker.com/linux',
#   docker_apt_release_channel => 'stable',
#   docker_apt_ansible_distribution => '{{ \'ubuntu\' if ansible_facts.distribution in [\'Pop!_OS\', \'Linux Mint\'] else ansible_facts.distribution }}',
#   docker_apt_gpg_key => '{{ docker_repo_url }}/{{ docker_apt_ansible_distribution | lower }}/gpg',
#   docker_apt_filename => 'docker',
#   docker_yum_repo_url => '{{ docker_repo_url }}/{{ \'fedora\' if ansible_facts.distribution == \'Fedora\' else \'rhel\' if ansible_facts.distribution == \'RedHat\' else \'centos\' }}/docker-{{ docker_edition }}.repo',
#   docker_yum_repo_enable_nightly => '0',
#   docker_yum_repo_enable_test => '0',
#   docker_yum_gpg_key => '{{ docker_repo_url }}/{{ \'fedora\' if ansible_facts.distribution == \'Fedora\' else \'rhel\' if ansible_facts.distribution == \'RedHat\' else \'centos\' }}/gpg',
#   docker_users => [],
#   docker_daemon_options => {},
# }
