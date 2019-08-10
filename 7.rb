#config.ru

require 'rack'
class MiPrimeraWebApp
def call(env)
  [200, {}, []]
end
end
run MiPrimeraWebApp.new
