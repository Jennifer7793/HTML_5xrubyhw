class Backdoor
  def initialize(app, who = "no one")
    @app = app
    @who = who
  end

  def call(env)
    status, headers, body = @app.call(env)
    body << "br />hacked by #{@who}"

    [status, headers, body]
  end
end

use Backdoor, "5xruby"

run Proc.new { |env|
  [
    '200',
    {'Content-Type' => 'text/html'},
    ['hello rack']
  ]
}