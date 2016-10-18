# Expected values
# return code : 1
# exception : SumaDownloadError
# suma directory : /sumatest/suma/error3/7100-02-02-1316
# suma metadata :
# suma preview : FAKE SUMA Preview
# suma download : FAKE SUMA Download Error 1
# nim define :

node.default['nim']['clients'] = { 'client1' => { 'oslevel' => '7100-02-01-1316' } }
node.default['nim']['lpp_sources'] = {}

aix_suma 'Error no more space 0500-004 (Download ERROR)' do
  oslevel   '7100-02-02-1316'
  location  '/sumatest/suma/error3'
  targets   'client1'
  action    :download
end
