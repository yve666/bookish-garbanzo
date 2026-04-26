-- vm 0
do
  local _r = (function(...)
return (function(...)
  local _env = {_dac97=6302,_d1cc3=51349,_d478=9726,_d9757=24003,_d65d4=58343}
  local _s5c00 = _env._d1cc3
  local _fn = function(...)
return (function(...)
  local _env = {_dcc44=17411,_dfb1f=55011,_d7408=38581,_d3c77=173,_dd5b9=61683}
  local _sf930 = _env._d7408
  local _fn = function(...)
return (function(...)
  local _env = {_d1f32=37609,_da311=34920,_d6cb3=17255,_d9e4e=60429}
  local _sf7d7 = _env._d6cb3
  local _fn = function(...)

local function _sdec_dbff(b)
  local _k = 37
  local _xor = function(a, bb)
    local r, p = 0, 1
    for _ = 1, 8 do
      local ab, cb = a % 2, bb % 2
      if ab ~= cb then r = r + p end
      a = (a - ab) / 2
      bb = (bb - cb) / 2
      p = p * 2
    end
    return r
  end
  local _0x2755 = {}
  for i = 1, #b do _0x2755[i] = string.char(_xor(b[i], _k)) end
  return table.concat(_0x2755)
end


local _u6e7b = table.concat
local _uaf49 = string.byte
local _u9b99 = string.char
local _u01f9 = string.sub
local _u3922 = rawget
local function _u65f7(_u439b, _ud85e)
  local _uaae0, _ufaad = 0, 1
  for _ = 1, 8 do
    local _u88e1, _u106c = _u439b % 2, _ud85e % 2
    if _u88e1 ~= _u106c then _uaae0 = _uaae0 + _ufaad end
    _u439b = (_u439b - _u88e1) / 2
    _ud85e = (_ud85e - _u106c) / 2
    _ufaad = _ufaad * 2
  end
  return _uaae0
end
local _u02f6 = 0
do
  -- debug.gethook is present in Lua 5.1 and Luau (debug lib). _0xc8fc hook means
  -- someone'_0x11df tracing us; corrupt the pad.
  local _u9dce = debug and debug.gethook
  if _u9dce then
    local ok, hk = pcall(_u9dce)
    if ok and hk ~= nil then _u02f6 = _u65f7(_u02f6, 204) end
  end
  -- Roblox environment check. In Roblox/Luau, `game` is a userdata living
  -- in the script'_0x11df environment chain (NOT in `_G`), so we use a bare
  -- global reference rather than `rawget(_G, "game")` which always returns
  -- nil under Roblox. Bare-global access goes through the env __index chain
  -- and finds `game` correctly. Any execution context that doesn'_0x2755 expose
  -- `game` (stock lua5.1, hostile sandbox with stripped env) silently
  -- corrupts the pad.
  if game == nil then
    _u02f6 = _u65f7(_u02f6, 171)
  end
  -- LuaJIT detector. Roblox is Luau, not LuaJIT. If the `jit` global exists
  -- and has a `.version` field, we're running under LuaJIT (likely in a
  -- hostile sandbox); corrupt the pad.
  if rawget and rawget(_G, _sdec_dbff({79,76,81})) ~= nil then
    _u02f6 = _u65f7(_u02f6, 90)
  end
end
local _u15f5 = {232,158,67,119,243,231,228,147,30,146,192,245,199,99,179,61}
local _u40b2 = {12,8,10,6,1,4,9,7,3,15,11,13,16,2,14,5}
local _u30d8 = {}
for _u8588 = 1, 16 do
  _u30d8[_u8588] = _u65f7(_u15f5[_u40b2[_u8588]], _u02f6)
end
local function _u919a(_0x11df)
  local out = {}
  local len = #_0x11df
  for _u8588 = 1, len do
    local _u3c47 = ((_u8588 - 1) % 16) + 1
    out[_u8588] = _u9b99(_u65f7(_uaf49(_0x11df, _u8588), _u30d8[_u3c47]))
  end
  return _u6e7b(out)
end

if ((function() return false end)()) then
    local _ = _G["Vector3"]
  end

local _0xaa4f = _sdec_dbff({21,20,23,22,17,16,19,18,29,28,100,103,102,97,96,99,98,109,108,111,110,105,104,107,106,117,116,119,118,113,112,115,114,125,124,127,68,71,70,65,64,67,66,77,76,79,78,73,72,75,74,85,84,87,86,81,80,83,82,93,92,95,4,6,1,0,3,13,12,15,14,8,30,25,24,27,26,101,123,122,69,94,89,88,91})
local _0xae73 = {}
for i = 1, 85 do _0xae73[string.byte(_0xaa4f, i)] = i - 1 end
local function _0x6eeb(_0x11df, origLen)
  local out = {}
  local outPos = 0
  local sLen = #_0x11df
  local padCount = (5 - (sLen % 5)) % 5
  local i = 1
  while i <= sLen do
    local v = 0
    local group = 0
    while group < 5 do
      local ch
      if i + group <= sLen then
        ch = _0xae73[string.byte(_0x11df, i + group)]
      else
        ch = 84
      end
      v = v * 85 + ch
      group = group + 1
    end
    i = i + 5
    local b0 = math.floor(v / 16777216) % 256
    local b1 = math.floor(v / 65536) % 256
    local b2 = math.floor(v / 256) % 256
    local b3 = v % 256
    out[outPos + 1] = b0
    out[outPos + 2] = b1
    out[outPos + 3] = b2
    out[outPos + 4] = b3
    outPos = outPos + 4
  end
  local finalLen = origLen
  local trimmed = {}
  for k = 1, finalLen do trimmed[k] = out[k] end
  return trimmed
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = _G["CFrame"]
    local _ = _G["CFrame"]
  end
local function _0xc6be(buf)
  local SYMBOLS = 257
  local EOF = 256
  local INITIAL_COUNT = 1
  local MAX_TOTAL = 16384
  local TOP = 65535
  local HALF = 32768
  local FIRST_QTR = 16384
  local THIRD_QTR = 49152
  local CODE_BITS = 16

  local counts = {}
  for i = 0, SYMBOLS - 1 do counts[i] = 1 end
  local total = SYMBOLS

  local bufLen = #buf
  local bitPos = 0
  local function readBit()
    local bytePos = math.floor(bitPos / 8) + 1
    local bitIdx = 7 - (bitPos - (bytePos - 1) * 8)
    bitPos = bitPos + 1
    if bytePos > bufLen then return 0 end
    local b = buf[bytePos]
    local mask = 1
    for _ = 1, bitIdx do mask = mask * 2 end
    return (math.floor(b / mask) % 2)
  end

  local value = 0
  for _ = 1, CODE_BITS do value = value * 2 + readBit() end
  local low = 0
  local high = TOP
  local out = {}
  local outN = 0

  while true do
    local range = high - low + 1
    local scaled = math.floor(((value - low + 1) * total - 1) / range)
    local acc = 0
    local sym = 0
    for i = 0, SYMBOLS - 1 do
      if acc + counts[i] > scaled then
        sym = i
        break
      end
      acc = acc + counts[i]
    end
    if sym == EOF then break end
    outN = outN + 1
    out[outN] = sym
    local cumLo = acc
    local cumHi = cumLo + counts[sym]
    high = low + math.floor((range * cumHi) / total) - 1
    low = low + math.floor((range * cumLo) / total)
    while true do
      if high < HALF then
        -- nothing
      elseif low >= HALF then
        value = value - HALF
        low = low - HALF
        high = high - HALF
      elseif low >= FIRST_QTR and high < THIRD_QTR then
        value = value - FIRST_QTR
        low = low - FIRST_QTR
        high = high - FIRST_QTR
      else
        break
      end
      low = low * 2
      high = high * 2 + 1
      value = value * 2 + readBit()
    end
    counts[sym] = counts[sym] + 1
    total = total + 1
    if total >= MAX_TOTAL then
      total = 0
      for i = 0, SYMBOLS - 1 do
        local c = math.floor(counts[i] / 2)
        if c < 1 then c = 1 end
        counts[i] = c
        total = total + c
      end
    end
  end
  return out
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = _G["Vector3"]
  end
local function _0x83ae(bytes, _0x23ba)
  local out = {}
  for i = 1, _0x23ba do
    local base = (i - 1) * 7
    local v = 0
    for j = 7, 1, -1 do
      v = v * 256 + bytes[base + j]
    end
    out[i] = v
  end
  return out
end



local _0x7e39 = 33554432
local function _0x99b3(a, b)
  local aLo = a % 65536
  local aHi = (a - aLo) / 65536
  local bLo = b % 65536
  local bHi = (b - bLo) / 65536
  local function xor16(_0x0162, y)
    local r, p = 0, 1
    for _ = 1, 16 do
      local xb, yb = _0x0162 % 2, y % 2
      if xb ~= yb then r = r + p end
      _0x0162 = (_0x0162 - xb) / 2
      y = (y - yb) / 2
      p = p * 2
    end
    return r
  end
  return xor16(aHi, bHi) * 65536 + xor16(aLo, bLo)
end

-- _0x1cf6: stateful (lazy) bytecode decode.
--
-- `_0x270a` no longer materializes a plaintext instruction array. It
-- returns a "_0xd20f" holding (a) the layer-1-encrypted integer array, (b) the
-- initial feedback-chain state seeded by the per-proto checksum and the
-- script-env fingerprint, and (c) the per-build salt constants. The outer
-- _0xd20f is what `_0xec70.insns` becomes. Each _0x62ea() call unboxes these
-- fields into its own local state and advances the decryption lazily at
-- fetch time: instruction `i` is only peeled from the feedback chain
-- when the dispatch loop actually reads it. Control flow that never
-- reaches an instruction (dead code, branches not taken) leaves those
-- cells in their encrypted form. An analyst who dumps the _0xd20f'_0x11df data
-- field outside the VM gets layer-1-encrypted integers with no way to
-- recover the feedback state without re-running the chain in order.
local function _0x270a(enc, checksum, seed_a, seed_b, salt_a, salt_b, envConst)
  local env = ((game ~= nil) and 1 or 0)
  local state_a = _0x99b3(seed_a, checksum % _0x7e39)
  local state_b = _0x99b3(seed_b, (env * envConst + math.floor(checksum / _0x7e39)) % _0x7e39)
  -- numeric indices avoid any chance of the rename pass mangling a
  -- field-key identifier that happens to collide with a VM local name.
  -- Layout: [1]=data, [2]=_0x23ba, [3]=state_a, [4]=state_b, [5]=salt_a,
  --        [6]=salt_b, [7]=decLvl.  decLvl starts at 0 and only ever
  --        advances — so an inner proto that is executed multiple times
  --        (e.g. a closure called in a loop) reuses the same already-
  --        decrypted instructions on later calls instead of double-
  --        applying layer 1 to the in-place mutated array.
  return { enc, #enc, state_a, state_b, salt_a, salt_b, 0 }
end
local _0x5daf, _0x41f2, _0xab37, _0xea2e = 4442418, 7750030, 805144, 22134501

if ((function() return false end)()) then
    local _ = _G["workspace"]
  end
-- larpfuscator runtime (plain)
local _0xb772 = math.floor
local _0xa47d = select
local _0xc659 = type
local _0x1f7e = setmetatable
local _0x5bb8 = getmetatable
local _0xe089 = table.unpack or unpack
local _0x94ce = error
local _0x6648 = {}
do local _v051a9c = unpack; if _v051a9c ~= nil then _0x6648.unpack = _v051a9c end end
do local _v49a9e2 = MessagingService; if _v49a9e2 ~= nil then _0x6648.MessagingService = _v49a9e2 end end
do local _vfa5ac5 = DateTime; if _vfa5ac5 ~= nil then _0x6648.DateTime = _vfa5ac5 end end
do local _v8000bf = ipairs; _0x6648[_v8000bf ~= nil and _sdec_dbff({76,85,68,76,87,86}) or false] = _v8000bf end
do local _v4128f2 = wait; if _v4128f2 ~= nil then _0x6648[_sdec_dbff({82,68,76,81})] = _v4128f2 end end
do local _ve3ca77 = NumberRange; if _ve3ca77 ~= nil then _0x6648.NumberRange = _ve3ca77 end end
do local _vaaf493 = delay; if _vaaf493 ~= nil then _0x6648[_sdec_dbff({65,64,73,68,92})] = _vaaf493 end end
do local _vb6b8b2 = bit32; _0x6648[_vb6b8b2 ~= nil and _sdec_dbff({71,76,81,22,23}) or false] = _vb6b8b2 end
do local _v68f1da = OverlapParams; _0x6648[_v68f1da ~= nil and _sdec_dbff({106,83,64,87,73,68,85,117,68,87,68,72,86}) or false] = _v68f1da end
do local _v7ff4ca = rawlen; if _v7ff4ca ~= nil then _0x6648.rawlen = _v7ff4ca end end
do local _vf2b704 = Instance; if _vf2b704 ~= nil then _0x6648[_sdec_dbff({108,75,86,81,68,75,70,64})] = _vf2b704 end end
do local _vd8583a = Region3; _0x6648[_vd8583a ~= nil and _sdec_dbff({119,64,66,76,74,75,22}) or false] = _vd8583a end
do local _vf50b6f = MarketplaceService; if _vf50b6f ~= nil then _0x6648.MarketplaceService = _vf50b6f end end
do local _v1642ba = shared; if _v1642ba ~= nil then _0x6648.shared = _v1642ba end end
do local _vf4c4e6 = Random; if _vf4c4e6 ~= nil then _0x6648.Random = _vf4c4e6 end end
do local _vbd656b = Lighting; if _vbd656b ~= nil then _0x6648.Lighting = _vbd656b end end
do local _va3561b = BadgeService; if _va3561b ~= nil then _0x6648[_sdec_dbff({103,68,65,66,64,118,64,87,83,76,70,64})] = _va3561b end end
do local _v956bd4 = NumberSequence; if _v956bd4 ~= nil then _0x6648.NumberSequence = _v956bd4 end end
do local _v64fbc5 = setmetatable; _0x6648[_v64fbc5 ~= nil and _sdec_dbff({86,64,81,72,64,81,68,81,68,71,73,64}) or false] = _v64fbc5 end
do local _ve12ca3 = spawn; if _ve12ca3 ~= nil then _0x6648[_sdec_dbff({86,85,68,82,75})] = _ve12ca3 end end
do local _v66196b = Ray; _0x6648[_v66196b ~= nil and _sdec_dbff({119,68,92}) or false] = _v66196b end
do local _v7616a3 = Teams; _0x6648[_v7616a3 ~= nil and _sdec_dbff({113,64,68,72,86}) or false] = _v7616a3 end
do local _vf6a7b2 = ContentProvider; if _vf6a7b2 ~= nil then _0x6648[_sdec_dbff({102,74,75,81,64,75,81,117,87,74,83,76,65,64,87})] = _vf6a7b2 end end
do local _ve2d2b3 = collectgarbage; if _ve2d2b3 ~= nil then _0x6648[_sdec_dbff({70,74,73,73,64,70,81,66,68,87,71,68,66,64})] = _ve2d2b3 end end
do local _v5c64e2 = RaycastParams; _0x6648[_v5c64e2 ~= nil and _sdec_dbff({119,68,92,70,68,86,81,117,68,87,68,72,86}) or false] = _v5c64e2 end
do local _v0d1321 = table; if _v0d1321 ~= nil then _0x6648.table = _v0d1321 end end
do local _vef1181 = rawset; if _vef1181 ~= nil then _0x6648[_sdec_dbff({87,68,82,86,64,81})] = _vef1181 end end
do local _vcff7ac = RunService; _0x6648[_vcff7ac ~= nil and _sdec_dbff({119,80,75,118,64,87,83,76,70,64}) or false] = _vcff7ac end
do local _vde87f2 = BrickColor; _0x6648[_vde87f2 ~= nil and _sdec_dbff({103,87,76,70,78,102,74,73,74,87}) or false] = _vde87f2 end
do local _v41f950 = Color3; if _v41f950 ~= nil then _0x6648.Color3 = _v41f950 end end
do local _vfc2ae5 = TweenService; if _vfc2ae5 ~= nil then _0x6648[_sdec_dbff({113,82,64,64,75,118,64,87,83,76,70,64})] = _vfc2ae5 end end
do local _v5e115b = game; if _v5e115b ~= nil then _0x6648[_sdec_dbff({66,68,72,64})] = _v5e115b end end
do local _v9d81f6 = pairs; if _v9d81f6 ~= nil then _0x6648.pairs = _v9d81f6 end end
do local _v2bedf4 = rawget; if _v2bedf4 ~= nil then _0x6648.rawget = _v2bedf4 end end
do local _va908e9 = NumberSequenceKeypoint; if _va908e9 ~= nil then _0x6648[_sdec_dbff({107,80,72,71,64,87,118,64,84,80,64,75,70,64,110,64,92,85,74,76,75,81})] = _va908e9 end end
do local _v309638 = UDim; _0x6648[_v309638 ~= nil and _sdec_dbff({112,97,76,72}) or false] = _v309638 end
do local _veb6b86 = PhysicalProperties; _0x6648[_veb6b86 ~= nil and _sdec_dbff({117,77,92,86,76,70,68,73,117,87,74,85,64,87,81,76,64,86}) or false] = _veb6b86 end
do local _vf34b21 = print; if _vf34b21 ~= nil then _0x6648[_sdec_dbff({85,87,76,75,81})] = _vf34b21 end end
do local _v3fe747 = Rect; if _v3fe747 ~= nil then _0x6648[_sdec_dbff({119,64,70,81})] = _v3fe747 end end
do local _va9d5d5 = tonumber; _0x6648[_va9d5d5 ~= nil and _sdec_dbff({81,74,75,80,72,71,64,87}) or false] = _va9d5d5 end
do local _v1bea57 = ColorSequence; _0x6648[_v1bea57 ~= nil and _sdec_dbff({102,74,73,74,87,118,64,84,80,64,75,70,64}) or false] = _v1bea57 end
do local _v40a589 = string; if _v40a589 ~= nil then _0x6648.string = _v40a589 end end
do local _ve126b5 = TweenInfo; if _ve126b5 ~= nil then _0x6648.TweenInfo = _ve126b5 end end
do local _v5f48db = io; if _v5f48db ~= nil then _0x6648.io = _v5f48db end end
do local _v440be7 = math; if _v440be7 ~= nil then _0x6648.math = _v440be7 end end
do local _vc91788 = Vector3; _0x6648[_vc91788 ~= nil and _sdec_dbff({115,64,70,81,74,87,22}) or false] = _vc91788 end
do local _v461598 = script; if _v461598 ~= nil then _0x6648.script = _v461598 end end
do local _v55344c = ColorSequenceKeypoint; if _v55344c ~= nil then _0x6648[_sdec_dbff({102,74,73,74,87,118,64,84,80,64,75,70,64,110,64,92,85,74,76,75,81})] = _v55344c end end
do local _v03750a = warn; if _v03750a ~= nil then _0x6648[_sdec_dbff({82,68,87,75})] = _v03750a end end
do local _vd59288 = tick; if _vd59288 ~= nil then _0x6648[_sdec_dbff({81,76,70,78})] = _vd59288 end end
do local _v2b4563 = assert; if _v2b4563 ~= nil then _0x6648.assert = _v2b4563 end end
do local _v77823c = xpcall; _0x6648[_v77823c ~= nil and _sdec_dbff({93,85,70,68,73,73}) or false] = _v77823c end
do local _ve243b3 = Faces; _0x6648[_ve243b3 ~= nil and _sdec_dbff({99,68,70,64,86}) or false] = _ve243b3 end
do local _v9c7bdb = Vector2; _0x6648[_v9c7bdb ~= nil and _sdec_dbff({115,64,70,81,74,87,23}) or false] = _v9c7bdb end
do local _vef35c3 = UDim2; if _vef35c3 ~= nil then _0x6648.UDim2 = _vef35c3 end end
do local _vd85140 = pcall; if _vd85140 ~= nil then _0x6648.pcall = _vd85140 end end
do local _v0f4444 = rawequal; _0x6648[_v0f4444 ~= nil and _sdec_dbff({87,68,82,64,84,80,68,73}) or false] = _v0f4444 end
do local _v956c67 = Enum; _0x6648[_v956c67 ~= nil and _sdec_dbff({96,75,80,72}) or false] = _v956c67 end
do local _v09723e = debug; if _v09723e ~= nil then _0x6648.debug = _v09723e end end
do local _v1c2fd5 = workspace; if _v1c2fd5 ~= nil then _0x6648.workspace = _v1c2fd5 end end
do local _v6b9d1e = tostring; if _v6b9d1e ~= nil then _0x6648[_sdec_dbff({81,74,86,81,87,76,75,66})] = _v6b9d1e end end
do local _v5d008d = utf8; if _v5d008d ~= nil then _0x6648[_sdec_dbff({80,81,67,29})] = _v5d008d end end
do local _v88752a = select; if _v88752a ~= nil then _0x6648[_sdec_dbff({86,64,73,64,70,81})] = _v88752a end end
do local _v76c9f8 = task; if _v76c9f8 ~= nil then _0x6648.task = _v76c9f8 end end
do local _vd83cfa = CFrame; _0x6648[_vd83cfa ~= nil and _sdec_dbff({102,99,87,68,72,64}) or false] = _vd83cfa end
do local _vd55c15 = Axes; if _vd55c15 ~= nil then _0x6648.Axes = _vd55c15 end end
do local _v776d50 = type; if _v776d50 ~= nil then _0x6648.type = _v776d50 end end
do local _v22e7b4 = ServerScriptService; if _v22e7b4 ~= nil then _0x6648.ServerScriptService = _v22e7b4 end end
do local _v76100d = getmetatable; if _v76100d ~= nil then _0x6648.getmetatable = _v76100d end end
do local _v6a9afa = StarterGui; _0x6648[_v6a9afa ~= nil and _sdec_dbff({118,81,68,87,81,64,87,98,80,76}) or false] = _v6a9afa end
do local _ve4b9d5 = coroutine; _0x6648[_ve4b9d5 ~= nil and _sdec_dbff({70,74,87,74,80,81,76,75,64}) or false] = _ve4b9d5 end
do local _vd84389 = CollectionService; if _vd84389 ~= nil then _0x6648[_sdec_dbff({102,74,73,73,64,70,81,76,74,75,118,64,87,83,76,70,64})] = _vd84389 end end
do local _v40e9fe = ReplicatedStorage; _0x6648[_v40e9fe ~= nil and _sdec_dbff({119,64,85,73,76,70,68,81,64,65,118,81,74,87,68,66,64}) or false] = _v40e9fe end
do local _vba6495 = typeof; _0x6648[_vba6495 ~= nil and _sdec_dbff({81,92,85,64,74,67}) or false] = _vba6495 end
do local _v059534 = time; _0x6648[_v059534 ~= nil and _sdec_dbff({81,76,72,64}) or false] = _v059534 end
do local _v237683 = TeleportService; if _v237683 ~= nil then _0x6648.TeleportService = _v237683 end end
do local _vffeb58 = os; if _vffeb58 ~= nil then _0x6648.os = _vffeb58 end end
do local _vc6299e = error; if _vc6299e ~= nil then _0x6648.error = _vc6299e end end
do local _va06659 = next; if _va06659 ~= nil then _0x6648[_sdec_dbff({75,64,93,81})] = _va06659 end end
_0x6648[false] = nil
local _0xcce1
do local _ok, _0x159f = pcall(getfenv, 1); if _ok and type(_0x159f) == _sdec_dbff({81,68,71,73,64}) then _0xcce1 = _0x159f else _0xcce1 = _G end end
local _0xd206 = {}
local _0x8515 = {}
local _0xd552 = setmetatable({}, {
  __index = function(_, k)
    local w = _0xd206[k]
    if w == _0x8515 then return nil end
    if w ~= nil then return w end
    local _0x11df = _0x6648[k]
    if _0x11df ~= nil then return _0x11df end
    return _0xcce1[k]
  end,
  __newindex = function(_, k, v)
    if v == nil then _0xd206[k] = _0x8515 else _0xd206[k] = v end
  end,
})

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = _G["CFrame"]
    local _ = _G["Vector3"]
  end
local _0xcd84 = 4096
local _0xcc58 = 16383
local _0x1e8d = 16384
local _0x160f = 268435456
local _0x5adb = 4398046511104
local _0x4746 = 8192


local _0x62ea

local function _0x01e2(_0x1ab3, _0xd100, _0x0162)
  if _0x0162 >= _0x4746 then return _0xd100[_0x0162 - _0x4746 + 1] end
  return _0x1ab3[_0x0162]
end

local function _0x2189(_0xe95a, _0x17a0)
  return function(...)
    local _0x23ba = _0xa47d(_sdec_dbff({6}), ...)
    return _0x62ea(_0xe95a, _0x17a0, { ... }, _0x23ba)
  end
end

_0x62ea = function(_0xec70, _0x31a4, _0x47b1, _0xff84)
  local _0x836b = _0xec70.insns
  local _0x5bb4 = _0x836b[1]
  local _0x0672 = _0xec70.consts
  local _0xacaf = _0xec70.protos
  local _0x2c3e = _0xec70.maxstack or 64
  local _0x1ab3 = {}
  for i = 0, _0x2c3e + 16 do _0x1ab3[i] = nil end
  _0xff84 = _0xff84 or 0
  local _0xad76 = _0xec70.numparams
  for i = 1, _0xad76 do _0x1ab3[i - 1] = _0x47b1[i] end
  local _0x0a2e = nil
  local _0x4815 = 0
  if _0xec70.isvararg then
    _0x0a2e = {}
    _0x4815 = _0xff84 - _0xad76
    if _0x4815 < 0 then _0x4815 = 0 end
    for i = 1, _0x4815 do _0x0a2e[i] = _0x47b1[_0xad76 + i] end
  end
  local _0x0d11 = 1
  local _0x2de5 = _0xad76
  local _0xd5fe = _0x836b[2]
  while _0x0d11 <= _0xd5fe do
    while _0x836b[7] < _0x0d11 do
      local _0x565d = _0x836b[7] + 1
      _0x836b[7] = _0x565d
      local _0x159f = _0x5bb4[_0x565d]
      local _0x46a5 = _0x159f % _0x7e39
      local _0xcdbc = (_0x159f - _0x46a5) / _0x7e39
      local _0xe956 = _0x99b3(_0x836b[3], (_0x565d * _0x836b[5]) % _0x7e39)
      local _0xaa56 = _0x99b3(_0x836b[4], (_0x565d * _0x836b[6]) % _0x7e39)
      local _0x7256 = _0x99b3(_0x46a5, _0xe956)
      local _0x28a0 = _0x99b3(_0xcdbc, _0xaa56)
      _0x5bb4[_0x565d] = _0x7256 + _0x28a0 * _0x7e39
      _0x836b[3] = (_0x99b3(_0x836b[3], _0x7256) + _0x836b[4]) % _0x7e39
      _0x836b[4] = (_0x99b3(_0x836b[4], _0x28a0) + _0x836b[3]) % _0x7e39
    end
    local _0xbef5 = _0x5bb4[_0x0d11]
    local _0xd63b = _0xbef5 % _0x7e39
    local _0x8c86 = (_0xbef5 - _0xd63b) / _0x7e39
    _0xd63b = _0x99b3(_0xd63b, (_0x0d11 * _0x5daf + _0x41f2) % _0x7e39)
    _0x8c86 = _0x99b3(_0x8c86, (_0x0d11 * _0xab37 + _0xea2e) % _0x7e39)
    local _0x3396 = _0xd63b + _0x8c86 * _0x7e39
    local _0xc8fc = (_0x3396 % _0x1e8d) - _0xcd84
    local _0x1cf6 = (_0xb772(_0x3396 / _0x1e8d) % _0x1e8d) - _0xcd84
    local _0x0aa2 = (_0xb772(_0x3396 / _0x160f) % _0x1e8d) - _0xcd84
    local _0xbb7b = _0xb772(_0x3396 / _0x5adb)
    _0x0d11 = _0x0d11 + 1
local _0xd526 = _0xbb7b % 6
if _0xd526 == 1 then
  if _0xbb7b == 1 then
    local _0x9997 = (_0xc8fc * 29 + 34)
    do local _hc1fe0 = _0x1ab3; local _hd87f8 = _0x01e2; local _h8f967 = _0xc8fc + 2
_hc1fe0[_0xc8fc] = _hc1fe0[_0xc8fc] - _hc1fe0[_0xc8fc + 2]; _0x0d11 = _0x0d11 + _0x1cf6
end
  elseif _0xbb7b == 55 then
    local _0x1d69 = (_0xc8fc * 9 + 49)
    do local _hdfba3 = _0x0672
_0x1ab3[_0xc8fc] = _0x01e2(_0x1ab3, _hdfba3, _0x1cf6) + _0x01e2(_0x1ab3, _hdfba3, _0x0aa2)
end
  elseif _0xbb7b == 61 then
    local _0x611a = (_0xc8fc * 5 + 15)
    do local _hc2250 = _0x01e2
do
      local _0x2755 = _0x1ab3[_0xc8fc]
      local _0x23ba = (_0x1cf6 == 0) and (_0x2de5 - _0xc8fc - 1) or _0x1cf6
      local offset = (_0x0aa2 - 1) * 50
      for i = 1, _0x23ba do _0x2755[offset + i] = _0x1ab3[_0xc8fc + i] end
    end
end
  elseif _0xbb7b == 85 then
    local _0x0c67 = #_0x5bb4
    do local _he27dc = _0x1ab3; local _hfa271 = _0x0672
_he27dc[_0xc8fc] = _0x01e2(_he27dc, _hfa271, _0x1cf6) * _0x01e2(_he27dc, _hfa271, _0x0aa2)
end
  elseif _0xbb7b == 37 then
    local _0xf93d = #_0x5bb4
    do local _h91b38 = _0x01e2
do
      local _0x33a1 = _0x1ab3[_0xc8fc]
      local _0x3d86
      if _0x1cf6 == 0 then _0x3d86 = _0x2de5 - _0xc8fc - 1 else _0x3d86 = _0x1cf6 - 1 end
      local _0xcb96 = {}
      for i = 1, _0x3d86 do _0xcb96[i] = _0x1ab3[_0xc8fc + i] end
      local _0xd551 = { _0x33a1(_0xe089(_0xcb96, 1, _0x3d86)) }
      local _0x333b = #_0xd551
      if _0x0aa2 == 0 then
        for i = 1, _0x333b do _0x1ab3[_0xc8fc + i - 1] = _0xd551[i] end
        for i = _0x333b + 1, _0x333b + 4 do _0x1ab3[_0xc8fc + i - 1] = nil end
        _0x2de5 = _0xc8fc + _0x333b
      elseif _0x0aa2 == 1 then
        -- drop all
      else
        local _0xfa14 = _0x0aa2 - 1
        for i = 1, _0xfa14 do _0x1ab3[_0xc8fc + i - 1] = _0xd551[i] end
        for i = _0x333b + 1, _0xfa14 do _0x1ab3[_0xc8fc + i - 1] = nil end
      end
    end
end
  elseif _0xbb7b == 103 then
    local _0x0577 = _0x1ab3[_0xc8fc]
    do local _hb3686 = _0xc8fc + 26
do local _0x11df = _0x1ab3[_0x1cf6]; for i = _0x1cf6 + 1, _0x0aa2 do _0x11df = _0x11df .. _0x1ab3[i] end; _0x1ab3[_0xc8fc] = _0x11df end
end
  elseif _0xbb7b == 43 then
    local _0xcd6e = (_0xc8fc * 19 + 27)
    do local _hfed58 = _0x1ab3; local _hac547 = _0x0672; local _h2c125 = (_0x0d11 + _0x1cf6) % 25
_hfed58[_0xc8fc] = _hfed58[_0x1cf6].v
end
  elseif _0xbb7b == 73 then
    do local _h60cd6 = _0x1ab3; local _h0f8bb = _0x0672
_h60cd6[_0xc8fc] = _h60cd6[_0x1cf6] - _h0f8bb[_0x0aa2 + 1]
end
  else _0x94ce(_sdec_dbff({71,68,65,5,74,85,70,74,65,64,5}) .. tostring(_0xbb7b) .. _sdec_dbff({5,68,81,5,85,70,5}) .. tostring(_0x0d11 - 1)) end
elseif _0xd526 == 5 then
  if _0xbb7b == 71 then
    local _0xc5a8 = _0x1ab3[_0xc8fc]
    do local _h0c2b5 = _0x0672
_0x1ab3[_0xc8fc][_0x01e2(_0x1ab3, _h0c2b5, _0x1cf6)] = _0x01e2(_0x1ab3, _h0c2b5, _0x0aa2)
end
  elseif _0xbb7b == 125 then
    local _0x7daa = _0x0d11 + 80; _0x7daa = _0x7daa - _0x7daa
    do local _h0f4a6 = _0x1ab3; local _h2a1e1 = _0x0672; local _h75067 = _h0f4a6[_0xc8fc]
_h0f4a6[_0xc8fc] = _0x01e2(_h0f4a6, _h2a1e1, _0x1cf6) % _0x01e2(_h0f4a6, _h2a1e1, _0x0aa2)
end
  elseif _0xbb7b == 83 then
    local _0xc288 = #_0x5bb4
    do local _h2f240 = _0x1ab3
_h2f240[_0xc8fc] = _0x01e2(_h2f240, _0x0672, _0x1cf6) ^ _0x01e2(_h2f240, _0x0672, _0x0aa2)
end
  elseif _0xbb7b == 35 then
    local _0x971b = _0x0d11 + 98; _0x971b = _0x971b - _0x971b
    do local _hd0017 = _0x1ab3; local _h7746f = _0x01e2
do local _0x11df = _hd0017[_0xc8fc]; for i = _0x1cf6, _0x0aa2 do _0x11df = _0x11df .. tostring(_hd0017[i]) end; _hd0017[_0xc8fc] = _0x11df end
end
  elseif _0xbb7b == 119 then
    local _0x7ed5 = (_0xc8fc * 25 + 1)
    do local _h97520 = _0x1ab3; local _h14d0f = _0x01e2
_h97520[_0xc8fc] = _h14d0f(_h97520, _0x0672, _0x1cf6) / _h14d0f(_h97520, _0x0672, _0x0aa2)
end
  elseif _0xbb7b == 95 then
    do local _h6c55e = _0x1ab3
for i = _0xc8fc, _0x1cf6 do _h6c55e[i] = nil end
end
  elseif _0xbb7b == 11 then
    do local _h9527a = _0x0672
-- no-_0xbb7b under our _0xd20f model
end
  elseif _0xbb7b == 89 then
    local _0xceb1 = _0x1ab3[_0xc8fc]
    do local _h727a5 = _0x0672; local _h42e74 = (_0x0d11 + _0x1cf6) % 32
_0xd552[_h727a5[_0x1cf6 + 1]] = _0x1ab3[_0xc8fc]
end
  else _0x94ce(_sdec_dbff({71,68,65,5,74,85,70,74,65,64,5}) .. tostring(_0xbb7b) .. _sdec_dbff({5,68,81,5,85,70,5}) .. tostring(_0x0d11 - 1)) end
elseif _0xd526 == 3 then
  if _0xbb7b == 45 then
    local _0xc219 = (_0xc8fc * 41 + 42)
    do local _h2e7d2 = _0x1ab3; local _h9da67 = _0x0672; local _hb679b = _0xc8fc + 31
_h2e7d2[_0xc8fc] = _h2e7d2[_0x1cf6][_0x01e2(_h2e7d2, _h9da67, _0x0aa2)]
end
  elseif _0xbb7b == 87 then
    local _0x328c = _0x0d11 + 23; _0x328c = _0x328c - _0x328c
    do local _h591a8 = _0x1ab3
_h591a8[_0xc8fc] = _0x01e2(_h591a8, _0x0672, _0x1cf6) - _0x01e2(_h591a8, _0x0672, _0x0aa2)
end
  elseif _0xbb7b == 63 then
    do local _h44dd1 = _0x1ab3; local _h831b4 = _0x01e2; local _h421e8 = (_0x0d11 + _0x1cf6) % 30
_h44dd1[_0xc8fc] = _0xd552[_0x0672[_0x1cf6 + 1]]
end
  elseif _0xbb7b == 15 then
    local _0x3f5d = (_0xc8fc * 2 + 37)
    do local _hd3b07 = _0x1ab3; local _h65557 = _0x0672
do local _0xcb34 = (_0x01e2(_hd3b07, _h65557, _0x1cf6) < _0x01e2(_hd3b07, _h65557, _0x0aa2)); if not (_0xcb34 == (_0xc8fc ~= 0)) then _0x0d11 = _0x0d11 + 1 end end
end
  elseif _0xbb7b == 39 then
    local _0x5a95 = _0x1ab3[_0xc8fc]
    do local _h383d0 = _0x1ab3; local _h1e4b2 = (_0x0d11 + _0x1cf6) % 8
_h383d0[_0xc8fc] = _0x31a4[_0x1cf6 + 1].v
end
  elseif _0xbb7b == 27 then
    local _0x965f = _0x1ab3[_0xc8fc]
    do local _ha4fff = _0x1ab3; local _h7d41e = _0x0672
do
      local _0xe95a = _0xacaf[_0x1cf6 + 1]
      local _0x17a0 = {}
      for i = 1, #_0xe95a.upvs do
        while _0x836b[7] < _0x0d11 do
      local _0x565d = _0x836b[7] + 1
      _0x836b[7] = _0x565d
      local _0x159f = _0x5bb4[_0x565d]
      local _0x46a5 = _0x159f % _0x7e39
      local _0xcdbc = (_0x159f - _0x46a5) / _0x7e39
      local _0xe956 = _0x99b3(_0x836b[3], (_0x565d * _0x836b[5]) % _0x7e39)
      local _0xaa56 = _0x99b3(_0x836b[4], (_0x565d * _0x836b[6]) % _0x7e39)
      local _0x7256 = _0x99b3(_0x46a5, _0xe956)
      local _0x28a0 = _0x99b3(_0xcdbc, _0xaa56)
      _0x5bb4[_0x565d] = _0x7256 + _0x28a0 * _0x7e39
      _0x836b[3] = (_0x99b3(_0x836b[3], _0x7256) + _0x836b[4]) % _0x7e39
      _0x836b[4] = (_0x99b3(_0x836b[4], _0x28a0) + _0x836b[3]) % _0x7e39
    end
    local _0xbef5 = _0x5bb4[_0x0d11]
    local _0xd63b = _0xbef5 % _0x7e39
    local _0x8c86 = (_0xbef5 - _0xd63b) / _0x7e39
    _0xd63b = _0x99b3(_0xd63b, (_0x0d11 * _0x5daf + _0x41f2) % _0x7e39)
    _0x8c86 = _0x99b3(_0x8c86, (_0x0d11 * _0xab37 + _0xea2e) % _0x7e39)
    local _0xfe0e = _0xd63b + _0x8c86 * _0x7e39
        local _0x0710 = (_0xb772(_0xfe0e / _0x1e8d) % _0x1e8d) - _0xcd84
        local _0xd98f = _0xb772(_0xfe0e / _0x5adb)
        _0x0d11 = _0x0d11 + 1
        if _0xd98f == 62 then
          _0x17a0[i] = _ha4fff[_0x0710]
        elseif _0xd98f == 39 then
          _0x17a0[i] = _0x31a4[_0x0710 + 1]
        else
          _0x94ce(_sdec_dbff({71,68,65,5,80,85,83,68,73,80,64,5,71,76,75,65,76,75,66,5,74,85,70,74,65,64,5}) .. tostring(_0xd98f))
        end
      end
      _ha4fff[_0xc8fc] = _0x2189(_0xe95a, _0x17a0)
    end
end
  elseif _0xbb7b == 51 then
    local _0x2b36 = (_0xc8fc * 18 + 5)
    do local _hd66a3 = _0x1ab3; local _h3da16 = _0x01e2
do
      if _0x1cf6 == 0 then
        for i = 1, _0x4815 do _hd66a3[_0xc8fc + i - 1] = _0x0a2e[i] end
        for i = _0x4815 + 1, _0x4815 + 4 do _hd66a3[_0xc8fc + i - 1] = nil end
        _0x2de5 = _0xc8fc + _0x4815
      else
        local _0xfa14 = _0x1cf6 - 1
        for i = 1, _0xfa14 do
          if i <= _0x4815 then _hd66a3[_0xc8fc + i - 1] = _0x0a2e[i] else _hd66a3[_0xc8fc + i - 1] = nil end
        end
      end
    end
end
  elseif _0xbb7b == 9 then
    do local _h27d49 = _0x1ab3[_0xc8fc]
_0x1ab3[_0xc8fc] = #_0x1ab3[_0x1cf6]
end
  else _0x94ce(_sdec_dbff({71,68,65,5,74,85,70,74,65,64,5}) .. tostring(_0xbb7b) .. _sdec_dbff({5,68,81,5,85,70,5}) .. tostring(_0x0d11 - 1)) end
elseif _0xd526 == 4 then
  if _0xbb7b == 76 then
    do local _h491ae = _0x1ab3
do
      if _0x1cf6 == 0 then
        local _0x54ed = {}
        local _0x23ba = _0x2de5 - _0xc8fc
        for i = 0, _0x23ba - 1 do _0x54ed[i + 1] = _h491ae[_0xc8fc + i] end
        return _0xe089(_0x54ed, 1, _0x23ba)
      elseif _0x1cf6 == 1 then
        return
      else
        local _0x23ba = _0x1cf6 - 1
        local _0x54ed = {}
        for i = 0, _0x23ba - 1 do _0x54ed[i + 1] = _h491ae[_0xc8fc + i] end
        return _0xe089(_0x54ed, 1, _0x23ba)
      end
    end
end
  elseif _0xbb7b == 118 then
    local _0xadf1 = _0x1ab3[_0xc8fc]
    do local _he0a47 = _0x1ab3; local _ha80f0 = _0x0672; local _h94122 = _0x01e2
_he0a47[_0xc8fc] = (_0x1cf6 ~= 0); if _0x0aa2 ~= 0 then _0x0d11 = _0x0d11 + 1 end
end
  elseif _0xbb7b == 10 then
    local _0xb05b = (_0xc8fc * 29 + 33)
    do local _he157c = _0x1ab3
do local _0xdd8d = (_0x01e2(_he157c, _0x0672, _0x1cf6) <= _0x01e2(_he157c, _0x0672, _0x0aa2)); if not (_0xdd8d == (_0xc8fc ~= 0)) then _0x0d11 = _0x0d11 + 1 end end
end
  elseif _0xbb7b == 112 then
    local _0x5231 = _0x1ab3[_0xc8fc]
    do local _h463aa = _0x0672; local _he04cb = (_0x0d11 + _0x1cf6) % 7
_0x1ab3[_0xc8fc] = {}
end
  elseif _0xbb7b == 52 then
    local _0xb899 = (_0xc8fc * 11 + 15)
    do local _ha633c = _0x1ab3; local _hba438 = _0x0672; local _ha5f10 = _0x01e2; local _haff5a = _ha633c[_0xc8fc]
_0x0d11 = _0x0d11 + _0x1cf6; _ha633c[_0xc8fc] = _ha633c[_0xc8fc + 1]
end
  elseif _0xbb7b == 100 then
    local _0xa3f7 = _0x1ab3[_0xc8fc]
    do local _he1e97 = _0x1ab3; local _h0e569 = _0x01e2; local _hb4395 = _0xc8fc + 7
_he1e97[_0xc8fc] = (_he1e97[_0x1cf6] == _he1e97[_0x0aa2])
end
  elseif _0xbb7b == 4 then
    local _0x9b31 = _0x0d11 + 31; _0x9b31 = _0x9b31 - _0x9b31
    do local _h5b833 = _0x1ab3; local _h231d7 = _0x0672
_h5b833[_0xc8fc] = _h231d7[_0x1cf6 + 1]
end
  elseif _0xbb7b == 70 then
    do local _hb77e9 = _0x1ab3; local _hea43a = _hb77e9[_0xc8fc]
_0x0d11 = _0x0d11 + _0x1cf6
end
  elseif _0xbb7b == 58 then
    local _0x479c = _0x1ab3[_0xc8fc]
    do local _h23697 = _0x0672; local _h86c54 = _0x01e2
do
      local _0x33a1 = _0x1ab3[_0xc8fc]
      local _0x11df = _0x1ab3[_0xc8fc + 1]
      local _0x7d35 = _0x1ab3[_0xc8fc + 2]
      local _0xd551 = { _0x33a1(_0x11df, _0x7d35) }
      local nres = _0x0aa2
      for i = 1, nres do _0x1ab3[_0xc8fc + 2 + i] = _0xd551[i] end
      if _0x1ab3[_0xc8fc + 3] ~= nil then
        _0x1ab3[_0xc8fc + 2] = _0x1ab3[_0xc8fc + 3]
      else
        _0x0d11 = _0x0d11 + 1
      end
    end
end
  elseif _0xbb7b == 22 then
    local _0x1311 = #_0x5bb4
    do local _h8a170 = _0x1ab3; local _he95cc = _0x01e2
_0x31a4[_0x1cf6 + 1].v = _h8a170[_0xc8fc]
end
  elseif _0xbb7b == 94 then
    do local _he4a32 = _0x1ab3; local _h250ee = _0x0672
_he4a32[_0x1cf6].v = _he4a32[_0xc8fc]
end
  elseif _0xbb7b == 64 then
    do local _h19685 = _0x1ab3; local _h49848 = _0x01e2
do
      _h19685[_0xc8fc] = _h19685[_0xc8fc] + _h19685[_0xc8fc + 2]
      local _0x7a64 = _h19685[_0xc8fc + 2]
      if (_0x7a64 > 0 and _h19685[_0xc8fc] <= _h19685[_0xc8fc + 1]) or (_0x7a64 <= 0 and _h19685[_0xc8fc] >= _h19685[_0xc8fc + 1]) then
        _0x0d11 = _0x0d11 + _0x1cf6
        _h19685[_0xc8fc + 3] = _h19685[_0xc8fc]
      end
    end
end
  elseif _0xbb7b == 106 then
    do local _hddac4 = _0x1ab3; local _hee199 = _0x0672
do
      local _0x33a1 = _hddac4[_0xc8fc]
      local _0x3d86
      if _0x1cf6 == 0 then _0x3d86 = _0x2de5 - _0xc8fc - 1 else _0x3d86 = _0x1cf6 - 1 end
      local _0xcb96 = {}
      for i = 1, _0x3d86 do _0xcb96[i] = _hddac4[_0xc8fc + i] end
      return _0x33a1(_0xe089(_0xcb96, 1, _0x3d86))
    end
end
  else _0x94ce(_sdec_dbff({71,68,65,5,74,85,70,74,65,64,5}) .. tostring(_0xbb7b) .. _sdec_dbff({5,68,81,5,85,70,5}) .. tostring(_0x0d11 - 1)) end
elseif _0xd526 == 0 then
  if _0xbb7b == 66 then
    local _0x7350 = _0x0d11 + 4; _0x7350 = _0x7350 - _0x7350
    do local _h3c1ad = _0x1ab3
_h3c1ad[_0xc8fc] = (_h3c1ad[_0x1cf6] == _h3c1ad[_0x0aa2])
end
  elseif _0xbb7b == 78 then
    do local _hc46fc = _0x0672
_0x1ab3[_0xc8fc] = _hc46fc[_0x1cf6 + 1]; _0x0d11 = _0x0d11 + 1
end
  elseif _0xbb7b == 72 then
    _0x1ab3[_0xc8fc] = _0x1ab3[_0x1cf6] - _0x0672[_0x0aa2 + 1]
  elseif _0xbb7b == 102 then
    local _0xc12d = #_0x5bb4
    do local _hfd4c9 = _0x1ab3
_hfd4c9[_0xc8fc] = not _hfd4c9[_0x1cf6]
end
  elseif _0xbb7b == 48 then
    local _0xa14d = (_0xc8fc * 3 + 40)
    do local _h10bce = _0x1ab3
do local _0x2755 = _h10bce[_0x1cf6]; _h10bce[_0xc8fc] = _0x2755 and _0x2755[_0x01e2(_h10bce, _0x0672, _0x0aa2)] end
end
  elseif _0xbb7b == 84 then
    local _0x72b5 = _0x1ab3[_0xc8fc]
    do local _h61b85 = _0x1ab3
do local _0x6212 = not not _h61b85[_0xc8fc]; if not (_0x6212 == (_0x0aa2 ~= 0)) then _0x0d11 = _0x0d11 + 1 end end
end
  elseif _0xbb7b == 90 then
    local _0xbd6b = _0x1ab3[_0xc8fc]
    do local _h94bae = _0x1ab3; local _h9f1c2 = _0x0672; local _h60d14 = (_0x0d11 + _0x1cf6) % 12
_h94bae[_0xc8fc] = _h94bae[_0x1cf6] - _h9f1c2[_0x0aa2 + 1]
end
  else _0x94ce(_sdec_dbff({71,68,65,5,74,85,70,74,65,64,5}) .. tostring(_0xbb7b) .. _sdec_dbff({5,68,81,5,85,70,5}) .. tostring(_0x0d11 - 1)) end
elseif _0xd526 == 2 then
  if _0xbb7b == 50 then
    do local _h68718 = _0x1ab3; local _h452a1 = _0x01e2; local _h3bf72 = _h68718[_0xc8fc]
do local _0x00ad = _h68718[_0x1cf6]; _h68718[_0xc8fc + 1] = _0x00ad; _h68718[_0xc8fc] = _0x00ad[_h452a1(_h68718, _0x0672, _0x0aa2)] end
end
  elseif _0xbb7b == 44 then
    local _0x22b6 = #_0x5bb4
    do local _h3e770 = _0x1ab3; local _h52c8c = _0xc8fc + 26
_0x0d11 = _0x0d11 + _0x1cf6; _h3e770[_0xc8fc] = _h3e770[_0xc8fc + 1]
end
  elseif _0xbb7b == 56 then
    do local _hb2cc8 = _0x1ab3
_hb2cc8[_0xc8fc] = -_hb2cc8[_0x1cf6]
end
  elseif _0xbb7b == 62 then
    local _0xd82f = (_0xc8fc * 25 + 29)
    _0x1ab3[_0xc8fc] = _0x1ab3[_0x1cf6]
  elseif _0xbb7b == 104 then
    local _0x0100 = _0x1ab3[_0xc8fc]
    do local _h41777 = _0x1ab3; local _hd3834 = _0x0672; local _h74daa = (_0x0d11 + _0x1cf6) % 22
do local _0x075b = (_0x01e2(_h41777, _hd3834, _0x1cf6) == _0x01e2(_h41777, _hd3834, _0x0aa2)); if not (_0x075b == (_0xc8fc ~= 0)) then _0x0d11 = _0x0d11 + 1 end end
end
  elseif _0xbb7b == 116 then
    local _0xbdc7 = #_0x5bb4
    do local _hd20f8 = _0x1ab3; local _h90c4c = _0x0672
do local _0x2755 = _hd20f8[_0x1cf6]; _hd20f8[_0xc8fc] = _0x2755 and _0x2755[_0x01e2(_hd20f8, _h90c4c, _0x0aa2)] end
end
  elseif _0xbb7b == 74 then
    local _0xfd38 = _0x1ab3[_0xc8fc]
    do local _h19b88 = _0x0672
_0x0d11 = _0x0d11 + _0x1cf6; _0x1ab3[_0xc8fc] = _0x1ab3[_0xc8fc + 1]
end
  elseif _0xbb7b == 14 then
    do local _h5c57f = _0x1ab3
_h5c57f[_0xc8fc] = #_0x0672
end
  elseif _0xbb7b == 26 then
    local _0xbbe6 = (_0xc8fc * 13 + 26)
    do local _h4a27d = _0x1ab3
_h4a27d[_0xc8fc] = { v = _h4a27d[_0xc8fc] }
end
  else _0x94ce(_sdec_dbff({71,68,65,5,74,85,70,74,65,64,5}) .. tostring(_0xbb7b) .. _sdec_dbff({5,68,81,5,85,70,5}) .. tostring(_0x0d11 - 1)) end
else _0x94ce(_sdec_dbff({71,68,65,5,71,80,70,78,64,81,5}) .. tostring(_0xd526)) end
  end
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = math.pi
  end

local _0xf06e = 
{
  numparams = 0,
  isvararg = true,
  maxstack = 6,
  insns = _0x270a(_0x83ae(_0xc6be(_0x6eeb(_u919a(_sdec_dbff({165,143,197,168,160,36,118,143,14,194,204,187,78,249,122,172,236,204,156,136,232,16,84,247,33,224,176,152,79,132,17,168,245,144,154,155,245,52,10,243,13,243,212,200,59,245,107,177,169,204,195,157,129,13,17,231,46,199,159,195,115,226,49,183,130,146,215,185,153,7,83,150,39,165,145,135,115,140,116,143,224,134})),65)),9), 974722688, 8532401, 31682340, 3766878, 17090905, 11681465),
  consts = {1,4},
  protos = {},
  upvs = {},
}

return _0x62ea(_0xf06e, {}, {...}, _0xa47d(_sdec_dbff({6}), ...))
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
end)(nil)
end

-- vm 1
do
  local _r = (function(...)
return (function(...)
  local _env = {_de2a9=64530,_d54be=23911,_d4e58=18733,_d7624=90,_d63a=26405,_d7661=47219}
  local _s2655 = _env._d63a
  local _fn = function(...)
return (function(...)
  local _env = {_dd75f=41735,_da324=49222,_d87e5=52742,_ddd38=36147,_d810a=52167}
  local _s21eb = _env._d87e5
  local _fn = function(...)
return (function(...)
  local _env = {_d3545=22493,_dac04=31581,_d1cd9=6990,_db080=36436}
  local _sd351 = _env._dac04
  local _fn = function(...)

local function _sdec_c43c(b)
  local _k = 32
  local _xor = function(a, bb)
    local r, p = 0, 1
    for _ = 1, 8 do
      local ab, cb = a % 2, bb % 2
      if ab ~= cb then r = r + p end
      a = (a - ab) / 2
      bb = (bb - cb) / 2
      p = p * 2
    end
    return r
  end
  local _0x9d95 = {}
  for i = 1, #b do _0x9d95[i] = string.char(_xor(b[i], _k)) end
  return table.concat(_0x9d95)
end


local _u4095 = table.concat
local _uced4 = string.byte
local _u5a45 = string.char
local _u62e3 = string.sub
local _u3753 = rawget
local function _u30e4(_u7e3a, _u4f0b)
  local _u84f5, _ub19e = 0, 1
  for _ = 1, 8 do
    local _ua75e, _u0178 = _u7e3a % 2, _u4f0b % 2
    if _ua75e ~= _u0178 then _u84f5 = _u84f5 + _ub19e end
    _u7e3a = (_u7e3a - _ua75e) / 2
    _u4f0b = (_u4f0b - _u0178) / 2
    _ub19e = _ub19e * 2
  end
  return _u84f5
end
local _u0131 = 0
do
  -- debug.gethook is present in Lua 5.1 and Luau (debug lib). _0x5df7 hook means
  -- someone'_0x1b78 tracing us; corrupt the pad.
  local _u33b0 = debug and debug.gethook
  if _u33b0 then
    local ok, hk = pcall(_u33b0)
    if ok and hk ~= nil then _u0131 = _u30e4(_u0131, 204) end
  end
  -- Roblox environment check. In Roblox/Luau, `game` is a userdata living
  -- in the script'_0x1b78 environment chain (NOT in `_G`), so we use a bare
  -- global reference rather than `rawget(_G, "game")` which always returns
  -- nil under Roblox. Bare-global access goes through the env __index chain
  -- and finds `game` correctly. Any execution context that doesn'_0x9d95 expose
  -- `game` (stock lua5.1, hostile sandbox with stripped env) silently
  -- corrupts the pad.
  if game == nil then
    _u0131 = _u30e4(_u0131, 171)
  end
  -- LuaJIT detector. Roblox is Luau, not LuaJIT. If the `jit` global exists
  -- and has a `.version` field, we're running under LuaJIT (likely in a
  -- hostile sandbox); corrupt the pad.
  if rawget and rawget(_G, _sdec_c43c({74,73,84})) ~= nil then
    _u0131 = _u30e4(_u0131, 90)
  end
end
local _u9979 = {169,103,9,29,215,185,148,26,23,41,5,188,142,10,62,16}
local _u34b2 = {6,3,2,11,12,16,5,10,15,7,4,13,8,9,14,1}
local _u03c4 = {}
for _udfef = 1, 16 do
  _u03c4[_udfef] = _u30e4(_u9979[_u34b2[_udfef]], _u0131)
end
local function _udafe(_0x1b78)
  local out = {}
  local len = #_0x1b78
  for _udfef = 1, len do
    local _u6393 = ((_udfef - 1) % 16) + 1
    out[_udfef] = _u5a45(_u30e4(_uced4(_0x1b78, _udfef), _u03c4[_u6393]))
  end
  return _u4095(out)
end

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = _G["workspace"]
    local _ = string.byte("x")
  end

local _0xec88 = _sdec_c43c({16,17,18,19,20,21,22,23,24,25,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,1,3,4,5,6,8,9,10,11,13,27,28,29,30,31,96,126,127,64,91,92,93,94})
local _0x4c85 = {}
for i = 1, 85 do _0x4c85[string.byte(_0xec88, i)] = i - 1 end
local function _0x76a4(_0x1b78, origLen)
  local out = {}
  local outPos = 0
  local sLen = #_0x1b78
  local padCount = (5 - (sLen % 5)) % 5
  local i = 1
  while i <= sLen do
    local v = 0
    local group = 0
    while group < 5 do
      local ch
      if i + group <= sLen then
        ch = _0x4c85[string.byte(_0x1b78, i + group)]
      else
        ch = 84
      end
      v = v * 85 + ch
      group = group + 1
    end
    i = i + 5
    local b0 = math.floor(v / 16777216) % 256
    local b1 = math.floor(v / 65536) % 256
    local b2 = math.floor(v / 256) % 256
    local b3 = v % 256
    out[outPos + 1] = b0
    out[outPos + 2] = b1
    out[outPos + 3] = b2
    out[outPos + 4] = b3
    outPos = outPos + 4
  end
  local finalLen = origLen
  local trimmed = {}
  for k = 1, finalLen do trimmed[k] = out[k] end
  return trimmed
end

if ((function() return false end)()) then
    local _ = _G["workspace"]
    local _ = _G["game"]
  end
local function _0x5394(buf)
  local SYMBOLS = 257
  local EOF = 256
  local INITIAL_COUNT = 1
  local MAX_TOTAL = 16384
  local TOP = 65535
  local HALF = 32768
  local FIRST_QTR = 16384
  local THIRD_QTR = 49152
  local CODE_BITS = 16

  local counts = {}
  for i = 0, SYMBOLS - 1 do counts[i] = 1 end
  local total = SYMBOLS

  local bufLen = #buf
  local bitPos = 0
  local function readBit()
    local bytePos = math.floor(bitPos / 8) + 1
    local bitIdx = 7 - (bitPos - (bytePos - 1) * 8)
    bitPos = bitPos + 1
    if bytePos > bufLen then return 0 end
    local b = buf[bytePos]
    local mask = 1
    for _ = 1, bitIdx do mask = mask * 2 end
    return (math.floor(b / mask) % 2)
  end

  local value = 0
  for _ = 1, CODE_BITS do value = value * 2 + readBit() end
  local low = 0
  local high = TOP
  local out = {}
  local outN = 0

if ((function() return false end)()) then
    local _ = _G["workspace"]
  end
  while true do
    local range = high - low + 1
    local scaled = math.floor(((value - low + 1) * total - 1) / range)
    local acc = 0
    local sym = 0
    for i = 0, SYMBOLS - 1 do
      if acc + counts[i] > scaled then
        sym = i
        break
      end
      acc = acc + counts[i]
    end
    if sym == EOF then break end
    outN = outN + 1
    out[outN] = sym
    local cumLo = acc
    local cumHi = cumLo + counts[sym]
    high = low + math.floor((range * cumHi) / total) - 1
    low = low + math.floor((range * cumLo) / total)
    while true do
      if high < HALF then
        -- nothing
      elseif low >= HALF then
        value = value - HALF
        low = low - HALF
        high = high - HALF
      elseif low >= FIRST_QTR and high < THIRD_QTR then
        value = value - FIRST_QTR
        low = low - FIRST_QTR
        high = high - FIRST_QTR
      else
        break
      end
      low = low * 2
      high = high * 2 + 1
      value = value * 2 + readBit()
    end
    counts[sym] = counts[sym] + 1
    total = total + 1
    if total >= MAX_TOTAL then
      total = 0
      for i = 0, SYMBOLS - 1 do
        local c = math.floor(counts[i] / 2)
        if c < 1 then c = 1 end
        counts[i] = c
        total = total + c
      end
    end
  end
  return out
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = _G["CFrame"]
    local _ = math.huge
  end
local function _0xdbd3(bytes, _0xacc9)
  local out = {}
  for i = 1, _0xacc9 do
    local base = (i - 1) * 7
    local v = 0
    for j = 7, 1, -1 do
      v = v * 256 + bytes[base + j]
    end
    out[i] = v
  end
  return out
end



local _0x35f2 = 33554432
local function _0xaca7(a, b)
  local aLo = a % 65536
  local aHi = (a - aLo) / 65536
  local bLo = b % 65536
  local bHi = (b - bLo) / 65536
  local function xor16(_0x4b61, y)
    local r, p = 0, 1
    for _ = 1, 16 do
      local xb, yb = _0x4b61 % 2, y % 2
      if xb ~= yb then r = r + p end
      _0x4b61 = (_0x4b61 - xb) / 2
      y = (y - yb) / 2
      p = p * 2
    end
    return r
  end
  return xor16(aHi, bHi) * 65536 + xor16(aLo, bLo)
end

-- _0xfe7a: stateful (lazy) bytecode decode.
--
-- `_0x32f3` no longer materializes a plaintext instruction array. It
-- returns a "_0x2101" holding (a) the layer-1-encrypted integer array, (b) the
-- initial feedback-chain state seeded by the per-proto checksum and the
-- script-env fingerprint, and (c) the per-build salt constants. The outer
-- _0x2101 is what `_0xb06d.insns` becomes. Each _0x174d() call unboxes these
-- fields into its own local state and advances the decryption lazily at
-- fetch time: instruction `i` is only peeled from the feedback chain
-- when the dispatch loop actually reads it. Control flow that never
-- reaches an instruction (dead code, branches not taken) leaves those
-- cells in their encrypted form. An analyst who dumps the _0x2101'_0x1b78 data
-- field outside the VM gets layer-1-encrypted integers with no way to
-- recover the feedback state without re-running the chain in order.
local function _0x32f3(enc, checksum, seed_a, seed_b, salt_a, salt_b, envConst)
  local env = ((game ~= nil) and 1 or 0)
  local state_a = _0xaca7(seed_a, checksum % _0x35f2)
  local state_b = _0xaca7(seed_b, (env * envConst + math.floor(checksum / _0x35f2)) % _0x35f2)
  -- numeric indices avoid any chance of the rename pass mangling a
  -- field-key identifier that happens to collide with a VM local name.
  -- Layout: [1]=data, [2]=_0xacc9, [3]=state_a, [4]=state_b, [5]=salt_a,
  --        [6]=salt_b, [7]=decLvl.  decLvl starts at 0 and only ever
  --        advances — so an inner proto that is executed multiple times
  --        (e.g. a closure called in a loop) reuses the same already-
  --        decrypted instructions on later calls instead of double-
  --        applying layer 1 to the in-place mutated array.
  return { enc, #enc, state_a, state_b, salt_a, salt_b, 0 }
end
local _0x80e9, _0x44a9, _0x06e9, _0xa968 = 16931741, 19263005, 5431140, 20754056

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = "__" .. tostring(os.time())
  end
-- larpfuscator runtime (plain)
local _0x386e = math.floor
local _0x20d7 = select
local _0x185a = type
local _0xe909 = setmetatable
local _0xafae = getmetatable
local _0x2f0a = table.unpack or unpack
local _0x2a0b = error
local _0x896f = {}
do local _v1a1305 = shared; _0x896f[_v1a1305 ~= nil and _sdec_c43c({83,72,65,82,69,68}) or false] = _v1a1305 end
do local _v7d5938 = RaycastParams; if _v7d5938 ~= nil then _0x896f.RaycastParams = _v7d5938 end end
do local _vfbb518 = assert; _0x896f[_vfbb518 ~= nil and _sdec_c43c({65,83,83,69,82,84}) or false] = _vfbb518 end
do local _vbceded = DateTime; _0x896f[_vbceded ~= nil and _sdec_c43c({100,65,84,69,116,73,77,69}) or false] = _vbceded end
do local _vbef5b2 = io; if _vbef5b2 ~= nil then _0x896f[_sdec_c43c({73,79})] = _vbef5b2 end end
do local _v3d9418 = PhysicalProperties; _0x896f[_v3d9418 ~= nil and _sdec_c43c({112,72,89,83,73,67,65,76,112,82,79,80,69,82,84,73,69,83}) or false] = _v3d9418 end
do local _v2731df = utf8; if _v2731df ~= nil then _0x896f[_sdec_c43c({85,84,70,24})] = _v2731df end end
do local _v32e545 = tick; if _v32e545 ~= nil then _0x896f.tick = _v32e545 end end
do local _v8e49a4 = StarterGui; if _v8e49a4 ~= nil then _0x896f[_sdec_c43c({115,84,65,82,84,69,82,103,85,73})] = _v8e49a4 end end
do local _v0d3777 = TweenService; _0x896f[_v0d3777 ~= nil and _sdec_c43c({116,87,69,69,78,115,69,82,86,73,67,69}) or false] = _v0d3777 end
do local _v4d1358 = Axes; _0x896f[_v4d1358 ~= nil and _sdec_c43c({97,88,69,83}) or false] = _v4d1358 end
do local _v2638f1 = os; if _v2638f1 ~= nil then _0x896f[_sdec_c43c({79,83})] = _v2638f1 end end
do local _v0df64f = select; if _v0df64f ~= nil then _0x896f.select = _v0df64f end end
do local _vb215ca = RunService; if _vb215ca ~= nil then _0x896f[_sdec_c43c({114,85,78,115,69,82,86,73,67,69})] = _vb215ca end end
do local _vb6a078 = next; _0x896f[_vb6a078 ~= nil and _sdec_c43c({78,69,88,84}) or false] = _vb6a078 end
do local _v84f868 = game; if _v84f868 ~= nil then _0x896f[_sdec_c43c({71,65,77,69})] = _v84f868 end end
do local _vac7847 = TeleportService; _0x896f[_vac7847 ~= nil and _sdec_c43c({116,69,76,69,80,79,82,84,115,69,82,86,73,67,69}) or false] = _vac7847 end
do local _v624af0 = StarterPack; if _v624af0 ~= nil then _0x896f[_sdec_c43c({115,84,65,82,84,69,82,112,65,67,75})] = _v624af0 end end
do local _v32b8eb = CFrame; _0x896f[_v32b8eb ~= nil and _sdec_c43c({99,102,82,65,77,69}) or false] = _v32b8eb end
do local _v4c5140 = math; if _v4c5140 ~= nil then _0x896f.math = _v4c5140 end end
do local _vb25340 = NumberRange; _0x896f[_vb25340 ~= nil and _sdec_c43c({110,85,77,66,69,82,114,65,78,71,69}) or false] = _vb25340 end
do local _v55ca98 = rawequal; if _v55ca98 ~= nil then _0x896f[_sdec_c43c({82,65,87,69,81,85,65,76})] = _v55ca98 end end
do local _ve5efff = Faces; if _ve5efff ~= nil then _0x896f[_sdec_c43c({102,65,67,69,83})] = _ve5efff end end
do local _va98e57 = print; if _va98e57 ~= nil then _0x896f.print = _va98e57 end end
do local _vbfaae0 = rawset; if _vbfaae0 ~= nil then _0x896f[_sdec_c43c({82,65,87,83,69,84})] = _vbfaae0 end end
do local _v6e0229 = ipairs; if _v6e0229 ~= nil then _0x896f[_sdec_c43c({73,80,65,73,82,83})] = _v6e0229 end end
do local _v3c6e4c = bit32; if _v3c6e4c ~= nil then _0x896f.bit32 = _v3c6e4c end end
do local _v8c2517 = type; _0x896f[_v8c2517 ~= nil and _sdec_c43c({84,89,80,69}) or false] = _v8c2517 end
do local _vf42d33 = rawget; if _vf42d33 ~= nil then _0x896f[_sdec_c43c({82,65,87,71,69,84})] = _vf42d33 end end
do local _v880643 = Region3; if _v880643 ~= nil then _0x896f[_sdec_c43c({114,69,71,73,79,78,19})] = _v880643 end end
do local _v05e35f = Instance; if _v05e35f ~= nil then _0x896f.Instance = _v05e35f end end
do local _v42e505 = typeof; if _v42e505 ~= nil then _0x896f.typeof = _v42e505 end end
do local _v3a1d13 = string; _0x896f[_v3a1d13 ~= nil and _sdec_c43c({83,84,82,73,78,71}) or false] = _v3a1d13 end
do local _v4fb56c = delay; if _v4fb56c ~= nil then _0x896f[_sdec_c43c({68,69,76,65,89})] = _v4fb56c end end
do local _v700a01 = coroutine; if _v700a01 ~= nil then _0x896f.coroutine = _v700a01 end end
do local _ve87229 = Ray; _0x896f[_ve87229 ~= nil and _sdec_c43c({114,65,89}) or false] = _ve87229 end
do local _v02066e = setmetatable; if _v02066e ~= nil then _0x896f[_sdec_c43c({83,69,84,77,69,84,65,84,65,66,76,69})] = _v02066e end end
do local _ve8f8ff = Color3; if _ve8f8ff ~= nil then _0x896f.Color3 = _ve8f8ff end end
do local _vf26575 = BrickColor; if _vf26575 ~= nil then _0x896f[_sdec_c43c({98,82,73,67,75,99,79,76,79,82})] = _vf26575 end end
do local _vb5fa1d = ColorSequence; _0x896f[_vb5fa1d ~= nil and _sdec_c43c({99,79,76,79,82,115,69,81,85,69,78,67,69}) or false] = _vb5fa1d end
do local _v34b65b = table; if _v34b65b ~= nil then _0x896f[_sdec_c43c({84,65,66,76,69})] = _v34b65b end end
do local _v10327c = OverlapParams; if _v10327c ~= nil then _0x896f.OverlapParams = _v10327c end end
do local _v665909 = warn; if _v665909 ~= nil then _0x896f[_sdec_c43c({87,65,82,78})] = _v665909 end end
do local _vb8f6d4 = pairs; if _vb8f6d4 ~= nil then _0x896f[_sdec_c43c({80,65,73,82,83})] = _vb8f6d4 end end
do local _vcc3c15 = task; _0x896f[_vcc3c15 ~= nil and _sdec_c43c({84,65,83,75}) or false] = _vcc3c15 end
do local _vc294da = ColorSequenceKeypoint; if _vc294da ~= nil then _0x896f.ColorSequenceKeypoint = _vc294da end end
do local _vf1caa0 = TweenInfo; _0x896f[_vf1caa0 ~= nil and _sdec_c43c({116,87,69,69,78,105,78,70,79}) or false] = _vf1caa0 end
do local _v7cbe15 = script; if _v7cbe15 ~= nil then _0x896f[_sdec_c43c({83,67,82,73,80,84})] = _v7cbe15 end end
do local _v42448f = NumberSequence; if _v42448f ~= nil then _0x896f.NumberSequence = _v42448f end end
do local _v084c88 = collectgarbage; _0x896f[_v084c88 ~= nil and _sdec_c43c({67,79,76,76,69,67,84,71,65,82,66,65,71,69}) or false] = _v084c88 end
do local _vd3799b = UDim2; _0x896f[_vd3799b ~= nil and _sdec_c43c({117,100,73,77,18}) or false] = _vd3799b end
do local _v88a09d = Vector2; _0x896f[_v88a09d ~= nil and _sdec_c43c({118,69,67,84,79,82,18}) or false] = _v88a09d end
do local _ve89db0 = time; if _ve89db0 ~= nil then _0x896f[_sdec_c43c({84,73,77,69})] = _ve89db0 end end
do local _v8d869e = spawn; if _v8d869e ~= nil then _0x896f[_sdec_c43c({83,80,65,87,78})] = _v8d869e end end
do local _v93d316 = NumberSequenceKeypoint; if _v93d316 ~= nil then _0x896f[_sdec_c43c({110,85,77,66,69,82,115,69,81,85,69,78,67,69,107,69,89,80,79,73,78,84})] = _v93d316 end end
do local _v2e5e76 = Chat; if _v2e5e76 ~= nil then _0x896f[_sdec_c43c({99,72,65,84})] = _v2e5e76 end end
do local _v7ea1a3 = UDim; _0x896f[_v7ea1a3 ~= nil and _sdec_c43c({117,100,73,77}) or false] = _v7ea1a3 end
do local _v7fd018 = getmetatable; if _v7fd018 ~= nil then _0x896f.getmetatable = _v7fd018 end end
do local _vbf3f89 = rawlen; if _vbf3f89 ~= nil then _0x896f.rawlen = _vbf3f89 end end
do local _v9113c7 = Vector3; _0x896f[_v9113c7 ~= nil and _sdec_c43c({118,69,67,84,79,82,19}) or false] = _v9113c7 end
do local _vf6f0bf = xpcall; if _vf6f0bf ~= nil then _0x896f.xpcall = _vf6f0bf end end
do local _v21297a = wait; if _v21297a ~= nil then _0x896f.wait = _v21297a end end
do local _v754647 = Enum; _0x896f[_v754647 ~= nil and _sdec_c43c({101,78,85,77}) or false] = _v754647 end
do local _v4ccee2 = pcall; if _v4ccee2 ~= nil then _0x896f[_sdec_c43c({80,67,65,76,76})] = _v4ccee2 end end
do local _vcf7df9 = ServerStorage; if _vcf7df9 ~= nil then _0x896f[_sdec_c43c({115,69,82,86,69,82,115,84,79,82,65,71,69})] = _vcf7df9 end end
do local _v252d50 = workspace; if _v252d50 ~= nil then _0x896f.workspace = _v252d50 end end
do local _vd409e4 = error; if _vd409e4 ~= nil then _0x896f.error = _vd409e4 end end
do local _v25b447 = debug; if _v25b447 ~= nil then _0x896f.debug = _v25b447 end end
do local _v58fe59 = Players; if _v58fe59 ~= nil then _0x896f[_sdec_c43c({112,76,65,89,69,82,83})] = _v58fe59 end end
do local _v8703de = tostring; if _v8703de ~= nil then _0x896f[_sdec_c43c({84,79,83,84,82,73,78,71})] = _v8703de end end
do local _ve2047e = Random; _0x896f[_ve2047e ~= nil and _sdec_c43c({114,65,78,68,79,77}) or false] = _ve2047e end
do local _vc09226 = unpack; _0x896f[_vc09226 ~= nil and _sdec_c43c({85,78,80,65,67,75}) or false] = _vc09226 end
do local _v55091f = Rect; if _v55091f ~= nil then _0x896f[_sdec_c43c({114,69,67,84})] = _v55091f end end
do local _vb0fddf = CollectionService; _0x896f[_vb0fddf ~= nil and _sdec_c43c({99,79,76,76,69,67,84,73,79,78,115,69,82,86,73,67,69}) or false] = _vb0fddf end
do local _ve523d2 = tonumber; _0x896f[_ve523d2 ~= nil and _sdec_c43c({84,79,78,85,77,66,69,82}) or false] = _ve523d2 end
do local _v042136 = Teams; _0x896f[_v042136 ~= nil and _sdec_c43c({116,69,65,77,83}) or false] = _v042136 end
_0x896f[false] = nil
local _0xad5a
do local _ok, _0x46d9 = pcall(getfenv, 1); if _ok and type(_0x46d9) == _sdec_c43c({84,65,66,76,69}) then _0xad5a = _0x46d9 else _0xad5a = _G end end
local _0x7dba = {}
local _0x02a1 = {}
local _0x2608 = setmetatable({}, {
  __index = function(_, k)
    local w = _0x7dba[k]
    if w == _0x02a1 then return nil end
    if w ~= nil then return w end
    local _0x1b78 = _0x896f[k]
    if _0x1b78 ~= nil then return _0x1b78 end
    return _0xad5a[k]
  end,
  __newindex = function(_, k, v)
    if v == nil then _0x7dba[k] = _0x02a1 else _0x7dba[k] = v end
  end,
})

if ((function() return false end)()) then
    local _ = string.byte("x")
    local _ = "__" .. tostring(os.time())
  end
local _0xc4e0 = 4096
local _0x657c = 16383
local _0x6e98 = 16384
local _0xd20b = 268435456
local _0xf17b = 4398046511104
local _0x1853 = 8192


local _0x174d

local function _0xe1ce(_0x7110, _0xb9d6, _0x4b61)
  if _0x4b61 >= _0x1853 then return _0xb9d6[_0x4b61 - _0x1853 + 1] end
  return _0x7110[_0x4b61]
end

local function _0x7a2a(_0x6d2d, _0xe54a)
  return function(...)
    local _0xacc9 = _0x20d7(_sdec_c43c({3}), ...)
    return _0x174d(_0x6d2d, _0xe54a, { ... }, _0xacc9)
  end
end

_0x174d = function(_0xb06d, _0x717b, _0x1769, _0x7105)
  local _0x1c01 = _0xb06d.insns
  local _0xec56 = _0x1c01[1]
  local _0x674c = _0xb06d.consts
  local _0x4198 = _0xb06d.protos
  local _0x0932 = _0xb06d.maxstack or 64
  local _0x7110 = {}
  for i = 0, _0x0932 + 16 do _0x7110[i] = nil end
  _0x7105 = _0x7105 or 0
  local _0x9f5a = _0xb06d.numparams
  for i = 1, _0x9f5a do _0x7110[i - 1] = _0x1769[i] end
  local _0x8ab6 = nil
  local _0x5102 = 0
  if _0xb06d.isvararg then
    _0x8ab6 = {}
    _0x5102 = _0x7105 - _0x9f5a
    if _0x5102 < 0 then _0x5102 = 0 end
    for i = 1, _0x5102 do _0x8ab6[i] = _0x1769[_0x9f5a + i] end
  end
  local _0x9210 = 1
  local _0xb00a = _0x9f5a
  local _0x5d22 = _0x1c01[2]
  while _0x9210 <= _0x5d22 do
    while _0x1c01[7] < _0x9210 do
      local _0xd910 = _0x1c01[7] + 1
      _0x1c01[7] = _0xd910
      local _0x46d9 = _0xec56[_0xd910]
      local _0xe49a = _0x46d9 % _0x35f2
      local _0x56f9 = (_0x46d9 - _0xe49a) / _0x35f2
      local _0xcf61 = _0xaca7(_0x1c01[3], (_0xd910 * _0x1c01[5]) % _0x35f2)
      local _0x1de7 = _0xaca7(_0x1c01[4], (_0xd910 * _0x1c01[6]) % _0x35f2)
      local _0xdc01 = _0xaca7(_0xe49a, _0xcf61)
      local _0xaf1c = _0xaca7(_0x56f9, _0x1de7)
      _0xec56[_0xd910] = _0xdc01 + _0xaf1c * _0x35f2
      _0x1c01[3] = (_0xaca7(_0x1c01[3], _0xdc01) + _0x1c01[4]) % _0x35f2
      _0x1c01[4] = (_0xaca7(_0x1c01[4], _0xaf1c) + _0x1c01[3]) % _0x35f2
    end
    local _0x6d0b = _0xec56[_0x9210]
    local _0xdff4 = _0x6d0b % _0x35f2
    local _0x72e7 = (_0x6d0b - _0xdff4) / _0x35f2
    _0xdff4 = _0xaca7(_0xdff4, (_0x9210 * _0x80e9 + _0x44a9) % _0x35f2)
    _0x72e7 = _0xaca7(_0x72e7, (_0x9210 * _0x06e9 + _0xa968) % _0x35f2)
    local _0xf87d = _0xdff4 + _0x72e7 * _0x35f2
    local _0x5df7 = (_0xf87d % _0x6e98) - _0xc4e0
    local _0xfe7a = (_0x386e(_0xf87d / _0x6e98) % _0x6e98) - _0xc4e0
    local _0x94be = (_0x386e(_0xf87d / _0xd20b) % _0x6e98) - _0xc4e0
    local _0xf6a9 = _0x386e(_0xf87d / _0xf17b)
    _0x9210 = _0x9210 + 1
local _0x4a31 = _0xf6a9 % 6
if _0x4a31 == 2 then
  if _0xf6a9 == 14 then
    do local _had07f = _0x7110; local _h9e1bc = _0x674c; local _h98dfc = (_0x9210 + _0xfe7a) % 19
_had07f[_0x5df7] = _0xe1ce(_had07f, _h9e1bc, _0xfe7a) ^ _0xe1ce(_had07f, _h9e1bc, _0x94be)
end
  elseif _0xf6a9 == 86 then
    local _0x5a2a = (_0x5df7 * 13 + 18)
    do local _h39668 = _0x7110; local _h2f66b = _0x674c
do
      local _0x23fc = _h39668[_0x5df7]
      local _0x8040
      if _0xfe7a == 0 then _0x8040 = _0xb00a - _0x5df7 - 1 else _0x8040 = _0xfe7a - 1 end
      local _0x13d2 = {}
      for i = 1, _0x8040 do _0x13d2[i] = _h39668[_0x5df7 + i] end
      return _0x23fc(_0x2f0a(_0x13d2, 1, _0x8040))
    end
end
  elseif _0xf6a9 == 50 then
    local _0x7d89 = #_0xec56
    do local _h087b8 = _0x7110; local _h5474c = _0xe1ce; local _hf93b5 = _h087b8[_0x5df7]
_0x2608[_0x674c[_0xfe7a + 1]] = _h087b8[_0x5df7]
end
  elseif _0xf6a9 == 8 then
    local _0x5be1 = _0x7110[_0x5df7]
    do local _hac039 = _0x7110; local _he5be0 = _0xe1ce; local _h5cd7e = (_0x9210 + _0xfe7a) % 35
_hac039[_0xfe7a].v = _hac039[_0x5df7]
end
  elseif _0xf6a9 == 20 then
    local _0x628c = (_0x5df7 * 19 + 48)
    do local _h063af = _0x7110
_h063af[_0x5df7] = _0xe1ce(_h063af, _0x674c, _0xfe7a) + _0xe1ce(_h063af, _0x674c, _0x94be)
end
  elseif _0xf6a9 == 44 then
    local _0x6b9a = _0x9210 + 13; _0x6b9a = _0x6b9a - _0x6b9a
    do local _h52db8 = _0x7110; local _hac667 = _0x5df7 + 31
_h52db8[_0x5df7] = not _h52db8[_0xfe7a]
end
  elseif _0xf6a9 == 2 then
    local _0x7bbb = (_0x5df7 * 38 + 12)
    do local _hc3ae2 = _0x674c
-- no-_0xf6a9 under our _0x2101 model
end
  elseif _0xf6a9 == 92 then
    local _0x3de6 = (_0x5df7 * 50 + 39)
    do local _ha958d = _0x7110; local _hd1149 = _ha958d[_0x5df7]
do
      local _0x6d2d = _0x4198[_0xfe7a + 1]
      local _0xe54a = {}
      for i = 1, #_0x6d2d.upvs do
        while _0x1c01[7] < _0x9210 do
      local _0xd910 = _0x1c01[7] + 1
      _0x1c01[7] = _0xd910
      local _0x46d9 = _0xec56[_0xd910]
      local _0xe49a = _0x46d9 % _0x35f2
      local _0x56f9 = (_0x46d9 - _0xe49a) / _0x35f2
      local _0xcf61 = _0xaca7(_0x1c01[3], (_0xd910 * _0x1c01[5]) % _0x35f2)
      local _0x1de7 = _0xaca7(_0x1c01[4], (_0xd910 * _0x1c01[6]) % _0x35f2)
      local _0xdc01 = _0xaca7(_0xe49a, _0xcf61)
      local _0xaf1c = _0xaca7(_0x56f9, _0x1de7)
      _0xec56[_0xd910] = _0xdc01 + _0xaf1c * _0x35f2
      _0x1c01[3] = (_0xaca7(_0x1c01[3], _0xdc01) + _0x1c01[4]) % _0x35f2
      _0x1c01[4] = (_0xaca7(_0x1c01[4], _0xaf1c) + _0x1c01[3]) % _0x35f2
    end
    local _0x6d0b = _0xec56[_0x9210]
    local _0xdff4 = _0x6d0b % _0x35f2
    local _0x72e7 = (_0x6d0b - _0xdff4) / _0x35f2
    _0xdff4 = _0xaca7(_0xdff4, (_0x9210 * _0x80e9 + _0x44a9) % _0x35f2)
    _0x72e7 = _0xaca7(_0x72e7, (_0x9210 * _0x06e9 + _0xa968) % _0x35f2)
    local _0x5ce8 = _0xdff4 + _0x72e7 * _0x35f2
        local _0x9776 = (_0x386e(_0x5ce8 / _0x6e98) % _0x6e98) - _0xc4e0
        local _0x3ec6 = _0x386e(_0x5ce8 / _0xf17b)
        _0x9210 = _0x9210 + 1
        if _0x3ec6 == 9 then
          _0xe54a[i] = _ha958d[_0x9776]
        elseif _0x3ec6 == 88 then
          _0xe54a[i] = _0x717b[_0x9776 + 1]
        else
          _0x2a0b(_sdec_c43c({66,65,68,0,85,80,86,65,76,85,69,0,66,73,78,68,73,78,71,0,79,80,67,79,68,69,0}) .. tostring(_0x3ec6))
        end
      end
      _ha958d[_0x5df7] = _0x7a2a(_0x6d2d, _0xe54a)
    end
end
  elseif _0xf6a9 == 32 then
    local _0xfd3f = _0x9210 + 86; _0xfd3f = _0xfd3f - _0xfd3f
    do local _h80b0a = _0x7110[_0x5df7]
do
      if _0xfe7a == 0 then
        local _0xceb8 = {}
        local _0xacc9 = _0xb00a - _0x5df7
        for i = 0, _0xacc9 - 1 do _0xceb8[i + 1] = _0x7110[_0x5df7 + i] end
        return _0x2f0a(_0xceb8, 1, _0xacc9)
      elseif _0xfe7a == 1 then
        return
      else
        local _0xacc9 = _0xfe7a - 1
        local _0xceb8 = {}
        for i = 0, _0xacc9 - 1 do _0xceb8[i + 1] = _0x7110[_0x5df7 + i] end
        return _0x2f0a(_0xceb8, 1, _0xacc9)
      end
    end
end
  elseif _0xf6a9 == 80 then
    local _0xcfb5 = (_0x5df7 * 6 + 18)
    do local _h42861 = _0x7110; local _h1449b = _0xe1ce; local _h82c3e = (_0x9210 + _0xfe7a) % 31
_h42861[_0x5df7] = { v = _h42861[_0x5df7] }
end
  else _0x2a0b(_sdec_c43c({66,65,68,0,79,80,67,79,68,69,0}) .. tostring(_0xf6a9) .. _sdec_c43c({0,65,84,0,80,67,0}) .. tostring(_0x9210 - 1)) end
elseif _0x4a31 == 1 then
  if _0xf6a9 == 121 then
    _0x7110[_0x5df7] = _0x7110[_0xfe7a][_0xe1ce(_0x7110, _0x674c, _0x94be)]
  elseif _0xf6a9 == 13 then
    local _0xf6ad = #_0xec56
    do local _hfc3f0 = _0xe1ce
do
      local _0x23fc = _0x7110[_0x5df7]
      local _0x8040
      if _0xfe7a == 0 then _0x8040 = _0xb00a - _0x5df7 - 1 else _0x8040 = _0xfe7a - 1 end
      local _0x13d2 = {}
      for i = 1, _0x8040 do _0x13d2[i] = _0x7110[_0x5df7 + i] end
      local _0xa7d5 = { _0x23fc(_0x2f0a(_0x13d2, 1, _0x8040)) }
      local _0xeb0b = #_0xa7d5
      if _0x94be == 0 then
        for i = 1, _0xeb0b do _0x7110[_0x5df7 + i - 1] = _0xa7d5[i] end
        for i = _0xeb0b + 1, _0xeb0b + 4 do _0x7110[_0x5df7 + i - 1] = nil end
        _0xb00a = _0x5df7 + _0xeb0b
      elseif _0x94be == 1 then
        -- drop all
      else
        local _0xf50b = _0x94be - 1
        for i = 1, _0xf50b do _0x7110[_0x5df7 + i - 1] = _0xa7d5[i] end
        for i = _0xeb0b + 1, _0xf50b do _0x7110[_0x5df7 + i - 1] = nil end
      end
    end
end
  elseif _0xf6a9 == 1 then
    local _0x8348 = _0x7110[_0x5df7]
    do local _hf0666 = _0x7110; local _hd2698 = _0x674c
_hf0666[_0x5df7] = -_hf0666[_0xfe7a]
end
  elseif _0xf6a9 == 25 then
    do local _h879a5 = _0x7110; local _hbbf93 = _0x674c
do local _0x1b78 = _h879a5[_0xfe7a]; for i = _0xfe7a + 1, _0x94be do _0x1b78 = _0x1b78 .. _h879a5[i] end; _h879a5[_0x5df7] = _0x1b78 end
end
  elseif _0xf6a9 == 37 then
    do local _h32ec8 = _0x7110; local _h4cd90 = _0xe1ce
_h32ec8[_0x5df7] = _h32ec8[_0xfe7a] - _0x674c[_0x94be + 1]
end
  elseif _0xf6a9 == 19 then
    local _0xc9be = #_0xec56
    do local _h1e21f = (_0x9210 + _0xfe7a) % 36
_0x7110[_0x5df7][_0xe1ce(_0x7110, _0x674c, _0xfe7a)] = _0xe1ce(_0x7110, _0x674c, _0x94be)
end
  elseif _0xf6a9 == 97 then
    do local _0x95d7 = (_0xe1ce(_0x7110, _0x674c, _0xfe7a) == _0xe1ce(_0x7110, _0x674c, _0x94be)); if not (_0x95d7 == (_0x5df7 ~= 0)) then _0x9210 = _0x9210 + 1 end end
  elseif _0xf6a9 == 49 then
    local _0x63dd = #_0xec56
    do local _h00a22 = _0x7110; local _h1f6dc = _0x674c
for i = _0x5df7, _0xfe7a do _h00a22[i] = nil end
end
  else _0x2a0b(_sdec_c43c({66,65,68,0,79,80,67,79,68,69,0}) .. tostring(_0xf6a9) .. _sdec_c43c({0,65,84,0,80,67,0}) .. tostring(_0x9210 - 1)) end
elseif _0x4a31 == 5 then
  if _0xf6a9 == 41 then
    local _0x4f8a = _0x9210 + 77; _0x4f8a = _0x4f8a - _0x4f8a
    do local _heaa75 = _0x7110; local _h207be = _0x674c
_heaa75[_0x5df7] = _heaa75[_0x5df7] - _heaa75[_0x5df7 + 2]; _0x9210 = _0x9210 + _0xfe7a
end
  elseif _0xf6a9 == 77 then
    local _0x251d = _0x7110[_0x5df7]
    do local _habe16 = _0x7110; local _h96b42 = _0xe1ce
_habe16[_0x5df7] = _h96b42(_habe16, _0x674c, _0xfe7a) - _h96b42(_habe16, _0x674c, _0x94be)
end
  elseif _0xf6a9 == 83 then
    local _0x15e3 = (_0x5df7 * 12 + 41)
    do local _h48bcd = _0x7110
_h48bcd[_0x5df7] = _h48bcd[_0xfe7a] - _0x674c[_0x94be + 1]
end
  elseif _0xf6a9 == 119 then
    local _0xfaa4 = _0x7110[_0x5df7]
    do local _h785aa = _0x7110; local _hcefab = _0x674c
_h785aa[_0x5df7] = #_hcefab
end
  elseif _0xf6a9 == 101 then
    local _0x7a67 = _0x7110[_0x5df7]
    do local _h5e930 = _0x674c; local _h1ccd9 = _0xe1ce
_0x7110[_0x5df7] = {}
end
  elseif _0xf6a9 == 53 then
    do local _h5919e = _0x7110
_h5919e[_0x5df7] = _0xe1ce(_h5919e, _0x674c, _0xfe7a) + _0xe1ce(_h5919e, _0x674c, _0x94be)
end
  else _0x2a0b(_sdec_c43c({66,65,68,0,79,80,67,79,68,69,0}) .. tostring(_0xf6a9) .. _sdec_c43c({0,65,84,0,80,67,0}) .. tostring(_0x9210 - 1)) end
elseif _0x4a31 == 3 then
  if _0xf6a9 == 69 then
    local _0xff2e = #_0xec56
    do local _he8c63 = _0x674c; local _h1ef12 = _0x7110[_0x5df7]
do
      local _0x23fc = _0x7110[_0x5df7]
      local _0x1b78 = _0x7110[_0x5df7 + 1]
      local _0x496b = _0x7110[_0x5df7 + 2]
      local _0xa7d5 = { _0x23fc(_0x1b78, _0x496b) }
      local nres = _0x94be
      for i = 1, nres do _0x7110[_0x5df7 + 2 + i] = _0xa7d5[i] end
      if _0x7110[_0x5df7 + 3] ~= nil then
        _0x7110[_0x5df7 + 2] = _0x7110[_0x5df7 + 3]
      else
        _0x9210 = _0x9210 + 1
      end
    end
end
  elseif _0xf6a9 == 117 then
    do local _h02d18 = _0x7110; local _h52af6 = _0xe1ce
_h02d18[_0x5df7] = _h52af6(_h02d18, _0x674c, _0xfe7a) / _h52af6(_h02d18, _0x674c, _0x94be)
end
  elseif _0xf6a9 == 33 then
    local _0x30a2 = _0x9210 + 75; _0x30a2 = _0x30a2 - _0x30a2
    do local _hcf40b = _0x7110
_hcf40b[_0x5df7] = _0x2608[_0x674c[_0xfe7a + 1]]
end
  elseif _0xf6a9 == 111 then
    local _0x8e16 = (_0x5df7 * 24 + 3)
    do local _hff7fb = _0x674c; local _hfa231 = _0xe1ce
_0x7110[_0x5df7] = -_hfa231(_0x7110, _hff7fb, _0xfe7a)
end
  elseif _0xf6a9 == 105 then
    local _0xa069 = (_0x5df7 * 29 + 25)
    do local _he3297 = _0x7110; local _h6817b = _0x674c; local _h804cd = _0xe1ce; local _h06eb3 = (_0x9210 + _0xfe7a) % 27
_he3297[_0x5df7] = (_0xfe7a ~= 0); if _0x94be ~= 0 then _0x9210 = _0x9210 + 1 end
end
  elseif _0xf6a9 == 45 then
    local _0x49a9 = _0x7110[_0x5df7]
    do local _he00b9 = _0x7110; local _h65c82 = _0x674c
_he00b9[_0x5df7] = not _he00b9[_0xfe7a]
end
  elseif _0xf6a9 == 51 then
    do local _h78c97 = _0x7110; local _h8d9f9 = _0x674c; local _hdb9b5 = (_0x9210 + _0xfe7a) % 20
_h78c97[_0x5df7] = _0xe1ce(_h78c97, _h8d9f9, _0xfe7a) * _0xe1ce(_h78c97, _h8d9f9, _0x94be)
end
  elseif _0xf6a9 == 27 then
    local _0xaefc = #_0xec56
    do local _h7acd7 = _0x7110; local _hd6a57 = _0x674c; local _ha6619 = _0xe1ce
_h7acd7[_0x5df7] = _ha6619(_h7acd7, _hd6a57, _0xfe7a) % _ha6619(_h7acd7, _hd6a57, _0x94be)
end
  elseif _0xf6a9 == 15 then
    local _0x1626 = _0x9210 + 57; _0x1626 = _0x1626 - _0x1626
    do local _h90526 = _0x7110; local _h79751 = _0x674c; local _h6ac11 = _0xe1ce
do local _0x1b78 = _h90526[_0x5df7]; for i = _0xfe7a, _0x94be do _0x1b78 = _0x1b78 .. tostring(_h90526[i]) end; _h90526[_0x5df7] = _0x1b78 end
end
  elseif _0xf6a9 == 9 then
    local _0xaa2d = #_0xec56
    do local _ha6db0 = _0x7110; local _h4d961 = _0x674c
_ha6db0[_0x5df7] = _ha6db0[_0xfe7a]
end
  else _0x2a0b(_sdec_c43c({66,65,68,0,79,80,67,79,68,69,0}) .. tostring(_0xf6a9) .. _sdec_c43c({0,65,84,0,80,67,0}) .. tostring(_0x9210 - 1)) end
elseif _0x4a31 == 4 then
  if _0xf6a9 == 88 then
    local _0x351f = _0x9210 + 42; _0x351f = _0x351f - _0x351f
    do local _hd508d = _0x7110
_hd508d[_0x5df7] = _0x717b[_0xfe7a + 1].v
end
  elseif _0xf6a9 == 10 then
    local _0xd84d = (_0x5df7 * 1 + 42)
    do local _h48d7c = _0x7110; local _hf8eca = _0x674c
_h48d7c[_0x5df7] = _0xe1ce(_h48d7c, _hf8eca, _0xfe7a) + _0xe1ce(_h48d7c, _hf8eca, _0x94be)
end
  elseif _0xf6a9 == 124 then
    do local _hf5ffc = _0x7110; local _h74178 = _0xe1ce; local _h9abf5 = _hf5ffc[_0x5df7]
do local _0xfcd6 = _hf5ffc[_0xfe7a]; _hf5ffc[_0x5df7 + 1] = _0xfcd6; _hf5ffc[_0x5df7] = _0xfcd6[_h74178(_hf5ffc, _0x674c, _0x94be)] end
end
  elseif _0xf6a9 == 40 then
    do local _h02d5f = _0x7110
_h02d5f[_0x5df7] = _h02d5f[_0xfe7a].v
end
  elseif _0xf6a9 == 52 then
    local _0x1fdd = _0x9210 + 42; _0x1fdd = _0x1fdd - _0x1fdd
    do local _hb81dd = _0x7110
do
      _hb81dd[_0x5df7] = _hb81dd[_0x5df7] + _hb81dd[_0x5df7 + 2]
      local _0x788e = _hb81dd[_0x5df7 + 2]
      if (_0x788e > 0 and _hb81dd[_0x5df7] <= _hb81dd[_0x5df7 + 1]) or (_0x788e <= 0 and _hb81dd[_0x5df7] >= _hb81dd[_0x5df7 + 1]) then
        _0x9210 = _0x9210 + _0xfe7a
        _hb81dd[_0x5df7 + 3] = _hb81dd[_0x5df7]
      end
    end
end
  elseif _0xf6a9 == 46 then
    local _0xe26e = (_0x5df7 * 11 + 22)
    do local _h6eda6 = _0x7110; local _h93b2f = _0x674c
_0x717b[_0xfe7a + 1].v = _h6eda6[_0x5df7]
end
  elseif _0xf6a9 == 76 then
    do local _h87cd9 = _0x7110; local _h1830f = _0xe1ce
_h87cd9[_0x5df7] = #_h87cd9[_0xfe7a]
end
  elseif _0xf6a9 == 16 then
    local _0x5a74 = _0x9210 + 38; _0x5a74 = _0x5a74 - _0x5a74
    do local _hd4f9e = _0x7110
_hd4f9e[_0x5df7] = not _hd4f9e[_0xfe7a]
end
  elseif _0xf6a9 == 22 then
    local _0x12ae = _0x7110[_0x5df7]
    do local _0x5844 = (_0xe1ce(_0x7110, _0x674c, _0xfe7a) <= _0xe1ce(_0x7110, _0x674c, _0x94be)); if not (_0x5844 == (_0x5df7 ~= 0)) then _0x9210 = _0x9210 + 1 end end
  else _0x2a0b(_sdec_c43c({66,65,68,0,79,80,67,79,68,69,0}) .. tostring(_0xf6a9) .. _sdec_c43c({0,65,84,0,80,67,0}) .. tostring(_0x9210 - 1)) end
elseif _0x4a31 == 0 then
  if _0xf6a9 == 42 then
    local _0x4805 = _0x7110[_0x5df7]
    do local _h61b62 = _0x7110; local _h9617e = _0x674c; local _h26fde = _0xe1ce; local _h7de4e = _h61b62[_0x5df7]
do
      local _0x9d95 = _h61b62[_0x5df7]
      local _0xacc9 = (_0xfe7a == 0) and (_0xb00a - _0x5df7 - 1) or _0xfe7a
      local offset = (_0x94be - 1) * 50
      for i = 1, _0xacc9 do _0x9d95[offset + i] = _h61b62[_0x5df7 + i] end
    end
end
  elseif _0xf6a9 == 48 then
    do local _hf7d8d = _0x7110; local _had841 = _0x674c; local _h48278 = (_0x9210 + _0xfe7a) % 36
_hf7d8d[_0x5df7] = _0xe1ce(_hf7d8d, _had841, _0xfe7a) + _0xe1ce(_hf7d8d, _had841, _0x94be)
end
  elseif _0xf6a9 == 30 then
    do local _h52914 = _0x7110; local _hedebd = _0x674c
_h52914[_0x5df7] = #_hedebd
end
  elseif _0xf6a9 == 108 then
    local _0xb2dd = _0x9210 + 13; _0xb2dd = _0xb2dd - _0xb2dd
    do local _h42215 = _0x7110
_h42215[_0x5df7] = _0x674c[_0xfe7a + 1]
end
  elseif _0xf6a9 == 90 then
    do local _h59fba = _0x7110; local _h6580f = _0x674c
do local _0x0bb6 = (_0xe1ce(_h59fba, _h6580f, _0xfe7a) < _0xe1ce(_h59fba, _h6580f, _0x94be)); if not (_0x0bb6 == (_0x5df7 ~= 0)) then _0x9210 = _0x9210 + 1 end end
end
  elseif _0xf6a9 == 36 then
    local _0x12f3 = #_0xec56
    do local _h1a9f9 = _0x7110; local _h2698b = _0x674c; local _h8b4e7 = (_0x9210 + _0xfe7a) % 31
do
      if _0xfe7a == 0 then
        for i = 1, _0x5102 do _h1a9f9[_0x5df7 + i - 1] = _0x8ab6[i] end
        for i = _0x5102 + 1, _0x5102 + 4 do _h1a9f9[_0x5df7 + i - 1] = nil end
        _0xb00a = _0x5df7 + _0x5102
      else
        local _0xf50b = _0xfe7a - 1
        for i = 1, _0xf50b do
          if i <= _0x5102 then _h1a9f9[_0x5df7 + i - 1] = _0x8ab6[i] else _h1a9f9[_0x5df7 + i - 1] = nil end
        end
      end
    end
end
  elseif _0xf6a9 == 120 then
    local _0x8ab1 = (_0x5df7 * 25 + 6)
    do local _h83962 = _0x7110; local _h7a549 = _0xe1ce
_0x9210 = _0x9210 + _0xfe7a
end
  elseif _0xf6a9 == 84 then
    local _0x6bde = _0x9210 + 92; _0x6bde = _0x6bde - _0x6bde
    do local _hea116 = _0x7110; local _h46e92 = _0xe1ce
do local _0xbbe6 = not not _hea116[_0x5df7]; if not (_0xbbe6 == (_0x94be ~= 0)) then _0x9210 = _0x9210 + 1 end end
end
  elseif _0xf6a9 == 96 then
    local _0x8582 = (_0x5df7 * 42 + 16)
    do local _h4d1e1 = _0x7110; local _h1e9ee = _0xe1ce; local _h0756b = _h4d1e1[_0x5df7]
do local _0x1b78 = _h4d1e1[_0x5df7]; for i = _0xfe7a, _0x94be do _0x1b78 = _0x1b78 .. tostring(_h4d1e1[i]) end; _h4d1e1[_0x5df7] = _0x1b78 end
end
  else _0x2a0b(_sdec_c43c({66,65,68,0,79,80,67,79,68,69,0}) .. tostring(_0xf6a9) .. _sdec_c43c({0,65,84,0,80,67,0}) .. tostring(_0x9210 - 1)) end
else _0x2a0b(_sdec_c43c({66,65,68,0,66,85,67,75,69,84,0}) .. tostring(_0x4a31)) end
  end
end

if ((function() return false end)()) then
    local _ = _G["game"]
  end

local _0x827f = 
{
  numparams = 0,
  isvararg = true,
  maxstack = 3,
  insns = _0x32f3(_0xdbd3(_0x5394(_0x76a4(_udafe(_sdec_c43c({179,81,102,111,194,125,153,124,33,137,93,143,119,123,82,186,160,113,120,77,244,102,143,52,116,236,104,131,68,84,20,209,200,121,18,21,160,14,221,127,101,255,103,202,74,94,24,183,237,104,60,4,196,98})),43)),6), 937644552, 10696395, 10483488, 29853601, 12561533, 2936152),
  consts = {5},
  protos = {
    {
      numparams = 1,
      isvararg = false,
      maxstack = 2,
      insns = _0x32f3(_0xdbd3(_0x5394(_0x76a4(_udafe(_sdec_c43c({166,119,57,22,173,88,160,55,95,248,93,229,10,22,102,189,192,28,58,104})),16)),2), 3515425, 10696395, 10483488, 29853601, 12561533, 2936152),
      consts = {3},
      protos = {},
      upvs = {},
    }
    ,
  },
  upvs = {},
}

return _0x174d(_0x827f, {}, {...}, _0x20d7(_sdec_c43c({3}), ...))
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
end)(nil)
end

-- real
return (function(...)
  local _env = {_d9023=43581,_daab1=63821,_db026=42754,_d35ba=50784,_d5b68=37871,_db551=46660}
  local _s38fd = _env._d9023
  local _fn = function(...)
return (function(...)
  local _env = {_d1551=43022,_d731c=32427,_ded40=33725,_d5539=53149,_dfcc0=29744,_d3469=37299}
  local _sd69a = _env._dfcc0
  local _fn = function(...)
return (function(...)
  local _env = {_d9b7b=60946,_d1bd1=18679,_d6151=55816,_d3d3b=44898,_d48eb=20796,_da27c=9755}
  local _s2fc7 = _env._d6151
  local _fn = function(...)

local function _sdec_49d3(b)
  local _k = 148
  local _xor = function(a, bb)
    local r, p = 0, 1
    for _ = 1, 8 do
      local ab, cb = a % 2, bb % 2
      if ab ~= cb then r = r + p end
      a = (a - ab) / 2
      bb = (bb - cb) / 2
      p = p * 2
    end
    return r
  end
  local _0x66fd = {}
  for i = 1, #b do _0x66fd[i] = string.char(_xor(b[i], _k)) end
  return table.concat(_0x66fd)
end


local _u461e = table.concat
local _u280d = string.byte
local _u7564 = string.char
local _ub71e = string.sub
local _ufe4a = rawget
local function _u03a1(_u1cb3, _u5aa4)
  local _u56db, _u9f3a = 0, 1
  for _ = 1, 8 do
    local _u4de3, _u1586 = _u1cb3 % 2, _u5aa4 % 2
    if _u4de3 ~= _u1586 then _u56db = _u56db + _u9f3a end
    _u1cb3 = (_u1cb3 - _u4de3) / 2
    _u5aa4 = (_u5aa4 - _u1586) / 2
    _u9f3a = _u9f3a * 2
  end
  return _u56db
end
local _u0341 = 0
do
  -- debug.gethook is present in Lua 5.1 and Luau (debug lib). _0x3157 hook means
  -- someone'_0xa027 tracing us; corrupt the pad.
  local _u2bb7 = debug and debug.gethook
  if _u2bb7 then
    local ok, hk = pcall(_u2bb7)
    if ok and hk ~= nil then _u0341 = _u03a1(_u0341, 204) end
  end
  -- Roblox environment check. In Roblox/Luau, `game` is a userdata living
  -- in the script'_0xa027 environment chain (NOT in `_G`), so we use a bare
  -- global reference rather than `rawget(_G, "game")` which always returns
  -- nil under Roblox. Bare-global access goes through the env __index chain
  -- and finds `game` correctly. Any execution context that doesn'_0x66fd expose
  -- `game` (stock lua5.1, hostile sandbox with stripped env) silently
  -- corrupts the pad.
  if game == nil then
    _u0341 = _u03a1(_u0341, 171)
  end
  -- LuaJIT detector. Roblox is Luau, not LuaJIT. If the `jit` global exists
  -- and has a `.version` field, we're running under LuaJIT (likely in a
  -- hostile sandbox); corrupt the pad.
  if rawget and rawget(_G, _sdec_49d3({254,253,224})) ~= nil then
    _u0341 = _u03a1(_u0341, 90)
  end
end
local _u232a = {186,243,81,13,56,89,48,10,42,170,5,148,3,18,95,179}
local _u25b6 = {3,14,9,6,16,13,10,1,12,4,2,15,11,7,8,5}
local _u07b7 = {}
for _ufd52 = 1, 16 do
  _u07b7[_ufd52] = _u03a1(_u232a[_u25b6[_ufd52]], _u0341)
end
local function _u1108(_0xa027)
  local out = {}
  local len = #_0xa027
  for _ufd52 = 1, len do
    local _u6757 = ((_ufd52 - 1) % 16) + 1
    out[_ufd52] = _u7564(_u03a1(_u280d(_0xa027, _ufd52), _u07b7[_u6757]))
  end
  return _u461e(out)
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = math.pi
    local _ = string.byte("x")
  end

local _0xff1d = _sdec_49d3({164,165,166,167,160,161,162,163,172,173,213,214,215,208,209,210,211,220,221,222,223,216,217,218,219,196,197,198,199,192,193,194,195,204,205,206,245,246,247,240,241,242,243,252,253,254,255,248,249,250,251,228,229,230,231,224,225,226,227,236,237,238,181,183,176,177,178,188,189,190,191,185,175,168,169,170,171,212,202,203,244,239,232,233,234})
local _0x6988 = {}
for i = 1, 85 do _0x6988[string.byte(_0xff1d, i)] = i - 1 end
local function _0x3732(_0xa027, origLen)
  local out = {}
  local outPos = 0
  local sLen = #_0xa027
  local padCount = (5 - (sLen % 5)) % 5
  local i = 1
  while i <= sLen do
    local v = 0
    local group = 0
    while group < 5 do
      local ch
      if i + group <= sLen then
        ch = _0x6988[string.byte(_0xa027, i + group)]
      else
        ch = 84
      end
      v = v * 85 + ch
      group = group + 1
    end
    i = i + 5
    local b0 = math.floor(v / 16777216) % 256
    local b1 = math.floor(v / 65536) % 256
    local b2 = math.floor(v / 256) % 256
    local b3 = v % 256
    out[outPos + 1] = b0
    out[outPos + 2] = b1
    out[outPos + 3] = b2
    out[outPos + 4] = b3
    outPos = outPos + 4
  end
  local finalLen = origLen
  local trimmed = {}
  for k = 1, finalLen do trimmed[k] = out[k] end
  return trimmed
end

if ((function() return false end)()) then
    local _ = string.byte("x")
    local _ = _G["CFrame"]
  end
local function _0xa98f(buf)
  local SYMBOLS = 257
  local EOF = 256
  local INITIAL_COUNT = 1
  local MAX_TOTAL = 16384
  local TOP = 65535
  local HALF = 32768
  local FIRST_QTR = 16384
  local THIRD_QTR = 49152
  local CODE_BITS = 16

  local counts = {}
  for i = 0, SYMBOLS - 1 do counts[i] = 1 end
  local total = SYMBOLS

  local bufLen = #buf
  local bitPos = 0
  local function readBit()
    local bytePos = math.floor(bitPos / 8) + 1
    local bitIdx = 7 - (bitPos - (bytePos - 1) * 8)
    bitPos = bitPos + 1
    if bytePos > bufLen then return 0 end
    local b = buf[bytePos]
    local mask = 1
    for _ = 1, bitIdx do mask = mask * 2 end
    return (math.floor(b / mask) % 2)
  end

  local value = 0
  for _ = 1, CODE_BITS do value = value * 2 + readBit() end
  local low = 0
  local high = TOP
  local out = {}
  local outN = 0

  while true do
    local range = high - low + 1
    local scaled = math.floor(((value - low + 1) * total - 1) / range)
    local acc = 0
    local sym = 0
    for i = 0, SYMBOLS - 1 do
      if acc + counts[i] > scaled then
        sym = i
        break
      end
      acc = acc + counts[i]
    end
    if sym == EOF then break end
    outN = outN + 1
    out[outN] = sym
    local cumLo = acc
    local cumHi = cumLo + counts[sym]
    high = low + math.floor((range * cumHi) / total) - 1
    low = low + math.floor((range * cumLo) / total)
    while true do
      if high < HALF then
        -- nothing
      elseif low >= HALF then
        value = value - HALF
        low = low - HALF
        high = high - HALF
      elseif low >= FIRST_QTR and high < THIRD_QTR then
        value = value - FIRST_QTR
        low = low - FIRST_QTR
        high = high - FIRST_QTR
      else
        break
      end
      low = low * 2
      high = high * 2 + 1
      value = value * 2 + readBit()
    end
    counts[sym] = counts[sym] + 1
    total = total + 1
    if total >= MAX_TOTAL then
      total = 0
      for i = 0, SYMBOLS - 1 do
        local c = math.floor(counts[i] / 2)
        if c < 1 then c = 1 end
        counts[i] = c
        total = total + c
      end
    end
  end
  return out
end

if ((function() return false end)()) then
    local _ = _G["Vector3"]
  end
local function _0x7e21(bytes, _0xb2d8)
  local out = {}
  for i = 1, _0xb2d8 do
    local base = (i - 1) * 7
    local v = 0
    for j = 7, 1, -1 do
      v = v * 256 + bytes[base + j]
    end
    out[i] = v
  end
  return out
end



local _0x44b7 = 33554432
local function _0xee26(a, b)
  local aLo = a % 65536
  local aHi = (a - aLo) / 65536
  local bLo = b % 65536
  local bHi = (b - bLo) / 65536
  local function xor16(_0x9fa2, y)
    local r, p = 0, 1
    for _ = 1, 16 do
      local xb, yb = _0x9fa2 % 2, y % 2
      if xb ~= yb then r = r + p end
      _0x9fa2 = (_0x9fa2 - xb) / 2
      y = (y - yb) / 2
      p = p * 2
    end
    return r
  end
  return xor16(aHi, bHi) * 65536 + xor16(aLo, bLo)
end

-- _0xbde8: stateful (lazy) bytecode decode.
--
-- `_0xfd71` no longer materializes a plaintext instruction array. It
-- returns a "_0x61bb" holding (a) the layer-1-encrypted integer array, (b) the
-- initial feedback-chain state seeded by the per-proto checksum and the
-- script-env fingerprint, and (c) the per-build salt constants. The outer
-- _0x61bb is what `_0xafa7.insns` becomes. Each _0xf5b6() call unboxes these
-- fields into its own local state and advances the decryption lazily at
-- fetch time: instruction `i` is only peeled from the feedback chain
-- when the dispatch loop actually reads it. Control flow that never
-- reaches an instruction (dead code, branches not taken) leaves those
-- cells in their encrypted form. An analyst who dumps the _0x61bb'_0xa027 data
-- field outside the VM gets layer-1-encrypted integers with no way to
-- recover the feedback state without re-running the chain in order.
local function _0xfd71(enc, checksum, seed_a, seed_b, salt_a, salt_b, envConst)
  local env = ((game ~= nil) and 1 or 0)
  local state_a = _0xee26(seed_a, checksum % _0x44b7)
  local state_b = _0xee26(seed_b, (env * envConst + math.floor(checksum / _0x44b7)) % _0x44b7)
  -- numeric indices avoid any chance of the rename pass mangling a
  -- field-key identifier that happens to collide with a VM local name.
  -- Layout: [1]=data, [2]=_0xb2d8, [3]=state_a, [4]=state_b, [5]=salt_a,
  --        [6]=salt_b, [7]=decLvl.  decLvl starts at 0 and only ever
  --        advances — so an inner proto that is executed multiple times
  --        (e.g. a closure called in a loop) reuses the same already-
  --        decrypted instructions on later calls instead of double-
  --        applying layer 1 to the in-place mutated array.
  return { enc, #enc, state_a, state_b, salt_a, salt_b, 0 }
end
local _0x8b21, _0x3e9f, _0x51ec, _0x2f5c = 29970534, 13266633, 28503682, 12185656

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = _G["game"]
    local _ = _G["script"]
  end
-- larpfuscator runtime (plain)
local _0xfd53 = math.floor
local _0x6d7d = select
local _0xce61 = type
local _0x7c92 = setmetatable
local _0x75e2 = getmetatable
local _0x4ced = table.unpack or unpack
local _0x425b = error
local _0x639e = {}
do local _v561ab0 = setmetatable; if _v561ab0 ~= nil then _0x639e.setmetatable = _v561ab0 end end
do local _v7a3c03 = game; if _v7a3c03 ~= nil then _0x639e[_sdec_49d3({243,245,249,241})] = _v7a3c03 end end
do local _v6d7607 = error; _0x639e[_v6d7607 ~= nil and _sdec_49d3({241,230,230,251,230}) or false] = _v6d7607 end
do local _v6a4314 = print; _0x639e[_v6a4314 ~= nil and _sdec_49d3({228,230,253,250,224}) or false] = _v6a4314 end
do local _vb4303d = TeleportService; if _vb4303d ~= nil then _0x639e.TeleportService = _vb4303d end end
do local _v5c49d2 = coroutine; if _v5c49d2 ~= nil then _0x639e.coroutine = _v5c49d2 end end
do local _v1b61e0 = xpcall; if _v1b61e0 ~= nil then _0x639e.xpcall = _v1b61e0 end end
do local _v8f527e = UserInputService; if _v8f527e ~= nil then _0x639e[_sdec_49d3({193,231,241,230,221,250,228,225,224,199,241,230,226,253,247,241})] = _v8f527e end end
do local _v6e14ff = Lighting; if _v6e14ff ~= nil then _0x639e.Lighting = _v6e14ff end end
do local _v47fbbe = assert; if _v47fbbe ~= nil then _0x639e.assert = _v47fbbe end end
do local _v9f2b52 = math; if _v9f2b52 ~= nil then _0x639e.math = _v9f2b52 end end
do local _vd0f4a7 = rawset; if _vd0f4a7 ~= nil then _0x639e[_sdec_49d3({230,245,227,231,241,224})] = _vd0f4a7 end end
do local _v80f035 = ContentProvider; if _v80f035 ~= nil then _0x639e.ContentProvider = _v80f035 end end
do local _v709a07 = script; if _v709a07 ~= nil then _0x639e[_sdec_49d3({231,247,230,253,228,224})] = _v709a07 end end
do local _ve5ea16 = Vector2; if _ve5ea16 ~= nil then _0x639e.Vector2 = _ve5ea16 end end
do local _vff11a4 = NumberRange; if _vff11a4 ~= nil then _0x639e[_sdec_49d3({218,225,249,246,241,230,198,245,250,243,241})] = _vff11a4 end end
do local _v7b6003 = ServerStorage; if _v7b6003 ~= nil then _0x639e.ServerStorage = _v7b6003 end end
do local _v80d4aa = pairs; _0x639e[_v80d4aa ~= nil and _sdec_49d3({228,245,253,230,231}) or false] = _v80d4aa end
do local _v738d0d = Vector3; if _v738d0d ~= nil then _0x639e.Vector3 = _v738d0d end end
do local _v9758c5 = NumberSequenceKeypoint; if _v9758c5 ~= nil then _0x639e[_sdec_49d3({218,225,249,246,241,230,199,241,229,225,241,250,247,241,223,241,237,228,251,253,250,224})] = _v9758c5 end end
do local _vd3d0a1 = UDim; if _vd3d0a1 ~= nil then _0x639e.UDim = _vd3d0a1 end end
do local _v9dfe6c = bit32; if _v9dfe6c ~= nil then _0x639e[_sdec_49d3({246,253,224,167,166})] = _v9dfe6c end end
do local _v2832b8 = Axes; if _v2832b8 ~= nil then _0x639e[_sdec_49d3({213,236,241,231})] = _v2832b8 end end
do local _vcddf60 = Enum; if _vcddf60 ~= nil then _0x639e.Enum = _vcddf60 end end
do local _vffff28 = StarterPlayer; _0x639e[_vffff28 ~= nil and _sdec_49d3({199,224,245,230,224,241,230,196,248,245,237,241,230}) or false] = _vffff28 end
do local _v1fd4cc = RaycastParams; if _v1fd4cc ~= nil then _0x639e[_sdec_49d3({198,245,237,247,245,231,224,196,245,230,245,249,231})] = _v1fd4cc end end
do local _vc93eb6 = rawequal; if _vc93eb6 ~= nil then _0x639e[_sdec_49d3({230,245,227,241,229,225,245,248})] = _vc93eb6 end end
do local _v236909 = spawn; if _v236909 ~= nil then _0x639e.spawn = _v236909 end end
do local _v79014f = tick; if _v79014f ~= nil then _0x639e.tick = _v79014f end end
do local _vcd4078 = Color3; if _vcd4078 ~= nil then _0x639e.Color3 = _vcd4078 end end
do local _v6f78e4 = pcall; if _v6f78e4 ~= nil then _0x639e.pcall = _v6f78e4 end end
do local _v70ea60 = Random; if _v70ea60 ~= nil then _0x639e[_sdec_49d3({198,245,250,240,251,249})] = _v70ea60 end end
do local _v5b5fa3 = io; _0x639e[_v5b5fa3 ~= nil and _sdec_49d3({253,251}) or false] = _v5b5fa3 end
do local _ve64359 = UDim2; _0x639e[_ve64359 ~= nil and _sdec_49d3({193,208,253,249,166}) or false] = _ve64359 end
do local _vdf030d = NumberSequence; if _vdf030d ~= nil then _0x639e[_sdec_49d3({218,225,249,246,241,230,199,241,229,225,241,250,247,241})] = _vdf030d end end
do local _v5f4a5b = utf8; if _v5f4a5b ~= nil then _0x639e[_sdec_49d3({225,224,242,172})] = _v5f4a5b end end
do local _v308df2 = warn; if _v308df2 ~= nil then _0x639e.warn = _v308df2 end end
do local _vd65485 = select; if _vd65485 ~= nil then _0x639e[_sdec_49d3({231,241,248,241,247,224})] = _vd65485 end end
do local _v67a71a = shared; _0x639e[_v67a71a ~= nil and _sdec_49d3({231,252,245,230,241,240}) or false] = _v67a71a end
do local _v4c8c70 = typeof; if _v4c8c70 ~= nil then _0x639e[_sdec_49d3({224,237,228,241,251,242})] = _v4c8c70 end end
do local _v043084 = TweenInfo; if _v043084 ~= nil then _0x639e.TweenInfo = _v043084 end end
do local _v05a045 = InsertService; if _v05a045 ~= nil then _0x639e[_sdec_49d3({221,250,231,241,230,224,199,241,230,226,253,247,241})] = _v05a045 end end
do local _vfd02bb = HttpService; if _vfd02bb ~= nil then _0x639e[_sdec_49d3({220,224,224,228,199,241,230,226,253,247,241})] = _vfd02bb end end
do local _v20937c = unpack; _0x639e[_v20937c ~= nil and _sdec_49d3({225,250,228,245,247,255}) or false] = _v20937c end
do local _vb96b7c = Faces; _0x639e[_vb96b7c ~= nil and _sdec_49d3({210,245,247,241,231}) or false] = _vb96b7c end
do local _v69c2c0 = Instance; if _v69c2c0 ~= nil then _0x639e.Instance = _v69c2c0 end end
do local _vef241b = Region3; if _vef241b ~= nil then _0x639e[_sdec_49d3({198,241,243,253,251,250,167})] = _vef241b end end
do local _v0f26ea = Rect; if _v0f26ea ~= nil then _0x639e.Rect = _v0f26ea end end
do local _v0e8954 = tostring; _0x639e[_v0e8954 ~= nil and _sdec_49d3({224,251,231,224,230,253,250,243}) or false] = _v0e8954 end
do local _vcc8f8e = PhysicalProperties; if _vcc8f8e ~= nil then _0x639e[_sdec_49d3({196,252,237,231,253,247,245,248,196,230,251,228,241,230,224,253,241,231})] = _vcc8f8e end end
do local _v3cda0f = Chat; _0x639e[_v3cda0f ~= nil and _sdec_49d3({215,252,245,224}) or false] = _v3cda0f end
do local _v7a281a = PolicyService; if _v7a281a ~= nil then _0x639e[_sdec_49d3({196,251,248,253,247,237,199,241,230,226,253,247,241})] = _v7a281a end end
do local _v7b9541 = wait; if _v7b9541 ~= nil then _0x639e[_sdec_49d3({227,245,253,224})] = _v7b9541 end end
do local _v2b7b21 = type; if _v2b7b21 ~= nil then _0x639e[_sdec_49d3({224,237,228,241})] = _v2b7b21 end end
do local _vdaccd8 = rawget; if _vdaccd8 ~= nil then _0x639e.rawget = _vdaccd8 end end
do local _v58e0ae = tonumber; if _v58e0ae ~= nil then _0x639e[_sdec_49d3({224,251,250,225,249,246,241,230})] = _v58e0ae end end
do local _v0757a5 = getmetatable; if _v0757a5 ~= nil then _0x639e[_sdec_49d3({243,241,224,249,241,224,245,224,245,246,248,241})] = _v0757a5 end end
do local _v112ece = TextService; if _v112ece ~= nil then _0x639e.TextService = _v112ece end end
do local _vf0e208 = string; _0x639e[_vf0e208 ~= nil and _sdec_49d3({231,224,230,253,250,243}) or false] = _vf0e208 end
do local _v512bbe = debug; if _v512bbe ~= nil then _0x639e[_sdec_49d3({240,241,246,225,243})] = _v512bbe end end
do local _v771930 = DataStoreService; if _v771930 ~= nil then _0x639e.DataStoreService = _v771930 end end
do local _v302280 = ColorSequence; if _v302280 ~= nil then _0x639e[_sdec_49d3({215,251,248,251,230,199,241,229,225,241,250,247,241})] = _v302280 end end
do local _v500888 = Teams; _0x639e[_v500888 ~= nil and _sdec_49d3({192,241,245,249,231}) or false] = _v500888 end
do local _v3d99de = delay; if _v3d99de ~= nil then _0x639e[_sdec_49d3({240,241,248,245,237})] = _v3d99de end end
do local _v577fbe = os; if _v577fbe ~= nil then _0x639e[_sdec_49d3({251,231})] = _v577fbe end end
do local _v723d61 = CollectionService; _0x639e[_v723d61 ~= nil and _sdec_49d3({215,251,248,248,241,247,224,253,251,250,199,241,230,226,253,247,241}) or false] = _v723d61 end
do local _v025492 = workspace; if _v025492 ~= nil then _0x639e[_sdec_49d3({227,251,230,255,231,228,245,247,241})] = _v025492 end end
do local _vaa5d9d = CFrame; if _vaa5d9d ~= nil then _0x639e.CFrame = _vaa5d9d end end
do local _ve8880b = ipairs; _0x639e[_ve8880b ~= nil and _sdec_49d3({253,228,245,253,230,231}) or false] = _ve8880b end
do local _v5c8c7b = task; if _v5c8c7b ~= nil then _0x639e.task = _v5c8c7b end end
do local _v904db3 = collectgarbage; if _v904db3 ~= nil then _0x639e.collectgarbage = _v904db3 end end
do local _v9f11cd = table; _0x639e[_v9f11cd ~= nil and _sdec_49d3({224,245,246,248,241}) or false] = _v9f11cd end
do local _va74eec = rawlen; _0x639e[_va74eec ~= nil and _sdec_49d3({230,245,227,248,241,250}) or false] = _va74eec end
do local _v56336f = Players; if _v56336f ~= nil then _0x639e.Players = _v56336f end end
do local _v6f949a = DateTime; if _v6f949a ~= nil then _0x639e.DateTime = _v6f949a end end
do local _vb2d371 = next; _0x639e[_vb2d371 ~= nil and _sdec_49d3({250,241,236,224}) or false] = _vb2d371 end
do local _vd72666 = BrickColor; if _vd72666 ~= nil then _0x639e.BrickColor = _vd72666 end end
do local _va6407e = time; _0x639e[_va6407e ~= nil and _sdec_49d3({224,253,249,241}) or false] = _va6407e end
do local _v14f8a3 = Ray; if _v14f8a3 ~= nil then _0x639e[_sdec_49d3({198,245,237})] = _v14f8a3 end end
do local _v635612 = ColorSequenceKeypoint; _0x639e[_v635612 ~= nil and _sdec_49d3({215,251,248,251,230,199,241,229,225,241,250,247,241,223,241,237,228,251,253,250,224}) or false] = _v635612 end
do local _vcc89c8 = OverlapParams; if _vcc89c8 ~= nil then _0x639e.OverlapParams = _vcc89c8 end end
_0x639e[false] = nil
local _0x6167
do local _ok, _0x5b61 = pcall(getfenv, 1); if _ok and type(_0x5b61) == _sdec_49d3({224,245,246,248,241}) then _0x6167 = _0x5b61 else _0x6167 = _G end end
local _0x456a = {}
local _0x0f17 = {}
local _0x804c = setmetatable({}, {
  __index = function(_, k)
    local w = _0x456a[k]
    if w == _0x0f17 then return nil end
    if w ~= nil then return w end
    local _0xa027 = _0x639e[k]
    if _0xa027 ~= nil then return _0xa027 end
    return _0x6167[k]
  end,
  __newindex = function(_, k, v)
    if v == nil then _0x456a[k] = _0x0f17 else _0x456a[k] = v end
  end,
})

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = math.huge
    local _ = math.pi
  end
local _0x2fae = 4096
local _0xe7f3 = 16383
local _0x6664 = 16384
local _0xc0c9 = 268435456
local _0x1a83 = 4398046511104
local _0x50ca = 8192


local _0xf5b6

local function _0x37ac(_0xe507, _0x2f0d, _0x9fa2)
  if _0x9fa2 >= _0x50ca then return _0x2f0d[_0x9fa2 - _0x50ca + 1] end
  return _0xe507[_0x9fa2]
end

local function _0xf9ff(_0x8d58, _0x19f3)
  return function(...)
    local _0xb2d8 = _0x6d7d(_sdec_49d3({183}), ...)
    return _0xf5b6(_0x8d58, _0x19f3, { ... }, _0xb2d8)
  end
end

_0xf5b6 = function(_0xafa7, _0x02ae, _0x3003, _0x84ef)
  local _0x2368 = _0xafa7.insns
  local _0x03fa = _0x2368[1]
  local _0x8522 = _0xafa7.consts
  local _0x59ed = _0xafa7.protos
  local _0x6655 = _0xafa7.maxstack or 64
  local _0xe507 = {}
  for i = 0, _0x6655 + 16 do _0xe507[i] = nil end
  _0x84ef = _0x84ef or 0
  local _0xe9ff = _0xafa7.numparams
  for i = 1, _0xe9ff do _0xe507[i - 1] = _0x3003[i] end
  local _0x264c = nil
  local _0x33fa = 0
  if _0xafa7.isvararg then
    _0x264c = {}
    _0x33fa = _0x84ef - _0xe9ff
    if _0x33fa < 0 then _0x33fa = 0 end
    for i = 1, _0x33fa do _0x264c[i] = _0x3003[_0xe9ff + i] end
  end
  local _0xc188 = 1
  local _0x67e4 = _0xe9ff
  local _0xb875 = _0x2368[2]
  while _0xc188 <= _0xb875 do
    while _0x2368[7] < _0xc188 do
      local _0x8eef = _0x2368[7] + 1
      _0x2368[7] = _0x8eef
      local _0x5b61 = _0x03fa[_0x8eef]
      local _0x0562 = _0x5b61 % _0x44b7
      local _0x1668 = (_0x5b61 - _0x0562) / _0x44b7
      local _0xb76a = _0xee26(_0x2368[3], (_0x8eef * _0x2368[5]) % _0x44b7)
      local _0xba4d = _0xee26(_0x2368[4], (_0x8eef * _0x2368[6]) % _0x44b7)
      local _0xbe7e = _0xee26(_0x0562, _0xb76a)
      local _0x354a = _0xee26(_0x1668, _0xba4d)
      _0x03fa[_0x8eef] = _0xbe7e + _0x354a * _0x44b7
      _0x2368[3] = (_0xee26(_0x2368[3], _0xbe7e) + _0x2368[4]) % _0x44b7
      _0x2368[4] = (_0xee26(_0x2368[4], _0x354a) + _0x2368[3]) % _0x44b7
    end
    local _0xa539 = _0x03fa[_0xc188]
    local _0xa9c9 = _0xa539 % _0x44b7
    local _0x9423 = (_0xa539 - _0xa9c9) / _0x44b7
    _0xa9c9 = _0xee26(_0xa9c9, (_0xc188 * _0x8b21 + _0x3e9f) % _0x44b7)
    _0x9423 = _0xee26(_0x9423, (_0xc188 * _0x51ec + _0x2f5c) % _0x44b7)
    local _0x0652 = _0xa9c9 + _0x9423 * _0x44b7
    local _0x3157 = (_0x0652 % _0x6664) - _0x2fae
    local _0xbde8 = (_0xfd53(_0x0652 / _0x6664) % _0x6664) - _0x2fae
    local _0xe3eb = (_0xfd53(_0x0652 / _0xc0c9) % _0x6664) - _0x2fae
    local _0x6443 = _0xfd53(_0x0652 / _0x1a83)
    _0xc188 = _0xc188 + 1
local _0x348a = _0x6443 % 4
if _0x348a == 2 then
  if _0x6443 == 54 then
    local _0x280d = (_0x3157 * 38 + 47)
    _0xe507[_0x3157] = _0xe507[_0xbde8]
  elseif _0x6443 == 126 then
    do local _h2be44 = _0xe507
_h2be44[_0x3157] = not _h2be44[_0xbde8]
end
  elseif _0x6443 == 82 then
    local _0xb80a = _0xc188 + 24; _0xb80a = _0xb80a - _0xb80a
    do local _ha8bf3 = _0x37ac; local _h2ea55 = _0xe507[_0x3157]
do
      _0xe507[_0x3157] = _0xe507[_0x3157] + _0xe507[_0x3157 + 2]
      local _0xfaa2 = _0xe507[_0x3157 + 2]
      if (_0xfaa2 > 0 and _0xe507[_0x3157] <= _0xe507[_0x3157 + 1]) or (_0xfaa2 <= 0 and _0xe507[_0x3157] >= _0xe507[_0x3157 + 1]) then
        _0xc188 = _0xc188 + _0xbde8
        _0xe507[_0x3157 + 3] = _0xe507[_0x3157]
      end
    end
end
  elseif _0x6443 == 78 then
    local _0x9ceb = _0xe507[_0x3157]
    do local _h856c7 = _0xe507; local _h58988 = _0x8522; local _hdde9c = (_0xc188 + _0xbde8) % 13
do local _0xa3c9 = (_0x37ac(_h856c7, _h58988, _0xbde8) <= _0x37ac(_h856c7, _h58988, _0xe3eb)); if not (_0xa3c9 == (_0x3157 ~= 0)) then _0xc188 = _0xc188 + 1 end end
end
  elseif _0x6443 == 6 then
    do local _h86d6a = _0xe507; local _hb6314 = _0x37ac; local _h00b34 = _h86d6a[_0x3157]
do
      local _0x4188 = _h86d6a[_0x3157]
      local _0xa027 = _h86d6a[_0x3157 + 1]
      local _0x0dbb = _h86d6a[_0x3157 + 2]
      local _0xc5ad = { _0x4188(_0xa027, _0x0dbb) }
      local nres = _0xe3eb
      for i = 1, nres do _h86d6a[_0x3157 + 2 + i] = _0xc5ad[i] end
      if _h86d6a[_0x3157 + 3] ~= nil then
        _h86d6a[_0x3157 + 2] = _h86d6a[_0x3157 + 3]
      else
        _0xc188 = _0xc188 + 1
      end
    end
end
  elseif _0x6443 == 2 then
    do local _hef4fb = _0xe507; local _hfba54 = _0x8522; local _h749b3 = (_0xc188 + _0xbde8) % 32
_hef4fb[_0x3157] = _hfba54[_0xbde8 + 1]
end
  elseif _0x6443 == 26 then
    local _0x246c = _0xc188 + 56; _0x246c = _0x246c - _0x246c
    do local _h80bd8 = _0xe507
do
      local _0x4188 = _h80bd8[_0x3157]
      local _0xfea2
      if _0xbde8 == 0 then _0xfea2 = _0x67e4 - _0x3157 - 1 else _0xfea2 = _0xbde8 - 1 end
      local _0xed93 = {}
      for i = 1, _0xfea2 do _0xed93[i] = _h80bd8[_0x3157 + i] end
      return _0x4188(_0x4ced(_0xed93, 1, _0xfea2))
    end
end
  elseif _0x6443 == 70 then
    local _0x8776 = _0xc188 + 45; _0x8776 = _0x8776 - _0x8776
    do local _he0bce = _0x8522
do
      if _0xbde8 == 0 then
        for i = 1, _0x33fa do _0xe507[_0x3157 + i - 1] = _0x264c[i] end
        for i = _0x33fa + 1, _0x33fa + 4 do _0xe507[_0x3157 + i - 1] = nil end
        _0x67e4 = _0x3157 + _0x33fa
      else
        local _0x7d60 = _0xbde8 - 1
        for i = 1, _0x7d60 do
          if i <= _0x33fa then _0xe507[_0x3157 + i - 1] = _0x264c[i] else _0xe507[_0x3157 + i - 1] = nil end
        end
      end
    end
end
  elseif _0x6443 == 50 then
    local _0x8e42 = (_0x3157 * 30 + 30)
    do local _h2cbf6 = _0xe507
_h2cbf6[_0x3157] = -_h2cbf6[_0xbde8]
end
  elseif _0x6443 == 114 then
    local _0x6cb7 = (_0x3157 * 18 + 48)
    do local _hdf3d4 = _0x37ac; local _h19fb0 = _0x3157 + 11
_0xe507[_0x3157] = {}
end
  elseif _0x6443 == 122 then
    local _0x24c9 = _0xe507[_0x3157]
    do local _hb44b3 = _0xe507; local _h3c293 = _0x8522; local _h9ab8b = _0x37ac
for i = _0x3157, _0xbde8 do _hb44b3[i] = nil end
end
  elseif _0x6443 == 118 then
    local _0xd595 = (_0x3157 * 45 + 35)
    do local _hc1a28 = _0xe507; local _ha87ec = _0x37ac
_hc1a28[_0x3157] = _ha87ec(_hc1a28, _0x8522, _0xbde8) / _ha87ec(_hc1a28, _0x8522, _0xe3eb)
end
  elseif _0x6443 == 58 then
    local _0x4e31 = _0xe507[_0x3157]
    do local _h9fce4 = _0xe507
_h9fce4[_0x3157] = _0x37ac(_h9fce4, _0x8522, _0xbde8) % _0x37ac(_h9fce4, _0x8522, _0xe3eb)
end
  elseif _0x6443 == 38 then
    do local _h39a65 = _0xe507
_h39a65[_0x3157] = not _h39a65[_0xbde8]
end
  elseif _0x6443 == 46 then
    local _0xd7ae = _0xe507[_0x3157]
    do local _h87f38 = _0xe507; local _h8720a = (_0xc188 + _0xbde8) % 13
_h87f38[_0x3157] = not _h87f38[_0xbde8]
end
  elseif _0x6443 == 14 then
    local _0x87e5 = (_0x3157 * 46 + 21)
    do local _h27eca = _0xe507
_h27eca[_0x3157] = { v = _h27eca[_0x3157] }
end
  elseif _0x6443 == 86 then
    local _0x825b = #_0x03fa
    do local _h439f3 = _0xe507; local _hb033a = _0x8522; local _h966b8 = (_0xc188 + _0xbde8) % 27
do local _0x49f0 = _h439f3[_0xbde8]; _h439f3[_0x3157 + 1] = _0x49f0; _h439f3[_0x3157] = _0x49f0[_0x37ac(_h439f3, _hb033a, _0xe3eb)] end
end
  elseif _0x6443 == 42 then
    do local _hc1dc9 = _0xe507
do local _0x66fd = _hc1dc9[_0xbde8]; _hc1dc9[_0x3157] = _0x66fd and _0x66fd[_0x37ac(_hc1dc9, _0x8522, _0xe3eb)] end
end
  elseif _0x6443 == 106 then
    do local _hd6d09 = _0xe507; local _h43834 = _0x8522; local _hcc2da = _0x37ac; local _h91b74 = _hd6d09[_0x3157]
_hd6d09[_0x3157] = _0x804c[_h43834[_0xbde8 + 1]]
end
  else _0x425b(_sdec_49d3({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x6443) .. _sdec_49d3({180,245,224,180,228,247,180}) .. tostring(_0xc188 - 1)) end
elseif _0x348a == 1 then
  if _0x6443 == 37 then
    local _0x0568 = #_0x03fa
    do local _hb5c4e = _0xe507
do local _0x66fd = _hb5c4e[_0xbde8]; _hb5c4e[_0x3157] = _0x66fd and _0x66fd[_0x37ac(_hb5c4e, _0x8522, _0xe3eb)] end
end
  elseif _0x6443 == 53 then
    do local _h71ce6 = _0xe507; local _hc3b58 = _0x37ac; local _hd2b2c = _h71ce6[_0x3157]
_h71ce6[_0x3157] = _0x8522[_0xbde8 + 1]; _0xc188 = _0xc188 + 1
end
  elseif _0x6443 == 21 then
    local _0x98b0 = (_0x3157 * 44 + 2)
    do local _h353d3 = _0xe507; local _hdd787 = _0x37ac
_h353d3[_0x3157] = (_h353d3[_0xbde8] == _h353d3[_0xe3eb])
end
  elseif _0x6443 == 117 then
    local _0xa024 = _0xe507[_0x3157]
    do local _h0b920 = _0xe507
do
      local _0x8d58 = _0x59ed[_0xbde8 + 1]
      local _0x19f3 = {}
      for i = 1, #_0x8d58.upvs do
        while _0x2368[7] < _0xc188 do
      local _0x8eef = _0x2368[7] + 1
      _0x2368[7] = _0x8eef
      local _0x5b61 = _0x03fa[_0x8eef]
      local _0x0562 = _0x5b61 % _0x44b7
      local _0x1668 = (_0x5b61 - _0x0562) / _0x44b7
      local _0xb76a = _0xee26(_0x2368[3], (_0x8eef * _0x2368[5]) % _0x44b7)
      local _0xba4d = _0xee26(_0x2368[4], (_0x8eef * _0x2368[6]) % _0x44b7)
      local _0xbe7e = _0xee26(_0x0562, _0xb76a)
      local _0x354a = _0xee26(_0x1668, _0xba4d)
      _0x03fa[_0x8eef] = _0xbe7e + _0x354a * _0x44b7
      _0x2368[3] = (_0xee26(_0x2368[3], _0xbe7e) + _0x2368[4]) % _0x44b7
      _0x2368[4] = (_0xee26(_0x2368[4], _0x354a) + _0x2368[3]) % _0x44b7
    end
    local _0xa539 = _0x03fa[_0xc188]
    local _0xa9c9 = _0xa539 % _0x44b7
    local _0x9423 = (_0xa539 - _0xa9c9) / _0x44b7
    _0xa9c9 = _0xee26(_0xa9c9, (_0xc188 * _0x8b21 + _0x3e9f) % _0x44b7)
    _0x9423 = _0xee26(_0x9423, (_0xc188 * _0x51ec + _0x2f5c) % _0x44b7)
    local _0x11c8 = _0xa9c9 + _0x9423 * _0x44b7
        local _0x1cff = (_0xfd53(_0x11c8 / _0x6664) % _0x6664) - _0x2fae
        local _0xa1c4 = _0xfd53(_0x11c8 / _0x1a83)
        _0xc188 = _0xc188 + 1
        if _0xa1c4 == 54 then
          _0x19f3[i] = _h0b920[_0x1cff]
        elseif _0xa1c4 == 61 then
          _0x19f3[i] = _0x02ae[_0x1cff + 1]
        else
          _0x425b(_sdec_49d3({246,245,240,180,225,228,226,245,248,225,241,180,246,253,250,240,253,250,243,180,251,228,247,251,240,241,180}) .. tostring(_0xa1c4))
        end
      end
      _h0b920[_0x3157] = _0xf9ff(_0x8d58, _0x19f3)
    end
end
  elseif _0x6443 == 41 then
    do local _h81be2 = _0xe507; local _hf8f54 = _0x37ac; local _h96027 = _0x3157 + 39
do
      if _0xbde8 == 0 then
        local _0x8312 = {}
        local _0xb2d8 = _0x67e4 - _0x3157
        for i = 0, _0xb2d8 - 1 do _0x8312[i + 1] = _h81be2[_0x3157 + i] end
        return _0x4ced(_0x8312, 1, _0xb2d8)
      elseif _0xbde8 == 1 then
        return
      else
        local _0xb2d8 = _0xbde8 - 1
        local _0x8312 = {}
        for i = 0, _0xb2d8 - 1 do _0x8312[i + 1] = _h81be2[_0x3157 + i] end
        return _0x4ced(_0x8312, 1, _0xb2d8)
      end
    end
end
  elseif _0x6443 == 5 then
    local _0x237e = (_0x3157 * 21 + 31)
    do local _h51ca1 = _0xe507; local _h7df22 = _0x8522; local _hae828 = _h51ca1[_0x3157]
_h51ca1[_0x3157] = _h51ca1[_0x3157] - _h51ca1[_0x3157 + 2]; _0xc188 = _0xc188 + _0xbde8
end
  elseif _0x6443 == 25 then
    do local _hdc1a7 = _0xe507; local _hdebaf = _0x8522; local _h2db14 = _0x37ac
_hdc1a7[_0x3157] = _h2db14(_hdc1a7, _hdebaf, _0xbde8) ^ _h2db14(_hdc1a7, _hdebaf, _0xe3eb)
end
  elseif _0x6443 == 61 then
    _0xe507[_0x3157] = _0x02ae[_0xbde8 + 1].v
  elseif _0x6443 == 1 then
    do local _h8bbd4 = _0xe507; local _h7dfc6 = _0x8522; local _hea5a5 = _h8bbd4[_0x3157]
do
      local _0x4188 = _h8bbd4[_0x3157]
      local _0xfea2
      if _0xbde8 == 0 then _0xfea2 = _0x67e4 - _0x3157 - 1 else _0xfea2 = _0xbde8 - 1 end
      local _0xed93 = {}
      for i = 1, _0xfea2 do _0xed93[i] = _h8bbd4[_0x3157 + i] end
      local _0xc5ad = { _0x4188(_0x4ced(_0xed93, 1, _0xfea2)) }
      local _0x2431 = #_0xc5ad
      if _0xe3eb == 0 then
        for i = 1, _0x2431 do _h8bbd4[_0x3157 + i - 1] = _0xc5ad[i] end
        for i = _0x2431 + 1, _0x2431 + 4 do _h8bbd4[_0x3157 + i - 1] = nil end
        _0x67e4 = _0x3157 + _0x2431
      elseif _0xe3eb == 1 then
        -- drop all
      else
        local _0x7d60 = _0xe3eb - 1
        for i = 1, _0x7d60 do _h8bbd4[_0x3157 + i - 1] = _0xc5ad[i] end
        for i = _0x2431 + 1, _0x7d60 do _h8bbd4[_0x3157 + i - 1] = nil end
      end
    end
end
  elseif _0x6443 == 81 then
    local _0x2643 = #_0x03fa
    do local _hb1f1c = _0xe507; local _h09321 = _0x8522; local _h8fb71 = _0x37ac; local _hed74c = _hb1f1c[_0x3157]
_hb1f1c[_0x3157] = _hb1f1c[_0xbde8][_h8fb71(_hb1f1c, _h09321, _0xe3eb)]
end
  elseif _0x6443 == 57 then
    local _0x5ef2 = (_0x3157 * 40 + 40)
    _0xe507[_0xbde8].v = _0xe507[_0x3157]
  elseif _0x6443 == 97 then
    do local _hd4c75 = _0xe507
_hd4c75[_0x3157][_0x37ac(_hd4c75, _0x8522, _0xbde8)] = _0x37ac(_hd4c75, _0x8522, _0xe3eb)
end
  else _0x425b(_sdec_49d3({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x6443) .. _sdec_49d3({180,245,224,180,228,247,180}) .. tostring(_0xc188 - 1)) end
elseif _0x348a == 0 then
  if _0x6443 == 56 then
    do local _h4696f = _0xe507; local _h0095e = _0x8522
do local _0x7f87 = (_0x37ac(_h4696f, _h0095e, _0xbde8) < _0x37ac(_h4696f, _h0095e, _0xe3eb)); if not (_0x7f87 == (_0x3157 ~= 0)) then _0xc188 = _0xc188 + 1 end end
end
  elseif _0x6443 == 8 then
    local _0x2d06 = _0xe507[_0x3157]
    do local _hc9871 = _0xe507; local _hf84d3 = _0x8522
do local _0xa027 = _hc9871[_0xbde8]; for i = _0xbde8 + 1, _0xe3eb do _0xa027 = _0xa027 .. _hc9871[i] end; _hc9871[_0x3157] = _0xa027 end
end
  elseif _0x6443 == 84 then
    do local _ha934f = _0xe507; local _h6f83a = _0x8522; local _h2692c = (_0xc188 + _0xbde8) % 33
_ha934f[_0x3157] = _0x37ac(_ha934f, _h6f83a, _0xbde8) + _0x37ac(_ha934f, _h6f83a, _0xe3eb)
end
  elseif _0x6443 == 28 then
    do local _hbc1b1 = _0xe507; local _h6a1f4 = _0x8522
_hbc1b1[_0x3157] = _0x37ac(_hbc1b1, _h6a1f4, _0xbde8) * _0x37ac(_hbc1b1, _h6a1f4, _0xe3eb)
end
  elseif _0x6443 == 104 then
    local _0xee84 = _0xe507[_0x3157]
    do local _he6d24 = _0xe507; local _h3a1c9 = _0x8522
_0xc188 = _0xc188 + _0xbde8
end
  elseif _0x6443 == 20 then
    do local _ha74ff = _0xe507; local _h063c9 = _0x8522
do
      local _0x66fd = _ha74ff[_0x3157]
      local _0xb2d8 = (_0xbde8 == 0) and (_0x67e4 - _0x3157 - 1) or _0xbde8
      local offset = (_0xe3eb - 1) * 50
      for i = 1, _0xb2d8 do _0x66fd[offset + i] = _ha74ff[_0x3157 + i] end
    end
end
  elseif _0x6443 == 92 then
    local _0x3deb = _0xc188 + 72; _0x3deb = _0x3deb - _0x3deb
    do local _h1ef44 = _0x8522
do local _0xedbc = (_0x37ac(_0xe507, _h1ef44, _0xbde8) == _0x37ac(_0xe507, _h1ef44, _0xe3eb)); if not (_0xedbc == (_0x3157 ~= 0)) then _0xc188 = _0xc188 + 1 end end
end
  elseif _0x6443 == 4 then
    do local _hcf68e = _0xe507; local _hd7600 = _0x37ac; local _hab093 = _0x3157 + 16
_0x804c[_0x8522[_0xbde8 + 1]] = _hcf68e[_0x3157]
end
  elseif _0x6443 == 96 then
    do local _hed68b = _0xe507; local _h86f6c = _0x8522
_hed68b[_0x3157] = not _hed68b[_0xbde8]
end
  elseif _0x6443 == 88 then
    local _0xc41b = _0xc188 + 91; _0xc41b = _0xc41b - _0xc41b
    do local _ha0bf3 = _0x8522
_0xe507[_0x3157] = _0xe507[_0xbde8].v
end
  elseif _0x6443 == 60 then
    local _0x8919 = (_0x3157 * 35 + 3)
    do local _he83ef = _0x3157 + 6
_0xe507[_0x3157] = (_0xbde8 ~= 0); if _0xe3eb ~= 0 then _0xc188 = _0xc188 + 1 end
end
  elseif _0x6443 == 124 then
    local _0xf3b5 = _0xe507[_0x3157]
    do local _h668d4 = _0x8522; local _hc80dd = _0x3157 + 12
do local _0xa027 = _0xe507[_0x3157]; for i = _0xbde8, _0xe3eb do _0xa027 = _0xa027 .. tostring(_0xe507[i]) end; _0xe507[_0x3157] = _0xa027 end
end
  else _0x425b(_sdec_49d3({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x6443) .. _sdec_49d3({180,245,224,180,228,247,180}) .. tostring(_0xc188 - 1)) end
elseif _0x348a == 3 then
  if _0x6443 == 75 then
    local _0xeaff = #_0x03fa
    do local _hf5a36 = _0xe507; local _hca3a3 = _0x37ac; local _hc3323 = (_0xc188 + _0xbde8) % 21
_hf5a36[_0x3157] = (_hf5a36[_0xbde8] == _hf5a36[_0xe3eb])
end
  elseif _0x6443 == 91 then
    do local _h9b5b0 = _0x37ac; local _hf8559 = _0x3157 + 19
_0x02ae[_0xbde8 + 1].v = _0xe507[_0x3157]
end
  elseif _0x6443 == 79 then
    local _0x22da = #_0x03fa
    do local _he9c93 = _0xe507; local _hde819 = _0x8522; local _hf7993 = _0x37ac
_he9c93[_0x3157] = #_hde819
end
  elseif _0x6443 == 55 then
    do local _h26f82 = _0x37ac
_0xe507[_0x3157] = _h26f82(_0xe507, _0x8522, _0xbde8) - _h26f82(_0xe507, _0x8522, _0xe3eb)
end
  elseif _0x6443 == 11 then
    local _0xe2c4 = _0xe507[_0x3157]
    do local _h6e163 = _0xe507
-- no-_0x6443 under our _0x61bb model
end
  elseif _0x6443 == 51 then
    do local _h09d7a = _0x37ac
_0xe507[_0x3157] = #_0xe507[_0xbde8]
end
  elseif _0x6443 == 111 then
    do local _h10c4c = _0xe507
do local _0x4902 = not not _h10c4c[_0x3157]; if not (_0x4902 == (_0xe3eb ~= 0)) then _0xc188 = _0xc188 + 1 end end
end
  elseif _0x6443 == 63 then
    do local _h37fe2 = _0xe507; local _h7ce95 = _0x37ac; local _hbb379 = (_0xc188 + _0xbde8) % 23
_0xc188 = _0xc188 + _0xbde8; _h37fe2[_0x3157] = _h37fe2[_0x3157 + 1]
end
  else _0x425b(_sdec_49d3({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x6443) .. _sdec_49d3({180,245,224,180,228,247,180}) .. tostring(_0xc188 - 1)) end
else _0x425b(_sdec_49d3({246,245,240,180,246,225,247,255,241,224,180}) .. tostring(_0x348a)) end
  end
end

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = _G["game"]
  end

local _0xe335 = 
{
  numparams = 0,
  isvararg = true,
  maxstack = 17,
  insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({141,182,224,140,109,199,8,74,75,225,83,230,233,197,165,214,141,235,197,171,75,188,110,104,37,254,22,157,227,222,246,212,249,248,130,136,15,223,111,8,38,198,52,148,166,225,235,135,150,200,228,175,103,249,6,71,121,231,15,179,213,232,172,243,131,236,246,151,6,194,104,106,111,244,76,171,215,144,220,237,241,162,200,182,105,212,106,113,70,167,52,176,200,229,248,223,243,231,252,187,16,196,80,125,108,166,3,237,242,130,161,230,177,204,246,134,23,215,88,111,68,218,3,147,166,194,184,238,241,203,141,170,26,222,77,102,43,244,18,163,254,159,254,251,188,171,128,251,15,167,100,86,79,224,78,238,183,154,199,224,189,232,157,153,102,225,7,109,78,255,4,174,215,223,224,144,224,180,217,187,119,169,26,88,37,240,66,129,225,145,184,250,161,250,202,166,102,250,21,80,119,201,61,255,224,142,223,135,182,209,219,146,3,190,120,124,106,175,33,146,180,221,191,192,174,160,242,175,127,236,93,93,42,173,16,226,239,228,246,234,179,231,198,155,105,254,121,74,66,176,30,143,248,251,172,229,143,253,199,230,81,228,114,67,78,208,79,135,192,152,193,145,157,181,222,147,101,171,73,82,54,164,85,131,162,223,192,227,179,246,234,246,22,233,3,105,80,233,88,138,217,156,200,157,176,232,233,137,22,241,24,120,70,173,20,140,173,156,222,159,182,184,133,140,108,240,22,25,49,203,80,131,175,224,171,136,181,227,137,245,13,243,115,120,124,208,15,156,195,244,241,155,180,202,129,231,2,249,118,89,63,254,42,130,207,142,202,207,188,234,248,160,108,210,6,15,88,169,52,133,241,234,210,135,191,197,215,232,64,223,100,27,77,219,5,159,203,146,167,137,230,182,137,176,73,240,82,8,57,204,45,226,178,202,247,141,182,175,210,165,121,179,12,116,62,252,68,153,201,156,206,204,185,204,242,182,100,207,10,69,56,218,51,247,231,206,240,200,241,174,203,135,84,163,81,15,106,200,83,234,188,240,189,151,134,199,214,154,16,244,14,25,69,186,57,189,231,203,203,149,142,250,192,249,119,237,2,123,71,241,81,134,209,150,242,238,237,237,233,165,66,224,22,25,87,188,31,178,184,254,241,233,130,222,241,173,92,160,12,89,98,245,35,162,220,254,254,133,187,252,201,189,27,193,111,76,35,178,56,238,234,193,167,254,143,228,222,133,2,189,86,31,119,238,5,128,254,193,214,158,174,160,143,157,83,179,2,65,61,186,22,244,194,141,169,205,187,237,234,188,107,227,11,123,52,191,37,187,232,243,186,145,171,177,245,172,112,237,102,79,82,253,34,181,166,226,214,255,157,205,248,246,20,241,88,71,89,199,29,139,254,221,206,255,144,233,205,254,95,201,73,98,73,225,45,190,236,252,249,144,130,206,255,156,30,171,91,99,109,245,30,155,234,148,246,149,249,201,221,240,65,234,14,83,53,239,19,153,248,217,252,134,180,189,209,248,10,214,67,107,122,177,40,251,215,254,183,198,150,195,137,188,15,236,0,25,95,188,95,174,166,204,218,129,224,211,206,148,95,174,74,19,85,201,68,245,160,230,169,194,163,197,241,162,72,179,13,71,97,204,66,181,214,153,221,159,225,208,224,168,69,200,80,96,40,189,78,245,175,250,243,231,134,216,140,242,94,179,126,79,36,177,85,165,169,223,213,200,149,247,130,171,10,174,85,102,115,168,91,167,194,156,179,208,163,209,243,141,72,170,0,76,45,255,5,128,224,238,240,227,154,217,197,152,83,160,123,95,41,227,66,169,185,151,248,157,245,203,154,165,70,160,0,93,120,223,19,232,245,142,206,197,188,230,208,171,65,209,67,116,117,223,33,152,199,206,219,218,164,174,228,167,127,240,100,77,52,167,9,230,173,217,217,157,149,199,249,179,92,245,80,92,114,245,22,250,247,207,236,228,160,204,139,162,91,245,3,24,124,221,37,237,254,210,167,233,155,177,217,142,101,241,66,27,105,203,12,249,255,247,215,134,230,175,137,186,110,197,24,71,98,203,63,138,243,227,242,239,143,172,221,242,126,218,89,21,103,160,62,166,173,193,192,229,160,203,232,174,31,238,70,98,66,218,87,247,244,194,236,149,144,167,222,245,87,190,110,31,115,224,83,160,187,151,209,244,139,202,200,191,68,197,67,3,48,212,76,238,245,205,175,245,185,246,249,141,66,209,97,21,88,161,8,133,243,253,175,227,227,223,141,179,101,199,90,107,71,229,62,153,225,221,162,157,242,201,214,177,82,200,89,75,70,200,22,186,236,231,248,235,135,171,197,230,99,177,74,95,51,168,35,159,224,201,220,156,135,176,253,151,121,223,76,27,119,242,25,165,209,159,220,133,237,223,228,140,2,214,116,10,60,241,55,159,230,215,187,213,155,202,133,156,90,228,126,7,94,166,36,227,181,143,192,204,240,178,134,168,77,171,115,105,77,235,40,184,188,208,173,200,145,196,150,253,125,188,91,94,68,208,51,225,196,225,203,216,141,174,249,235,3,243,9,112,79,188,57,239,232,159,229,159,170,175,141,162,90,174,83,105,38,207,74,187,236,200,199,212,190,243,199,164,68,240,104,100,100,162,20,136,206,137,224,216,185,225,232,190,117,179,118,121,86,219,6,164,221,149,204,156,236,208,232,142,102,172,13,111,57,178,92,253,169,151,162,239,140,230,234,228,10,162,125,111,104,172,63,137,203,159,207,144,180,216,139,132,22,255,95,98,38,221,32,153,221,157,175,197,175,176,207,230,115,233,79,8,72,165,1,130,166,144,231,203,249,198,200,181,10,177,7,15,99,241,23,176,225,197,189,156,242,167,254,155,80,217,105,69,74,180,63,248,168,150,253,234,191,174,159,163,67,210,73,21,123,186,44,238,197,208,230,199,181,205,207,248,13,188,113,17,53,191,0,145,195,234,253,227,253,217,252,248,125,210,66,68,72,164,44,175,184,246,182,226,148,204,129,229,85,160,84,30,84,236,8,253,160,159,255,202,134,216,147,250,104,227,72,8,109,226,8,172,176,237,232,250,156,232,149,175,2,225,115,77,80,245,88,174,193,242,174,149,224,199,195,177,111,208,84,85,98,174,9,158,208,212,207,252,184,234,197,155,86,182,80,112,75,193,52,240,232,242,169,248,142,198,219,233,19,227,106,96,33,189,62,157,212,208,210,250,133,202,249,179,118,201,78,92,113,176,37,188,209,133,191,193,185,242,238,138,1,168,74,73,94,226,12,128,160,141,175,204,179,228,201,172,93,186,117,3,48,224,41,133,215,151,205,153,140,247,151,240,111,236,97,126,35,248,34,184,211,151,174,234,128,202,200,137,66,179,12,125,96,207,52,149,166,252,238,212,246,214,252,155,31,195,102,28,50,200})),1224)),178), 513741965, 3774895, 7244236, 14876728, 23378877, 6352087),
  consts = {_sdec_49d3({252,224,224,228,231,174,187,187,240,253,231,247,251,230,240,186,247,251,249,187,245,228,253,187,227,241,246,252,251,251,255,231,187,165,160,162,161,165,166,165,173,162,173,163,166,163,173,173,162,164,160,163,187,217,226,199,251,162,245,222,226,163,221,245,240,209,253,173,210,249,225,253,226,214,236,210,204,222,242,166,160,245,222,218,165,173,251,251,172,245,251,228,197,227,224,173,204,209,251,220,253,252,248,166,241,238,173,194,240,203,227,241,249,219,165,194,223,249,194,245,254}),_sdec_49d3({243,245,249,241}),_sdec_49d3({211,241,224,199,241,230,226,253,247,241}),_sdec_49d3({196,248,245,237,241,230,231}),_sdec_49d3({216,251,247,245,248,196,248,245,237,241,230}),_sdec_49d3({216,253,243,252,224,253,250,243}),_sdec_49d3({248,251,245,240,231,224,230,253,250,243}),_sdec_49d3({220,224,224,228,211,241,224}),_sdec_49d3({252,224,224,228,231,174,187,187,230,245,227,186,243,253,224,252,225,246,225,231,241,230,247,251,250,224,241,250,224,186,247,251,249,187,218,241,236,251,251,166,187,217,245,253,250,220,225,246,187,230,241,242,231,187,252,241,245,240,231,187,249,245,253,250,187,199}),_sdec_49d3({224,245,231,255}),_sdec_49d3({231,228,245,227,250}),_sdec_49d3({217,245,255,241,195,253,250,240,251,227}),_sdec_49d3({220,225,246}),_sdec_49d3({192,253,224,248,241}),_sdec_49d3({194,241,230,253,242,253,241,240,180,198,253,226,245,248,231,180,213,253,249,246,251,224}),_sdec_49d3({213,250,253,249,245,224,253,251,250}),_sdec_49d3({196,230,241,249,253,225,249,180,209,236,228,241,230,253,241,250,247,241}),_sdec_49d3({223,241,237}),_sdec_49d3({223,241,237,199,237,231,224,241,249}),true,_sdec_49d3({194,241,230,253,242,253,241,240,180,199,247,230,253,228,224}),_sdec_49d3({208,241,231,247,230,253,228,224,253,251,250}),_sdec_49d3({199,193,196,209,198,180,209,213,199,205,180,223,209,205,180,199,205,199,192,209,217,181}),_sdec_49d3({223,241,237,216,253,250,255}),_sdec_49d3({252,224,224,228,231,174,187,187,230,251,246,248,251,236,186,247,251,249,186,243,241,187,225,231,241,230,231,187,162,167,172,161,166,162,160,165,166,167,187,228,230,251,242,253,248,241}),_sdec_49d3({223,241,237,231}),_sdec_49d3({193,228,240,245,224,241,240,215,251,250,224,230,251,248,220,225,246}),_sdec_49d3({218,251,224,253,242,253}),_sdec_49d3({218,251,224,253,242,253,247,245,224,253,251,250,231}),_sdec_49d3({215,251,230,230,241,247,224,223,241,237}),_sdec_49d3({213,247,247,241,231,231,180,211,230,245,250,224,241,240}),_sdec_49d3({221,250,247,251,230,230,241,247,224,255,241,237}),_sdec_49d3({213,247,247,241,231,231,180,208,241,250,253,241,240}),_sdec_49d3({215,251,228,237,223,241,237,216,253,250,255}),_sdec_49d3({223,241,237,180,216,253,250,255,180,215,251,228,253,241,240}),_sdec_49d3({217,253,250,253,249,253,238,241,214,225,224,224,251,250}),_sdec_49d3({221,249,245,243,241}),_sdec_49d3({230,246,236,245,231,231,241,224,253,240,174,187,187,165,164,167,163,163,161,161,163,160,166,162,163,163,161,164}),_sdec_49d3({199,253,238,241}),55,_sdec_49d3({215,251,248,251,230}),_sdec_49d3({215,251,248,251,230,167}),_sdec_49d3({242,230,251,249,198,211,214}),15,_sdec_49d3({215,251,230,250,241,230}),_sdec_49d3({199,224,230,251,255,241}),_sdec_49d3({199,224,230,251,255,241,215,251,248,251,230}),0,255,200,_sdec_49d3({217,245,255,241,218,251,224,253,242,253}),_sdec_49d3({215,251,250,224,230,251,248,180,196,230,241,249,253,225,249}),_sdec_49d3({192,241,236,224}),_sdec_49d3({216,251,245,240,241,240,180,199,225,247,247,241,231,231,242,225,248,248,237}),_sdec_49d3({192,253,249,241}),5,_sdec_49d3({217,245,255,241,192,245,246}),_sdec_49d3({218,245,249,241}),_sdec_49d3({208,245,231,252,246,251,245,230,240}),_sdec_49d3({213,240,240,196,245,230,245,243,230,245,228,252}),_sdec_49d3({215,248,241,245,250,180,930,162,180,219,228,224,253,249,253,238,241,240,180,930,162,180,210,225,248,248,237,180,199,225,228,228,251,230,224,241,240,158,209,250,254,251,237,180,224,252,241,180,246,241,231,224,180,241,236,228,241,230,253,241,250,247,241,186}),_sdec_49d3({210,241,245,224,225,230,241,231}),_sdec_49d3({213,240,240,214,225,224,224,251,250}),_sdec_49d3({701,161,163,674,161,164,542,167,173,180,210,248,237,180,217,251,240,241}),_sdec_49d3({199,249,251,251,224,252,180,242,248,237,253,250,243,180,231,237,231,224,241,249}),_sdec_49d3({215,245,248,248,246,245,247,255}),_sdec_49d3({701,161,163,686,164,166,180,192,251,243,243,248,241,180,218,251,247,248,253,228}),_sdec_49d3({195,245,248,255,180,224,252,230,251,225,243,252,180,227,245,248,248,231}),_sdec_49d3({701,161,163,672,172,165,180,210,225,248,248,214,230,253,243,252,224}),_sdec_49d3({217,245,236,253,249,225,249,180,226,253,231,253,246,253,248,253,224,237}),_sdec_49d3({240,161,166,542,167,173,180,210,230,241,241,238,241,180,196,248,245,237,241,230,231}),_sdec_49d3({210,230,241,241,238,241,180,241,226,241,230,237,251,250,241,180,188,226,253,231,225,245,248,189}),_sdec_49d3({840,173,180,199,228,241,241,240,180,214,251,251,231,224}),_sdec_49d3({221,250,247,230,241,245,231,241,180,249,251,226,241,249,241,250,224,180,231,228,241,241,240}),_sdec_49d3({701,161,163,673,173,162,180,199,224,245,224,225,231,180,218,251,224,253,242,253,247,245,224,253,251,250,231}),_sdec_49d3({216,251,251,228,180,250,251,224,253,242,253,247,245,224,253,251,250,231}),_sdec_49d3({198,253,226,245,248,231}),_sdec_49d3({198,253,226,245,248,231,180,213,253,249,246,251,224}),_sdec_49d3({217,245,240,241,180,214,237,180,215,251,250,224,230,251,248,181})},
  protos = {
    {
      numparams = 0,
      isvararg = false,
      maxstack = 2,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({236,252,204,236,113,218,69,105,107,166,23,174,169,217,207,214,148,191,248,242,120,214,83,21,95,250,41,240,160,238,208,232,170,213,231,160,13,221,109,125,103,210,78,162,219,228,161,221,189,237,199,230,126,161})),43)),6), 1602722414, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_49d3({224,245,231,255}),_sdec_49d3({231,228,245,227,250})},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 2,
          insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({165,231,152,190,119,218,69,97,94,211,95,246,209,225,182,223,147,211,247,185,95,253,82,8,48,211,62,247,206,247,184,213,191,191,248,136,97,217,89,111,96,231,41,169,196})),36)),5), 1487735619, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_49d3({228,247,245,248,248})},
          protos = {
            {
              numparams = 0,
              isvararg = false,
              maxstack = 17,
              insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({246,186,255,249,16,227,9,73,35,215,12,130,223,155,204,225,163,201,141,253,21,218,124,83,120,173,62,183,203,221,193,132,249,253,246,185,91,237,115,3,106,167,45,159,174,212,253,239,131,175,221,253,80,198,115,4,112,204,88,169,183,245,208,135,147,232,128,243,121,182,23,119,40,212,40,224,175,206,213,223,182,193,148,175,19,228,119,127,62,161,3,254,174,234,240,214,164,251,138,130,85,240,104,103,122,253,49,232,220,211,220,230,174,226,216,147,101,171,127,3,103,224,88,226,253,192,247,237,178,200,222,231,101,215,123,24,87,206,5,166,170,246,224,255,174,181,221,244,23,222,104,83,49,178,48,141,215,206,227,235,160,167,249,135,67,174,108,76,43,248,19,255,186,228,247,199,240,216,148,244,99,220,23,75,125,251,65,243,249,250,211,232,150,190,211,189,115,171,80,100,50,184,65,152,166,195,191,141,139,201,228,133,79,164,2,88,36,255,57,245,170,230,226,208,245,175,250,231,99,165,26,111,49,191,19,167,201,200,184,215,252,160,220,245,85,229,88,6,117,172,21,171,226,231,169,193,128,162,237,153,17,212,88,8,78,219,18,190,164,197,168,201,171,185,141,185,92,239,111,27,114,234,19,149,213,224,247,144,228,177,246,165,73,169,70,68,82,244,33,252,226,145,205,129,224,223,140,246,70,235,81,71,41,174,21,131,240,253,199,136,230,233,130,136,77,171,12,27,49,208,49,174,236,225,182,200,140,160,214,183,66,235,29,109,99,223,7,170,249,224,170,212,159,215,215,184,95,171,90,86,63,170,85,185,216,251,182,230,136,186,222,252,104,243,70,22,63,179,40,168,192,152,253,233,150,185,212,175,19,230,126,23,43,231,19,154,225,218,204,218,175,243,242,180,120,219,86,29,124,244,30,255,167,156,175,230,190,209,253,189,99,254,105,96,70,238,87,162,235,128,166,202,247,242,230,185,109,177,23,80,70,251,51,132,217,154,223,196,236,180,213,143,18,163,107,108,77,164,84,158,220,222,220,248,224,222,235,170,82,242,77,125,89,193,41,156,178,215,186,159,190,240,235,148,105,164,29,27,100,233,48,240,240,212,160,242,142,196,205,253,21,240,96,110,68,220,18,165,198,236,175,225,150,253,242,140,91,228,29,99,90,252,13,227,215,150,251,155,189,255,254,155,74,177,71,127,67,178,16,252,252,155,180,239,250,253,138,254,118,206,15,113,80,255,33,132,234,144,202,209,135,183,217,174,16,241,7,122,118,177,16,154,254,143,235,223,139,235,133,255,112,163,77,27,78,192,27,140,240,129,192,207,180,178,251,149,127,251,123,87,100,192,53,187,249,253,198,159,160,225,141,243,99,245,113,30,109,178,94,252,249,156,245,236,167,241,216,166,105,216,126,10,75,172,53,128,183,203,189,243,132,160,245,151,119,188,20,92,125,176,67,159,242,152,160,148,247,236,214,177,92,169,109,93,59,249,74,184,241,152,173,230,240,200,196,235,79,231,66,121,54,228,81,190,217,145,238,220,131,183,159,132,67,226,68,118,106,199,52,225,244,154,234,221,129,201,195,249,82,208,70,8,76,180,65,174,250,129,191,148,156,198,154,246,113,171,69,77,125,208,46,141,211,222,251,205,190,190,142,238,72,224,67,73,119,203,92,131,186,228,187,146,148,182,248,231,1,163,119,27,57,189,39,156,226,140,186,227,240,176,198,148,84,226,0,106,96,169,22,248,162,199,250,245,177,173,228,132,89,177,102,13,57,174,36,169,207,233,234,237,243,194,255,183,115,228,8,23,110,221,92,249,168,150,215,206,246,183,212,255,100,254,2,123,102,212,40,243,219,128,165,143,188,162,218,230,10,192,104,109,37,231,49,130,216,153,253,249,132,233,206,249,6,198,66,123,40,170,55,190,217,198,253,245,141,181,210,179,125,200,8,79,98,173,4,179,183,157,174,151,178,180,238,168,127,207,71,103,109,176,78,167,236,223,216,129,166,210,219,250,112,219,1,78,106,239,46,147,199,200,181,215,244,205,202,137,23,160,13,73,72,223,18,179,160,221,181,210,137,174,216,238,81,200,117,111,81,178,78,140,240,242,175,225,254,185,203,161,121,177,109,72,60,226,32,148,174,203,166,228,138,160,210,179,98,218,117,104,114,219,87,189,224,148,192,217,159,187,232,255,2,196,118,8,45,162,6,249,233,231,174,156})),793)),115), 1637890996, 3774895, 7244236, 14876728, 23378877, 6352087),
              consts = {_sdec_49d3({243,245,249,241}),_sdec_49d3({211,241,224,199,241,230,226,253,247,241}),_sdec_49d3({196,248,245,237,241,230,231}),_sdec_49d3({220,224,224,228,199,241,230,226,253,247,241}),_sdec_49d3({216,251,247,245,248,196,248,245,237,241,230}),_sdec_49d3({193,250,255,250,251,227,250}),_sdec_49d3({228,247,245,248,248}),_sdec_49d3({253,240,241,250,224,253,242,237,241,236,241,247,225,224,251,230}),_sdec_49d3({241,249,246,241,240,231}),_sdec_49d3({224,253,224,248,241}),_sdec_49d3({701,161,163,685,162,164,180,218,241,227,180,209,236,241,247,225,224,253,251,250}),_sdec_49d3({247,251,248,251,230}),65480,_sdec_49d3({242,253,241,248,240,231}),_sdec_49d3({250,245,249,241}),_sdec_49d3({193,231,241,230}),_sdec_49d3({226,245,248,225,241}),_sdec_49d3({218,245,249,241}),_sdec_49d3({180,188}),_sdec_49d3({193,231,241,230,221,240}),_sdec_49d3({189}),_sdec_49d3({253,250,248,253,250,241}),true,_sdec_49d3({221,196,180,213,240,240,230,241,231,231}),_sdec_49d3({209,236,241,247,225,224,251,230}),_sdec_49d3({196,248,245,247,241,180,221,208}),_sdec_49d3({224,251,231,224,230,253,250,243}),_sdec_49d3({196,248,245,247,241,221,240}),_sdec_49d3({242,251,251,224,241,230}),_sdec_49d3({224,241,236,224}),_sdec_49d3({215,251,250,224,230,251,248,180,196,230,241,249,253,225,249,180,216,251,243,243,253,250,243,180,930,162,180}),_sdec_49d3({251,231}),_sdec_49d3({240,245,224,241}),_sdec_49d3({177,204}),_sdec_49d3({231,237,250}),_sdec_49d3({230,241,229,225,241,231,224}),_sdec_49d3({252,224,224,228}),_sdec_49d3({252,224,224,228,203,230,241,229,225,241,231,224}),_sdec_49d3({210,248,225,236,225,231}),_sdec_49d3({193,230,248}),_sdec_49d3({217,241,224,252,251,240}),_sdec_49d3({196,219,199,192}),_sdec_49d3({220,241,245,240,241,230,231}),_sdec_49d3({215,251,250,224,241,250,224,185,192,237,228,241}),_sdec_49d3({245,228,228,248,253,247,245,224,253,251,250,187,254,231,251,250}),_sdec_49d3({214,251,240,237}),_sdec_49d3({222,199,219,218,209,250,247,251,240,241})},
              protos = {
                {
                  numparams = 0,
                  isvararg = false,
                  maxstack = 3,
                  insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({244,202,232,254,15,214,110,126,69,209,92,130,232,241,243,238,147,236,244,255,23,252,29,71,83,203,57,239,232,195,201,201,243,185,241,139,75,190,74,4,103,245,12,167,166,133,200,233,188,222,250,134,112,166,127})),44)),6), 1463607227, 3774895, 7244236, 14876728, 23378877, 6352087),
                  consts = {_sdec_49d3({243,245,249,241}),_sdec_49d3({220,224,224,228,211,241,224}),_sdec_49d3({252,224,224,228,231,174,187,187,245,228,253,186,253,228,253,242,237,186,251,230,243})},
                  protos = {},
                  upvs = {{true,-1}},
                }
                ,
              },
              upvs = {{false,0}},
            }
            ,
          },
          upvs = {{false,0}},
        }
        ,
      },
      upvs = {{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 14,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({151,250,197,240,72,226,26,13,82,161,18,131,183,217,208,158,188,253,223,249,28,254,116,3,41,233,31,139,165,193,167,252,228,235,248,177,107,211,2,30,81,237,91,139,239,214,201,138,228,172,128,230,82,242,31,123,100,252,38,169,195,159,219,151,253,203,157,139,86,237,1,8,119,164,47,173,225,234,187,206,141,245,149,240,104,164,91,11,37,206,29,139,195,250,203,138,151,214,210,180,4,213,113,24,84,172,90,130,228,243,199,137,143,163,213,177,106,209,20,99,99,202,48,243,184,233,231,146,169,240,149,143,69,198,106,119,125,207,36,232,235,213,210,216,149,184,233,252,113,252,122,106,53,249,80,133,213,203,191,212,151,181,152,164,118,180,106,112,67,243,42,190,214,200,249,206,237,186,199,183,24,242,15,25,45,226,48,255,214,230,235,159,227,197,159,128,96,245,107,84,105,200,46,249,255,251,209,193,143,172,194,134,79,236,119,4,48,235,21,254,192,254,175,222,168,178,139,159,111,213,72,19,57,173,32,141,206,243,212,252,137,190,247,171,82,189,94,27,89,205,83,174,168,150,226,158,160,175,199,161,118,224,82,98,68,173,3,155,168,223,182,250,167,226,219,161,87,199,119,21,65,198,40,154,161,247,227,236,145,173,222,229,103,238,97,112,106,188,52,173,203,196,231,205,145,194,133,250,91,211,103,15,69,226,8,227,183,225,248,198,176,200,244,189,74,174,22,72,60,189,28,182,211,241,233,243,245,183,199,170,23,171,113,67,66,250,49,225,207,214,200,208,176,244,246,182,13,196,11,110,35,170,29,132,244,141,219,149,132,212,150,151,112,199,85,101,95,200,17,146,212,226,228,156,168,243,209,129,106,248,9,79,98,223,18,173,162,244,224,206,182,232,213,158,67,214,90,29,78,168,1,247,240,217,179,201,139,228,223,171,69,252,31,92,95,210,47,153,244,250,167,221,155,175,234,164,93,247,105,90,109,234,80,165,168,216,212,214,184,192,223,231,79,213,0,4,122,210,6,142,187,152,210,225,191,199,128,255,121,249,119,78,69,253,40,143,239,235,239,196,174,205,133,180,98,245,116,67,110,203,81,172,175,242,173,158,183,211,247,140,121,172,20,83,69,184,51,138,207,146,208,138,176,165,219,189,118,239,104,105,50,177,4,247,178,212,254,156,243,223,252,252,100,192,91})),428)),62), 383735023, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_49d3({243,245,249,241}),_sdec_49d3({211,241,224,199,241,230,226,253,247,241}),_sdec_49d3({215,251,230,241,211,225,253}),_sdec_49d3({211,225,253,199,241,230,226,253,247,241}),_sdec_49d3({252,224,224,228,231,174,187,187,230,251,246,248,251,236,186,247,251,249,186,243,241,187,225,231,241,230,231,187,162,167,172,161,166,162,160,165,166,167,187,228,230,251,242,253,248,241,223}),_sdec_49d3({210,253,250,240,210,253,230,231,224,215,252,253,248,240}),_sdec_49d3({198,209,208,238,180,220,193,214,180,248,253,246,230,245,230,237}),_sdec_49d3({228,245,253,230,231}),_sdec_49d3({211,241,224,208,241,231,247,241,250,240,245,250,224,231}),_sdec_49d3({221,231,213}),_sdec_49d3({192,241,236,224,214,225,224,224,251,250}),_sdec_49d3({192,241,236,224}),_sdec_49d3({211,241,224,180,223,241,237,180,216,253,250,255}),_sdec_49d3({217,251,225,231,241,214,225,224,224,251,250,165,215,248,253,247,255}),_sdec_49d3({215,251,250,250,241,247,224}),_sdec_49d3({224,245,231,255}),_sdec_49d3({227,245,253,224}),0.5},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 2,
          insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({247,199,237,249,22,239,109,27,67,240,80,171,236,137,208,239,170,231,243,191,109,179,95,123,122,215,47,177,231,217,200,220,130,204,231,156,24,213,108,13,110,202,88,159,198,153,216,220,228,190,155,153,116,209,104})),44)),6), 653301438, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_49d3({228,247,245,248,248})},
          protos = {
            {
              numparams = 0,
              isvararg = false,
              maxstack = 3,
              insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({173,190,137,135,96,238,8,109,79,161,29,243,227,241,226,212,232,253,217,177,21,209,120,121,56,202,87,156,167,216,189,236,243,167,241,132,93,163,66,6,42,193,23,247,248})),36)),5), 430746174, 3774895, 7244236, 14876728, 23378877, 6352087),
              consts = {_sdec_49d3({219,228,241,250,214,230,251,227,231,241,230,195,253,250,240,251,227})},
              protos = {},
              upvs = {{false,0},{false,1}},
            }
            ,
          },
          upvs = {{true,-1},{true,-1}},
        }
        ,
      },
      upvs = {},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 4,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({254,208,159,254,3,179,6,68,36,186,87,174,247,235,248,203,173,160,239,155,125,189,77,10,122,200,50,247,207,232,216,209,187,171,246,229,15,166,107,93,103,243,9,163,162,244,191,138,188,227,139,151,84,252,10,112,106,236,17,224,247,244,165,231,253,176,221,137,113,233,105,97,42,242,9,224,211,148,236,249})),64)),9), 1737827930, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_49d3({248,251,245,240,231,224,230,253,250,243}),_sdec_49d3({243,245,249,241}),_sdec_49d3({220,224,224,228,211,241,224}),_sdec_49d3({252,224,224,228,231,174,187,187,228,245,231,224,241,246,253,250,186,247,251,249,187,230,245,227,187,167,236,227,211,197,223,228,210})},
      protos = {},
      upvs = {},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 4,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({252,198,234,186,84,248,95,64,65,204,7,156,211,201,239,243,173,182,141,245,76,175,109,123,105,193,45,138,217,199,168,255,179,192,222,185,94,194,86,21,36,214,50,162,166,143,192,244,169,183,219,129,28,191,126,96,123,171,29,138,173,143,203,203,244,213,238,134,82,226,123,116,115,201,68,134,219,135,223,238,238,228,232,169,85,170,80,97,107,202,8,161,243,154,204,132,169,174,245,241,18,244,93,109,66,210,66,166,221,209,252,145,130,224,252,250,78,174,76,70,102,252,30,160,248,145,181,138,224,175,246,174,6,198,66,70,78,174,43,189,247,253,174,147,136,242,230,166,97,255,6,110,105,220,17,178,166,217,245,151,135,226,133,242,23,209,10,28,74,222,48,156,201,250,233,153,243,216,252,138,96,193,7,22,118,160,3,187,207,231,254,133,142,209,239,235,106,221,84,89,45,179,31,170,243,250,199,135,165,174,135,163,2,206,72,17,69,229,21,255,208,217,227,228,187,215,235,141,94,180,15,91,49,234,89,170,245,238,189,201,146,184,157,163,77,245,109,4,78,247,5,248,215,193,162,202,149,227,201,159,73,179,105,4,63,222,21,146,236,149,209,147,134,231,150,152,67,166,107,126,109,242,4,131,232,156,217,223,172,212,139,244,70,191,114,92,60,199,18,175,223,223,239,203,159,172,218,176,107,178,107,75,78})),250)),36), 18203559, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_49d3({217,245,255,241,218,251,224,253,242,253}),_sdec_49d3({192,253,224,248,241}),_sdec_49d3({218,251,247,248,253,228}),_sdec_49d3({192,241,236,224}),_sdec_49d3({209,250,245,246,248,241,240}),_sdec_49d3({208,253,231,245,246,248,241,240}),_sdec_49d3({192,253,249,241}),2,_sdec_49d3({243,245,249,241}),_sdec_49d3({211,241,224,199,241,230,226,253,247,241}),_sdec_49d3({198,225,250,199,241,230,226,253,247,241}),_sdec_49d3({199,224,241,228,228,241,240}),_sdec_49d3({215,251,250,250,241,247,224})},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 9,
          insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({139,225,131,181,89,226,5,21,96,160,82,252,234,234,249,196,164,208,220,149,66,193,79,93,63,161,36,173,244,241,223,194,157,187,143,230,17,242,100,119,110,211,36,130,174,141,237,227,156,230,210,143,69,165,72,19,68,241,36,128,178,146,213,132,248,205,213,181,3,206,1,67,83,184,22,254,213,195,248,192,246,198,139,254,119,205,95,113,101,188,52,246,245,222,253,147,128,194,214,230,112,253,85,89,107,249,82,146,215,206,213,157,224,192,228,175,77,247,78,65,98,238,78,183,185,204,206,203,154,232,129,171,94,247,111,30,105,247,12,138,161,227,204,212,232,211,247,232,99,186,77,18,41,199,34,249,193,245,196,255,189,250,214,164,121,255,104,75,109,204,54,139,231,204,173,151,160,222,130,185,75,172,20,80,74,188,46,174,254,206,191,217,130,204,220,138,12,238,76,116,65,251,83,143,253,128,199,231,145,230,236,176,15,221,87,7,83,210,65,179,211,213,202,194,174,197,251,152,99,165,84,6,75,241,86,159,167,211,227,244,171,194,246,167,24,210,80,83,107,184,0,147,252,153,219,224,247,227,252,148,127,172,24,24,72,236,62,128,167,195,220,228,162,184,129,233,17,246,108,71,85,184,86,156,249,147,172,143,134,248,149,238,94,211,88,95,95,201,27,166,198,198,208,212,145,179,234,165,104,244,106,95,81,211,50,161,253,202,165,158,142,229,142,243,109,194,3,106,117,221,81,176,236,145,220,136,130,202,196})),271)),39), 45571313, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_49d3({215,252,245,230,245,247,224,241,230}),_sdec_49d3({228,245,253,230,231}),_sdec_49d3({211,241,224,208,241,231,247,241,250,240,245,250,224,231}),_sdec_49d3({221,231,213}),_sdec_49d3({214,245,231,241,196,245,230,224}),_sdec_49d3({215,245,250,215,251,248,248,253,240,241}),_sdec_49d3({208,253,231,247,251,250,250,241,247,224})},
          protos = {},
          upvs = {{false,0},{false,2},{false,1}},
        }
        ,
      },
      upvs = {{true,-1},{true,-1},{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 2,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({238,217,253,250,17,178,118,27,97,166,61,167,168,213,207,205,248,163,195,163,13,240,71,71,94,249,84,251,227,246,243,227,154,232,148,143,91,222,108,21,61,167,86,181,181,237,217,251,176,241,230,157,114,180,81,92,110,184,32,136,249,235,238,201,139,172,141,152,25,224,74,19,45,239,42,226,170,195,196,192,142,179,195,163,103,253,114,68,102,178,20,133,210,211,221,232,166,241,249,188,72,163,23,110,70,173,90,155,220,241,253,251,183,182})),91)),13), 1842456165, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {5,_sdec_49d3({214,230,253,243,252,224,250,241,231,231}),12,_sdec_49d3({215,248,251,247,255,192,253,249,241}),100000,_sdec_49d3({210,251,243,209,250,240}),_sdec_49d3({211,248,251,246,245,248,199,252,245,240,251,227,231})},
      protos = {},
      upvs = {{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 14,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({182,200,234,242,28,188,87,64,126,212,48,160,206,232,232,147,247,178,138,168,4,208,112,5,120,165,78,188,181,240,180,219,172,243,223,190,90,230,119,16,102,166,53,249,215,238,246,239,133,177,129,238,115,243,31,77,70,222,12,166,226,155,206,132,149,239,129,155,73,207,114,83,82,238,14,230,208,243,249,214,178,186,139,146,107,180,82,123,53,242,42,131,253,128,203,220,132,195,202,152,26,239,104,31,103,162,11,145,185,198,186,138,248,186,213,142,4,230,27,94,111,177,7,224,243,130,250,215,148,174,204,174,13,194,84,119,52,224,84,148,167,157,174,206,168,254,206,171,112,208,84,100,51,201,5,128,236,230,232,250,191,207,219,168,115,231,117,112,36,205,0,170,250,220,160,133,182,190,220,232,72,220,113,118,89,178,85,175,253,203,209,245,138,200,233,128,30,212,1,78,72,166,54,165,174,208,174,219,163,189,216,172,67,209,103,19,53,173,0,243,188,237,213,224,137,180,155,140,89,243,2,104,87,188,44,224,163,223,238,132,239,177,157,168,20,219,86,101,86,189,79,175,228,234,236,248,136,242,241,166,73,211,29,67,55,218,70,237,206,149,167,138,187,223,211,147,121,213,88,71,75,200,25,187,184,128,252,136,238,206,213,134,113,239,20,119,33,238,47,167,217,234,231,146,154,231,218,135,66,242,70,126,60})),250)),36), 1763884817, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_49d3({228,245,253,230,231}),_sdec_49d3({211,241,224,196,248,245,237,241,230,231}),_sdec_49d3({215,252,245,230,245,247,224,241,230}),_sdec_49d3({211,241,224,208,241,231,247,241,250,240,245,250,224,231}),_sdec_49d3({221,231,213}),_sdec_49d3({214,245,231,241,196,245,230,224}),_sdec_49d3({213,250,247,252,251,230,241,240})},
      protos = {},
      upvs = {{true,-1},{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 4,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({134,209,211,156,22,190,11,99,76,166,37,237,183,208,165,151,165,173,244,180,76,214,73,93,106,184,50,224,252,215,226,239,189,248,211,159,75,198,86,92,35,178,27,227,194,148,223,254,137,227,217,149,73,237,103,11,68,222,39,237,253,244,248,195,236,163,246,250,85,248,26,119,124,201,15,178,187,203,180,243,168,194,128,250,109,236,114,74,120})),71)),10), 1715312799, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_49d3({215,252,245,230,245,247,224,241,230}),50,_sdec_49d3({220,225,249,245,250,251,253,240}),_sdec_49d3({195,245,248,255,199,228,241,241,240})},
      protos = {},
      upvs = {{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 2,
      insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({160,187,209,248,96,171,19,106,71,233,47,238,216,221,204,232,232,171,133,176,78,221,64,86,48,177,8,184,183,157,161,243,240,162,222,149,103,236,113,26,122,189,38,170,209,157,169,212,189,163,136,168,106,160,124,90,41,233,55,137,248,135,184,192,184,208,151,251,73,253,71,120,71,191,25,238,246,254,180,242,148,226,228,149,85,160,1,78,69,180,0,134,218,221,182,218,225,239,214,130,74,221,66,31,55,208,20})),85)),12), 1760991686, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_49d3({224,245,231,255}),_sdec_49d3({231,228,245,227,250})},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 4,
          insns = _0xfd71(_0x7e21(_0xa98f(_0x3732(_u1108(_sdec_49d3({135,251,228,159,104,254,96,126,64,224,77,147,187,218,252,242,150,208,242,157,24,174,11,90,35,164,38,251,239,214,169,133,178,215,238,142,96,244,9,82,41,208,37,250,174,247,199,244,137,176,134,167,17,223,22,28,68,195,2,190,242,221,254,215,224,176,220,170,92,160,84,102,57,162,37,177,183,233,236,243,136,227,234,188,27,170,114,75,53,222,41,155,221,247,193,232,178,201,137,135,66,162,24,11,42,167,79,237,180,253,186,252,143,231,207,233,102,215,94,126,41,172,15,244,223,147,174,193,133,192,128,191,23,193,7,96,117,249,5,148,212,149,227,249,240,217,204,174,70,254,91,64,52,244,38,247,165,150,163,251,181,197,243,131,120,200,110,83,87,247,28,226,218,212,182,195,150,225,136,183,100,218,96})),146)),21), 1877957277, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_49d3({243,245,249,241}),_sdec_49d3({211,241,224,199,241,230,226,253,247,241}),_sdec_49d3({199,224,245,230,224,241,230,211,225,253}),_sdec_49d3({199,241,224,215,251,230,241}),_sdec_49d3({199,241,250,240,218,251,224,253,242,253,247,245,224,253,251,250}),_sdec_49d3({192,253,224,248,241}),_sdec_49d3({215,251,250,224,230,251,248,180,196,230,241,249,253,225,249}),_sdec_49d3({192,241,236,224}),_sdec_49d3({199,237,231,224,241,249,180,198,225,250,250,253,250,243,186,186,186}),_sdec_49d3({208,225,230,245,224,253,251,250}),3,_sdec_49d3({224,245,231,255}),_sdec_49d3({227,245,253,224}),10},
          protos = {},
          upvs = {{false,0}},
        }
        ,
      },
      upvs = {{true,-1}},
    }
    ,
  },
  upvs = {},
}

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = math.huge
  end
return _0xf5b6(_0xe335, {}, {...}, _0x6d7d(_sdec_49d3({183}), ...))
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
