# install a package
package { 'puppet-lint':
    ensure   => '2.2.2',
    provider => 'gem',
}
