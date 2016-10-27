function driver-debug
  set --export --global VTEX_ACCOUNT $argv[1]
  set --export --global VTEX_WORKSPACE $argv[2]
  if test $VTEX_ENV = 'stable'
    set --export --global VTEX_RABBIT_MQ_HOST_SPPA 'amqp://render:render2016@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/sppa.0'
    set --export --global VTEX_RABBIT_MQ_HOST_VBASE 'amqp://render:render2016@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/vbase.1'
    set --export --global VTEX_RABBIT_MQ_HOST_COURIER 'amqp://courier:vtexcourier@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/courier'
  else
    set --export --global VTEX_RABBIT_MQ_HOST_SPPA 'amqp://render:render2016@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/sppa.0.beta'
    set --export --global VTEX_RABBIT_MQ_HOST_VBASE 'amqp://render:render2016@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/vbase.1.beta'
    set --export --global VTEX_RABBIT_MQ_HOST_COURIER 'amqp://courier:vtexcourier@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/courier-beta'
  end
  return 0
end
