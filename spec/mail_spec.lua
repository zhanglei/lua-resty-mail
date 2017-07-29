local mail = require "resty.mail"

describe("mail", function()
  it("example", function()
    local mailer = mail.new({
      host = "127.0.0.1",
      port = 1025,
    })
    local ok, err = mailer:send({
      from = "From <from@example.com>",
      reply_to = "Reply <reply@example.com>",
      to = { "To <to@example.com>" },
      cc = { "Cc <cc@example.com>" },
      bcc = { "Bcc <bcc@example.com>" },
      text = "Plain Text",
      html = "HTML Text",
    })
    assert.equal(nil, err)
    assert.equal(true, ok)
  end)
end)
