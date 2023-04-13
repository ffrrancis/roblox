-- idk why i got this

local request = (syn and syn.request) or (http and http.request) or http_request

local function getRequest(url)
    body = request({Url = url, Method = 'GET'}).Body
    decoded = game:GetService('HttpService'):JSONDecode(body)

    return decoded
end