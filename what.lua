-- vm 0
do
  local _r = (function(...)
return (function(...)
  local _env = {_d9e8=57894,_d2cee=9857,_de490=17735,_d5ee=57920}
  local _s843a = _env._d5ee
  local _fn = function(...)
return (function(...)
  local _env = {_de0ba=38339,_d2427=13097,_da2f4=60007,_dcf2e=12071,_dd7a6=14466,_d3b1a=18506}
  local _sf916 = _env._de0ba
  local _fn = function(...)
return (function(...)
  local _env = {_d126a=50595,_d3b7d=15224,_d275b=36486,_dd9db=26594,_dda24=6346}
  local _s7328 = _env._d126a
  local _fn = function(...)

local function _sdec_ca7b(b)
  local _k = 112
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
  local _0x5a7e = {}
  for i = 1, #b do _0x5a7e[i] = string.char(_xor(b[i], _k)) end
  return table.concat(_0x5a7e)
end


local _u1bf3 = table.concat
local _ucf81 = string.byte
local _udcfa = string.char
local _ubc25 = string.sub
local _u106d = rawget
local function _uc914(_u0d14, _uc977)
  local _u91a7, _u0e2d = 0, 1
  for _ = 1, 8 do
    local _ued25, _u3b94 = _u0d14 % 2, _uc977 % 2
    if _ued25 ~= _u3b94 then _u91a7 = _u91a7 + _u0e2d end
    _u0d14 = (_u0d14 - _ued25) / 2
    _uc977 = (_uc977 - _u3b94) / 2
    _u0e2d = _u0e2d * 2
  end
  return _u91a7
end
local _u6269 = 0
do
  -- debug.gethook is present in Lua 5.1 and Luau (debug lib). _0xba91 hook means
  -- someone'_0x3524 tracing us; corrupt the pad.
  local _ua068 = debug and debug.gethook
  if _ua068 then
    local ok, hk = pcall(_ua068)
    if ok and hk ~= nil then _u6269 = _uc914(_u6269, 204) end
  end
  -- Roblox environment check. In Roblox/Luau, `game` is a userdata living
  -- in the script'_0x3524 environment chain (NOT in `_G`), so we use a bare
  -- global reference rather than `rawget(_G, "game")` which always returns
  -- nil under Roblox. Bare-global access goes through the env __index chain
  -- and finds `game` correctly. Any execution context that doesn'_0x5a7e expose
  -- `game` (stock lua5.1, hostile sandbox with stripped env) silently
  -- corrupts the pad.
  if game == nil then
    _u6269 = _uc914(_u6269, 171)
  end
  -- LuaJIT detector. Roblox is Luau, not LuaJIT. If the `jit` global exists
  -- and has a `.version` field, we're running under LuaJIT (likely in a
  -- hostile sandbox); corrupt the pad.
  if rawget and rawget(_G, _sdec_ca7b({26,25,4})) ~= nil then
    _u6269 = _uc914(_u6269, 90)
  end
end
local _u34f0 = {50,232,79,163,170,145,31,101,22,31,220,118,112,126,1,156}
local _u01d4 = {11,10,1,6,9,2,16,15,8,5,7,13,4,14,3,12}
local _u0d44 = {}
for _ue6b5 = 1, 16 do
  _u0d44[_ue6b5] = _uc914(_u34f0[_u01d4[_ue6b5]], _u6269)
end
local function _u7cc8(_0x3524)
  local out = {}
  local len = #_0x3524
  for _ue6b5 = 1, len do
    local _ue9a2 = ((_ue6b5 - 1) % 16) + 1
    out[_ue6b5] = _udcfa(_uc914(_ucf81(_0x3524, _ue6b5), _u0d44[_ue9a2]))
  end
  return _u1bf3(out)
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = _G["workspace"]
    local _ = _G["game"]
  end

local _0x194c = _sdec_ca7b({64,65,66,67,68,69,70,71,72,73,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,32,33,34,35,36,37,38,39,40,41,42,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,0,1,2,3,4,5,6,7,8,9,10,81,83,84,85,86,88,89,90,91,93,75,76,77,78,79,48,46,47,16,11,12,13,14})
local _0x115f = {}
for i = 1, 85 do _0x115f[string.byte(_0x194c, i)] = i - 1 end
local function _0x8688(_0x3524, origLen)
  local out = {}
  local outPos = 0
  local sLen = #_0x3524
  local padCount = (5 - (sLen % 5)) % 5
  local i = 1
  while i <= sLen do
    local v = 0
    local group = 0
    while group < 5 do
      local ch
      if i + group <= sLen then
        ch = _0x115f[string.byte(_0x3524, i + group)]
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
    local _ = "__" .. tostring(os.time())
    local _ = "__" .. tostring(os.time())
  end
local function _0xe491(buf)
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

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = _G["Vector3"]
    local _ = math.huge
  end
local function _0x6389(bytes, _0xc16f)
  local out = {}
  for i = 1, _0xc16f do
    local base = (i - 1) * 7
    local v = 0
    for j = 7, 1, -1 do
      v = v * 256 + bytes[base + j]
    end
    out[i] = v
  end
  return out
end



local _0xa188 = 33554432
local function _0xc49a(a, b)
  local aLo = a % 65536
  local aHi = (a - aLo) / 65536
  local bLo = b % 65536
  local bHi = (b - bLo) / 65536
  local function xor16(_0xb523, y)
    local r, p = 0, 1
    for _ = 1, 16 do
      local xb, yb = _0xb523 % 2, y % 2
      if xb ~= yb then r = r + p end
      _0xb523 = (_0xb523 - xb) / 2
      y = (y - yb) / 2
      p = p * 2
    end
    return r
  end
  return xor16(aHi, bHi) * 65536 + xor16(aLo, bLo)
end

-- _0xed3b: stateful (lazy) bytecode decode.
--
-- `_0x3fd0` no longer materializes a plaintext instruction array. It
-- returns a "_0x1b94" holding (a) the layer-1-encrypted integer array, (b) the
-- initial feedback-chain state seeded by the per-proto checksum and the
-- script-env fingerprint, and (c) the per-build salt constants. The outer
-- _0x1b94 is what `_0x5cb4.insns` becomes. Each _0x8e5c() call unboxes these
-- fields into its own local state and advances the decryption lazily at
-- fetch time: instruction `i` is only peeled from the feedback chain
-- when the dispatch loop actually reads it. Control flow that never
-- reaches an instruction (dead code, branches not taken) leaves those
-- cells in their encrypted form. An analyst who dumps the _0x1b94'_0x3524 data
-- field outside the VM gets layer-1-encrypted integers with no way to
-- recover the feedback state without re-running the chain in order.
local function _0x3fd0(enc, checksum, seed_a, seed_b, salt_a, salt_b, envConst)
  local env = ((game ~= nil) and 1 or 0)
  local state_a = _0xc49a(seed_a, checksum % _0xa188)
  local state_b = _0xc49a(seed_b, (env * envConst + math.floor(checksum / _0xa188)) % _0xa188)
  -- numeric indices avoid any chance of the rename pass mangling a
  -- field-key identifier that happens to collide with a VM local name.
  -- Layout: [1]=data, [2]=_0xc16f, [3]=state_a, [4]=state_b, [5]=salt_a,
  --        [6]=salt_b, [7]=decLvl.  decLvl starts at 0 and only ever
  --        advances — so an inner proto that is executed multiple times
  --        (e.g. a closure called in a loop) reuses the same already-
  --        decrypted instructions on later calls instead of double-
  --        applying layer 1 to the in-place mutated array.
  return { enc, #enc, state_a, state_b, salt_a, salt_b, 0 }
end
local _0xd2f8, _0x99fa, _0x278a, _0x5d09 = 25281781, 29062332, 9300242, 32022468

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = _G["Vector3"]
  end
-- larpfuscator runtime (plain)
local _0x0ed0 = math.floor
local _0x72e1 = select
local _0x7d6f = type
local _0xd47e = setmetatable
local _0x463a = getmetatable
local _0x92c1 = table.unpack or unpack
local _0x6c47 = error
local _0x0e23 = {}
do local _v3546cd = PhysicsService; if _v3546cd ~= nil then _0x0e23[_sdec_ca7b({32,24,9,3,25,19,3,35,21,2,6,25,19,21})] = _v3546cd end end
do local _vac112c = HttpService; if _vac112c ~= nil then _0x0e23[_sdec_ca7b({56,4,4,0,35,21,2,6,25,19,21})] = _vac112c end end
do local _vcaf55f = string; _0x0e23[_vcaf55f ~= nil and _sdec_ca7b({3,4,2,25,30,23}) or false] = _vcaf55f end
do local _v040073 = RaycastParams; if _v040073 ~= nil then _0x0e23.RaycastParams = _v040073 end end
do local _v80f647 = bit32; _0x0e23[_v80f647 ~= nil and _sdec_ca7b({18,25,4,67,66}) or false] = _v80f647 end
do local _v49492e = ServerScriptService; _0x0e23[_v49492e ~= nil and _sdec_ca7b({35,21,2,6,21,2,35,19,2,25,0,4,35,21,2,6,25,19,21}) or false] = _v49492e end
do local _v7bbca3 = select; if _v7bbca3 ~= nil then _0x0e23.select = _v7bbca3 end end
do local _v96d986 = script; if _v96d986 ~= nil then _0x0e23[_sdec_ca7b({3,19,2,25,0,4})] = _v96d986 end end
do local _v81833f = Instance; _0x0e23[_v81833f ~= nil and _sdec_ca7b({57,30,3,4,17,30,19,21}) or false] = _v81833f end
do local _v4bf630 = PolicyService; if _v4bf630 ~= nil then _0x0e23.PolicyService = _v4bf630 end end
do local _vac62b9 = tick; if _vac62b9 ~= nil then _0x0e23[_sdec_ca7b({4,25,19,27})] = _vac62b9 end end
do local _v87457a = debug; _0x0e23[_v87457a ~= nil and _sdec_ca7b({20,21,18,5,23}) or false] = _v87457a end
do local _v664b52 = rawget; if _v664b52 ~= nil then _0x0e23[_sdec_ca7b({2,17,7,23,21,4})] = _v664b52 end end
do local _vb91f3e = error; if _vb91f3e ~= nil then _0x0e23[_sdec_ca7b({21,2,2,31,2})] = _vb91f3e end end
do local _vd5a871 = unpack; if _vd5a871 ~= nil then _0x0e23.unpack = _vd5a871 end end
do local _v6fc139 = game; if _v6fc139 ~= nil then _0x0e23[_sdec_ca7b({23,17,29,21})] = _v6fc139 end end
do local _v6f9d04 = pairs; _0x0e23[_v6f9d04 ~= nil and _sdec_ca7b({0,17,25,2,3}) or false] = _v6f9d04 end
do local _v3d0509 = Players; if _v3d0509 ~= nil then _0x0e23[_sdec_ca7b({32,28,17,9,21,2,3})] = _v3d0509 end end
do local _vcf9bbb = OverlapParams; if _vcf9bbb ~= nil then _0x0e23.OverlapParams = _vcf9bbb end end
do local _vaff834 = shared; _0x0e23[_vaff834 ~= nil and _sdec_ca7b({3,24,17,2,21,20}) or false] = _vaff834 end
do local _ve5246d = CFrame; _0x0e23[_ve5246d ~= nil and _sdec_ca7b({51,54,2,17,29,21}) or false] = _ve5246d end
do local _v5a6da6 = print; if _v5a6da6 ~= nil then _0x0e23[_sdec_ca7b({0,2,25,30,4})] = _v5a6da6 end end
do local _vd2f241 = collectgarbage; _0x0e23[_vd2f241 ~= nil and _sdec_ca7b({19,31,28,28,21,19,4,23,17,2,18,17,23,21}) or false] = _vd2f241 end
do local _ve72238 = setmetatable; if _ve72238 ~= nil then _0x0e23[_sdec_ca7b({3,21,4,29,21,4,17,4,17,18,28,21})] = _ve72238 end end
do local _vcd6fe7 = math; if _vcd6fe7 ~= nil then _0x0e23.math = _vcd6fe7 end end
do local _vd6434e = ColorSequence; if _vd6434e ~= nil then _0x0e23.ColorSequence = _vd6434e end end
do local _vd304ea = BrickColor; _0x0e23[_vd304ea ~= nil and _sdec_ca7b({50,2,25,19,27,51,31,28,31,2}) or false] = _vd304ea end
do local _v4099b1 = delay; if _v4099b1 ~= nil then _0x0e23[_sdec_ca7b({20,21,28,17,9})] = _v4099b1 end end
do local _v03fbf0 = typeof; if _v03fbf0 ~= nil then _0x0e23.typeof = _v03fbf0 end end
do local _va456b9 = Vector3; if _va456b9 ~= nil then _0x0e23[_sdec_ca7b({38,21,19,4,31,2,67})] = _va456b9 end end
do local _v59a799 = TweenInfo; if _v59a799 ~= nil then _0x0e23.TweenInfo = _v59a799 end end
do local _vda5c5d = Rect; if _vda5c5d ~= nil then _0x0e23.Rect = _vda5c5d end end
do local _v4c182e = pcall; if _v4c182e ~= nil then _0x0e23[_sdec_ca7b({0,19,17,28,28})] = _v4c182e end end
do local _vf39dc3 = time; if _vf39dc3 ~= nil then _0x0e23[_sdec_ca7b({4,25,29,21})] = _vf39dc3 end end
do local _v46a53c = Vector2; if _v46a53c ~= nil then _0x0e23[_sdec_ca7b({38,21,19,4,31,2,66})] = _v46a53c end end
do local _va656d4 = Lighting; if _va656d4 ~= nil then _0x0e23[_sdec_ca7b({60,25,23,24,4,25,30,23})] = _va656d4 end end
do local _v3287e1 = tostring; _0x0e23[_v3287e1 ~= nil and _sdec_ca7b({4,31,3,4,2,25,30,23}) or false] = _v3287e1 end
do local _v1de9fd = MarketplaceService; if _v1de9fd ~= nil then _0x0e23.MarketplaceService = _v1de9fd end end
do local _va362a4 = Color3; _0x0e23[_va362a4 ~= nil and _sdec_ca7b({51,31,28,31,2,67}) or false] = _va362a4 end
do local _v458dc0 = rawlen; if _v458dc0 ~= nil then _0x0e23.rawlen = _v458dc0 end end
do local _vf55ca2 = ipairs; if _vf55ca2 ~= nil then _0x0e23[_sdec_ca7b({25,0,17,25,2,3})] = _vf55ca2 end end
do local _v3f2bca = DateTime; if _v3f2bca ~= nil then _0x0e23[_sdec_ca7b({52,17,4,21,36,25,29,21})] = _v3f2bca end end
do local _v00a096 = Axes; _0x0e23[_v00a096 ~= nil and _sdec_ca7b({49,8,21,3}) or false] = _v00a096 end
do local _v629526 = Region3; if _v629526 ~= nil then _0x0e23[_sdec_ca7b({34,21,23,25,31,30,67})] = _v629526 end end
do local _vb276cc = next; _0x0e23[_vb276cc ~= nil and _sdec_ca7b({30,21,8,4}) or false] = _vb276cc end
do local _vad68d4 = coroutine; if _vad68d4 ~= nil then _0x0e23[_sdec_ca7b({19,31,2,31,5,4,25,30,21})] = _vad68d4 end end
do local _v7eabfc = warn; _0x0e23[_v7eabfc ~= nil and _sdec_ca7b({7,17,2,30}) or false] = _v7eabfc end
do local _v528ff6 = wait; if _v528ff6 ~= nil then _0x0e23.wait = _v528ff6 end end
do local _vdb9902 = os; if _vdb9902 ~= nil then _0x0e23.os = _vdb9902 end end
do local _vce8bf5 = xpcall; if _vce8bf5 ~= nil then _0x0e23[_sdec_ca7b({8,0,19,17,28,28})] = _vce8bf5 end end
do local _v25ac6a = rawset; _0x0e23[_v25ac6a ~= nil and _sdec_ca7b({2,17,7,3,21,4}) or false] = _v25ac6a end
do local _v6838c3 = StarterPlayer; _0x0e23[_v6838c3 ~= nil and _sdec_ca7b({35,4,17,2,4,21,2,32,28,17,9,21,2}) or false] = _v6838c3 end
do local _v193ae8 = rawequal; if _v193ae8 ~= nil then _0x0e23.rawequal = _v193ae8 end end
do local _v75b91d = NumberSequence; if _v75b91d ~= nil then _0x0e23.NumberSequence = _v75b91d end end
do local _vc5e25a = io; if _vc5e25a ~= nil then _0x0e23.io = _vc5e25a end end
do local _vd778ff = UDim; if _vd778ff ~= nil then _0x0e23[_sdec_ca7b({37,52,25,29})] = _vd778ff end end
do local _v3db334 = Enum; _0x0e23[_v3db334 ~= nil and _sdec_ca7b({53,30,5,29}) or false] = _v3db334 end
do local _vce4032 = Teams; if _vce4032 ~= nil then _0x0e23.Teams = _vce4032 end end
do local _v1abe48 = utf8; if _v1abe48 ~= nil then _0x0e23[_sdec_ca7b({5,4,22,72})] = _v1abe48 end end
do local _vde21b8 = Faces; if _vde21b8 ~= nil then _0x0e23[_sdec_ca7b({54,17,19,21,3})] = _vde21b8 end end
do local _v8ab630 = ColorSequenceKeypoint; if _v8ab630 ~= nil then _0x0e23[_sdec_ca7b({51,31,28,31,2,35,21,1,5,21,30,19,21,59,21,9,0,31,25,30,4})] = _v8ab630 end end
do local _v739a00 = assert; if _v739a00 ~= nil then _0x0e23.assert = _v739a00 end end
do local _v933cc7 = StarterGui; if _v933cc7 ~= nil then _0x0e23.StarterGui = _v933cc7 end end
do local _vf7e693 = NumberSequenceKeypoint; _0x0e23[_vf7e693 ~= nil and _sdec_ca7b({62,5,29,18,21,2,35,21,1,5,21,30,19,21,59,21,9,0,31,25,30,4}) or false] = _vf7e693 end
do local _ve5e465 = PhysicalProperties; if _ve5e465 ~= nil then _0x0e23[_sdec_ca7b({32,24,9,3,25,19,17,28,32,2,31,0,21,2,4,25,21,3})] = _ve5e465 end end
do local _v6d3f31 = Ray; if _v6d3f31 ~= nil then _0x0e23[_sdec_ca7b({34,17,9})] = _v6d3f31 end end
do local _v1088be = BadgeService; if _v1088be ~= nil then _0x0e23.BadgeService = _v1088be end end
do local _v44d638 = InsertService; if _v44d638 ~= nil then _0x0e23.InsertService = _v44d638 end end
do local _vfce32c = NumberRange; if _vfce32c ~= nil then _0x0e23.NumberRange = _vfce32c end end
do local _v98873e = task; _0x0e23[_v98873e ~= nil and _sdec_ca7b({4,17,3,27}) or false] = _v98873e end
do local _v50a99c = spawn; if _v50a99c ~= nil then _0x0e23[_sdec_ca7b({3,0,17,7,30})] = _v50a99c end end
do local _v850d78 = workspace; if _v850d78 ~= nil then _0x0e23[_sdec_ca7b({7,31,2,27,3,0,17,19,21})] = _v850d78 end end
do local _v06dc07 = type; if _v06dc07 ~= nil then _0x0e23.type = _v06dc07 end end
do local _vfa7e9e = getmetatable; if _vfa7e9e ~= nil then _0x0e23[_sdec_ca7b({23,21,4,29,21,4,17,4,17,18,28,21})] = _vfa7e9e end end
do local _vff28fa = TextService; if _vff28fa ~= nil then _0x0e23.TextService = _vff28fa end end
do local _va7da7f = Random; _0x0e23[_va7da7f ~= nil and _sdec_ca7b({34,17,30,20,31,29}) or false] = _va7da7f end
do local _v35a287 = tonumber; if _v35a287 ~= nil then _0x0e23[_sdec_ca7b({4,31,30,5,29,18,21,2})] = _v35a287 end end
do local _v301e85 = TweenService; if _v301e85 ~= nil then _0x0e23[_sdec_ca7b({36,7,21,21,30,35,21,2,6,25,19,21})] = _v301e85 end end
do local _v838ae1 = table; if _v838ae1 ~= nil then _0x0e23[_sdec_ca7b({4,17,18,28,21})] = _v838ae1 end end
do local _v2edf2e = UDim2; _0x0e23[_v2edf2e ~= nil and _sdec_ca7b({37,52,25,29,66}) or false] = _v2edf2e end
_0x0e23[false] = nil
local _glob_env_93b006
do local _ok, _0x04bd = pcall(getfenv, 1); if _ok and type(_0x04bd) == _sdec_ca7b({4,17,18,28,21}) then _glob_env_93b006 = _0x04bd else _glob_env_93b006 = _G end end
setmetatable(_0x0e23, { __index = _glob_env_93b006, __newindex = _glob_env_93b006 })

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = _G["workspace"]
  end
local _0x627a = 4096
local _0xd504 = 16383
local _0x8742 = 16384
local _0xa703 = 268435456
local _0xffeb = 4398046511104
local _0x630e = 8192


local _0x8e5c

local function _0x15fb(_0xb551, _0x6978, _0xb523)
  if _0xb523 >= _0x630e then return _0x6978[_0xb523 - _0x630e + 1] end
  return _0xb551[_0xb523]
end

local function _0xd05d(_0x5cd9, _0xa095)
  return function(...)
    local _0xc16f = _0x72e1(_sdec_ca7b({83}), ...)
    return _0x8e5c(_0x5cd9, _0xa095, { ... }, _0xc16f)
  end
end

_0x8e5c = function(_0x5cb4, _0xe662, _0x570e, _0x8704)
  local _0x0235 = _0x5cb4.insns
  local _0x2f8c = _0x0235[1]
  local _0xc4a5 = _0x5cb4.consts
  local _0x7302 = _0x5cb4.protos
  local _0x56d6 = _0x5cb4.maxstack or 64
  local _0xb551 = {}
  for i = 0, _0x56d6 + 16 do _0xb551[i] = nil end
  _0x8704 = _0x8704 or 0
  local _0x25a1 = _0x5cb4.numparams
  for i = 1, _0x25a1 do _0xb551[i - 1] = _0x570e[i] end
  local _0x6e37 = nil
  local _0xa8c5 = 0
  if _0x5cb4.isvararg then
    _0x6e37 = {}
    _0xa8c5 = _0x8704 - _0x25a1
    if _0xa8c5 < 0 then _0xa8c5 = 0 end
    for i = 1, _0xa8c5 do _0x6e37[i] = _0x570e[_0x25a1 + i] end
  end
  local _0xe28c = 1
  local _0xce81 = _0x25a1
  local _0x78cd = _0x0235[2]
  while _0xe28c <= _0x78cd do
    while _0x0235[7] < _0xe28c do
      local _0x3a98 = _0x0235[7] + 1
      _0x0235[7] = _0x3a98
      local _0x04bd = _0x2f8c[_0x3a98]
      local _0x963e = _0x04bd % _0xa188
      local _0x7e66 = (_0x04bd - _0x963e) / _0xa188
      local _0xedba = _0xc49a(_0x0235[3], (_0x3a98 * _0x0235[5]) % _0xa188)
      local _0xa03a = _0xc49a(_0x0235[4], (_0x3a98 * _0x0235[6]) % _0xa188)
      local _0xcecb = _0xc49a(_0x963e, _0xedba)
      local _0x7720 = _0xc49a(_0x7e66, _0xa03a)
      _0x2f8c[_0x3a98] = _0xcecb + _0x7720 * _0xa188
      _0x0235[3] = (_0xc49a(_0x0235[3], _0xcecb) + _0x0235[4]) % _0xa188
      _0x0235[4] = (_0xc49a(_0x0235[4], _0x7720) + _0x0235[3]) % _0xa188
    end
    local _0xcb03 = _0x2f8c[_0xe28c]
    local _0x91c2 = _0xcb03 % _0xa188
    local _0x9a61 = (_0xcb03 - _0x91c2) / _0xa188
    _0x91c2 = _0xc49a(_0x91c2, (_0xe28c * _0xd2f8 + _0x99fa) % _0xa188)
    _0x9a61 = _0xc49a(_0x9a61, (_0xe28c * _0x278a + _0x5d09) % _0xa188)
    local _0x0781 = _0x91c2 + _0x9a61 * _0xa188
    local _0xba91 = (_0x0781 % _0x8742) - _0x627a
    local _0xed3b = (_0x0ed0(_0x0781 / _0x8742) % _0x8742) - _0x627a
    local _0x7d03 = (_0x0ed0(_0x0781 / _0xa703) % _0x8742) - _0x627a
    local _0x1c4a = _0x0ed0(_0x0781 / _0xffeb)
    _0xe28c = _0xe28c + 1
local _0x487c = _0x1c4a % 5
if _0x487c == 3 then
  if _0x1c4a == 23 then
    local _0x0e84 = _0xb551[_0xba91]
    do local _hc4e69 = _0xb551; local _h4fe60 = _0xc4a5; local _h67379 = _hc4e69[_0xba91]
_hc4e69[_0xba91] = _hc4e69[_0xed3b] - _h4fe60[_0x7d03 + 1]
end
  elseif _0x1c4a == 118 then
    do local _h1a07d = _0xb551; local _h15535 = _0xc4a5
do local _0x5a7e = _h1a07d[_0xed3b]; _h1a07d[_0xba91] = _0x5a7e and _0x5a7e[_0x15fb(_h1a07d, _h15535, _0x7d03)] end
end
  elseif _0x1c4a == 18 then
    do local _h78c9f = _0xb551; local _h788d7 = _h78c9f[_0xba91]
do
      local _0x5a7e = _h78c9f[_0xba91]
      local _0xc16f = (_0xed3b == 0) and (_0xce81 - _0xba91 - 1) or _0xed3b
      local offset = (_0x7d03 - 1) * 50
      for i = 1, _0xc16f do _0x5a7e[offset + i] = _h78c9f[_0xba91 + i] end
    end
end
  elseif _0x1c4a == 48 then
    do local _h5b935 = _0xb551
_h5b935[_0xba91] = #_0xc4a5
end
  elseif _0x1c4a == 83 then
    local _0x6237 = (_0xba91 * 23 + 11)
    do local _hf3d27 = _0xb551; local _h6fdc8 = _0x15fb
do local _0x6f82 = (_h6fdc8(_hf3d27, _0xc4a5, _0xed3b) < _h6fdc8(_hf3d27, _0xc4a5, _0x7d03)); if not (_0x6f82 == (_0xba91 ~= 0)) then _0xe28c = _0xe28c + 1 end end
end
  elseif _0x1c4a == 58 then
    local _0x8057 = _0xe28c + 71; _0x8057 = _0x8057 - _0x8057
    do local _h4a28d = _0xb551
_h4a28d[_0xba91] = _0xe662[_0xed3b + 1].v
end
  elseif _0x1c4a == 103 then
    local _0xdacb = _0xe28c + 68; _0xdacb = _0xdacb - _0xdacb
    do local _h80079 = _0xb551; local _h49c82 = _0x15fb; local _h86f56 = _0xba91 + 7
do local _0x3524 = _h80079[_0xed3b]; for i = _0xed3b + 1, _0x7d03 do _0x3524 = _0x3524 .. _h80079[i] end; _h80079[_0xba91] = _0x3524 end
end
  elseif _0x1c4a == 43 then
    local _0x1ae2 = _0xe28c + 17; _0x1ae2 = _0x1ae2 - _0x1ae2
    do local _hecbc4 = _0xb551; local _h358d1 = _0xc4a5; local _h6b905 = _0x15fb; local _h68240 = (_0xe28c + _0xed3b) % 15
do
      if _0xed3b == 0 then
        local _0x3fdd = {}
        local _0xc16f = _0xce81 - _0xba91
        for i = 0, _0xc16f - 1 do _0x3fdd[i + 1] = _hecbc4[_0xba91 + i] end
        return _0x92c1(_0x3fdd, 1, _0xc16f)
      elseif _0xed3b == 1 then
        return
      else
        local _0xc16f = _0xed3b - 1
        local _0x3fdd = {}
        for i = 0, _0xc16f - 1 do _0x3fdd[i + 1] = _hecbc4[_0xba91 + i] end
        return _0x92c1(_0x3fdd, 1, _0xc16f)
      end
    end
end
  else _0x6c47(_sdec_ca7b({18,17,20,80,31,0,19,31,20,21,80}) .. tostring(_0x1c4a) .. _sdec_ca7b({80,17,4,80,0,19,80}) .. tostring(_0xe28c - 1)) end
elseif _0x487c == 4 then
  if _0x1c4a == 99 then
    local _0xbe49 = _0xe28c + 17; _0xbe49 = _0xbe49 - _0xbe49
    do local _h8f18b = _0xb551; local _h25483 = _0x15fb; local _h4bca2 = _0xba91 + 15
_0xe28c = _0xe28c + _0xed3b
end
  elseif _0x1c4a == 84 then
    do
      local _0x3540 = _0xb551[_0xba91]
      local _0x3524 = _0xb551[_0xba91 + 1]
      local _0xcb8b = _0xb551[_0xba91 + 2]
      local _0x6958 = { _0x3540(_0x3524, _0xcb8b) }
      local nres = _0x7d03
      for i = 1, nres do _0xb551[_0xba91 + 2 + i] = _0x6958[i] end
      if _0xb551[_0xba91 + 3] ~= nil then
        _0xb551[_0xba91 + 2] = _0xb551[_0xba91 + 3]
      else
        _0xe28c = _0xe28c + 1
      end
    end
  elseif _0x1c4a == 124 then
    _0xb551[_0xba91] = -_0xb551[_0xed3b]
  elseif _0x1c4a == 14 then
    do local _h7f7d2 = _0xc4a5; local _h154a9 = _0xba91 + 2
do local _0x5a7e = _0xb551[_0xed3b]; _0xb551[_0xba91] = _0x5a7e and _0x5a7e[_0x15fb(_0xb551, _h7f7d2, _0x7d03)] end
end
  elseif _0x1c4a == 119 then
    local _0x4722 = _0xb551[_0xba91]
    do local _h594cf = _0xb551; local _h10771 = _0xc4a5
_0x0e23[_h10771[_0xed3b + 1]] = _h594cf[_0xba91]
end
  elseif _0x1c4a == 29 then
    local _0xd504 = #_0x2f8c
    do local _hf92b8 = _0xb551; local _h69438 = _0xc4a5; local _h10f42 = _0xba91 + 23
_hf92b8[_0xba91] = _h69438[_0xed3b + 1]; _0xe28c = _0xe28c + 1
end
  elseif _0x1c4a == 69 then
    do local _h63cc2 = _0xb551
_h63cc2[_0xba91] = _h63cc2[_0xed3b]
end
  else _0x6c47(_sdec_ca7b({18,17,20,80,31,0,19,31,20,21,80}) .. tostring(_0x1c4a) .. _sdec_ca7b({80,17,4,80,0,19,80}) .. tostring(_0xe28c - 1)) end
elseif _0x487c == 1 then
  if _0x1c4a == 76 then
    local _0x5304 = (_0xba91 * 30 + 3)
    do local _h9af04 = _0xb551; local _h2b02f = _0xc4a5
do
      _h9af04[_0xba91] = _h9af04[_0xba91] + _h9af04[_0xba91 + 2]
      local _0x0494 = _h9af04[_0xba91 + 2]
      if (_0x0494 > 0 and _h9af04[_0xba91] <= _h9af04[_0xba91 + 1]) or (_0x0494 <= 0 and _h9af04[_0xba91] >= _h9af04[_0xba91 + 1]) then
        _0xe28c = _0xe28c + _0xed3b
        _h9af04[_0xba91 + 3] = _h9af04[_0xba91]
      end
    end
end
  elseif _0x1c4a == 36 then
    local _0x39c8 = #_0x2f8c
    do local _hd328e = _0xb551; local _h2e181 = _0xc4a5
do local _0x3524 = _hd328e[_0xba91]; for i = _0xed3b, _0x7d03 do _0x3524 = _0x3524 .. tostring(_hd328e[i]) end; _hd328e[_0xba91] = _0x3524 end
end
  elseif _0x1c4a == 116 then
    do local _h14190 = _0xb551
do local _0x8197 = not not _h14190[_0xba91]; if not (_0x8197 == (_0x7d03 ~= 0)) then _0xe28c = _0xe28c + 1 end end
end
  elseif _0x1c4a == 106 then
    local _0xf6a2 = _0xe28c + 73; _0xf6a2 = _0xf6a2 - _0xf6a2
    do local _h3de23 = _0xb551; local _h04308 = _0xc4a5; local _ha9eb3 = (_0xe28c + _0xed3b) % 30
do local _0x3524 = _h3de23[_0xba91]; for i = _0xed3b, _0x7d03 do _0x3524 = _0x3524 .. tostring(_h3de23[i]) end; _h3de23[_0xba91] = _0x3524 end
end
  elseif _0x1c4a == 46 then
    local _0x069f = (_0xba91 * 18 + 26)
    do local _h2655a = _0xb551; local _hc8214 = _0xc4a5
_h2655a[_0xba91] = _h2655a[_0xed3b].v
end
  elseif _0x1c4a == 126 then
    do local _h1dd5a = _0xb551; local _h0150f = _0xc4a5
do
      if _0xed3b == 0 then
        for i = 1, _0xa8c5 do _h1dd5a[_0xba91 + i - 1] = _0x6e37[i] end
        for i = _0xa8c5 + 1, _0xa8c5 + 4 do _h1dd5a[_0xba91 + i - 1] = nil end
        _0xce81 = _0xba91 + _0xa8c5
      else
        local _0x8e5d = _0xed3b - 1
        for i = 1, _0x8e5d do
          if i <= _0xa8c5 then _h1dd5a[_0xba91 + i - 1] = _0x6e37[i] else _h1dd5a[_0xba91 + i - 1] = nil end
        end
      end
    end
end
  elseif _0x1c4a == 51 then
    local _0x3204 = #_0x2f8c
    do local _h07949 = _0xb551; local _h0bbc5 = _0xc4a5; local _h5428c = _0x15fb
do local _0x20ba = _h07949[_0xed3b]; _h07949[_0xba91 + 1] = _0x20ba; _h07949[_0xba91] = _0x20ba[_h5428c(_h07949, _h0bbc5, _0x7d03)] end
end
  elseif _0x1c4a == 41 then
    do local _hbbbf4 = _0xb551; local _h74b1b = _0xc4a5; local _h5186c = _hbbbf4[_0xba91]
_hbbbf4[_0xba91] = _0x15fb(_hbbbf4, _h74b1b, _0xed3b) ^ _0x15fb(_hbbbf4, _h74b1b, _0x7d03)
end
  elseif _0x1c4a == 6 then
    do local _h65d83 = _0xb551; local _hef5d5 = _0xc4a5; local _h87505 = (_0xe28c + _0xed3b) % 13
do
      local _0x3540 = _h65d83[_0xba91]
      local _0xd8c2
      if _0xed3b == 0 then _0xd8c2 = _0xce81 - _0xba91 - 1 else _0xd8c2 = _0xed3b - 1 end
      local _0xea94 = {}
      for i = 1, _0xd8c2 do _0xea94[i] = _h65d83[_0xba91 + i] end
      return _0x3540(_0x92c1(_0xea94, 1, _0xd8c2))
    end
end
  elseif _0x1c4a == 1 then
    local _0xf15b = (_0xba91 * 32 + 6)
    do local _h7f0b5 = _0xb551; local _h921f3 = _0xc4a5; local _h7f368 = _0x15fb
_h7f0b5[_0xba91] = _h7f368(_h7f0b5, _h921f3, _0xed3b) * _h7f368(_h7f0b5, _h921f3, _0x7d03)
end
  elseif _0x1c4a == 31 then
    do local _h37f8b = _0xb551; local _h6e225 = _0xc4a5
_h37f8b[_0xed3b].v = _h37f8b[_0xba91]
end
  else _0x6c47(_sdec_ca7b({18,17,20,80,31,0,19,31,20,21,80}) .. tostring(_0x1c4a) .. _sdec_ca7b({80,17,4,80,0,19,80}) .. tostring(_0xe28c - 1)) end
elseif _0x487c == 2 then
  if _0x1c4a == 12 then
    do local _h8f95d = _0xb551; local _ha951d = _0xc4a5; local _h9b504 = _0x15fb
_h8f95d[_0xba91] = { v = _h8f95d[_0xba91] }
end
  elseif _0x1c4a == 107 then
    do local _hf63b6 = _0xb551; local _h49b80 = _0xc4a5; local _h5d4a7 = (_0xe28c + _0xed3b) % 17
-- no-_0x1c4a under our _0x1b94 model
end
  elseif _0x1c4a == 97 then
    local _0x006c = #_0x2f8c
    do local _hdf425 = _0xb551
do local _0x21d9 = (_0x15fb(_hdf425, _0xc4a5, _0xed3b) <= _0x15fb(_hdf425, _0xc4a5, _0x7d03)); if not (_0x21d9 == (_0xba91 ~= 0)) then _0xe28c = _0xe28c + 1 end end
end
  elseif _0x1c4a == 67 then
    do local _h3b7a0 = _0xb551
_h3b7a0[_0xba91] = {}
end
  elseif _0x1c4a == 112 then
    local _0xae94 = (_0xba91 * 35 + 40)
    do local _h8fb00 = _0xb551; local _h8eefc = _0xc4a5; local _h60c98 = _0x15fb; local _hdd414 = _h8fb00[_0xba91]
_h8fb00[_0xba91] = #_h8fb00[_0xed3b]
end
  elseif _0x1c4a == 72 then
    local _0xad9c = #_0x2f8c
    do local _h50c62 = _0xb551; local _h518ab = _0xc4a5; local _h0e7e8 = _h50c62[_0xba91]
_h50c62[_0xba91] = _0x15fb(_h50c62, _h518ab, _0xed3b) + _0x15fb(_h50c62, _h518ab, _0x7d03)
end
  elseif _0x1c4a == 2 then
    local _0xd7a5 = _0xe28c + 72; _0xd7a5 = _0xd7a5 - _0xd7a5
    do local _h44831 = (_0xe28c + _0xed3b) % 29
_0xe28c = _0xe28c + _0xed3b; _0xb551[_0xba91] = _0xb551[_0xba91 + 1]
end
  elseif _0x1c4a == 27 then
    local _0xcadd = (_0xba91 * 30 + 41)
    do local _h434f5 = _0xb551; local _hfddd4 = _0xc4a5
_h434f5[_0xba91] = _0x15fb(_h434f5, _hfddd4, _0xed3b) % _0x15fb(_h434f5, _hfddd4, _0x7d03)
end
  elseif _0x1c4a == 122 then
    local _0x3268 = #_0x2f8c
    do local _hbd3bb = _0xb551
_hbd3bb[_0xba91] = _hbd3bb[_0xba91] - _hbd3bb[_0xba91 + 2]; _0xe28c = _0xe28c + _0xed3b
end
  elseif _0x1c4a == 7 then
    do local _h15495 = _0xb551; local _h239f8 = _0x15fb
_h15495[_0xba91] = _h239f8(_h15495, _0xc4a5, _0xed3b) / _h239f8(_h15495, _0xc4a5, _0x7d03)
end
  elseif _0x1c4a == 117 then
    do local _ha69b8 = _0xb551; local _heb9de = _0x15fb
_ha69b8[_0xba91] = _ha69b8[_0xed3b][_heb9de(_ha69b8, _0xc4a5, _0x7d03)]
end
  elseif _0x1c4a == 82 then
    do local _hc5d02 = _0xc4a5
do
      local _0x3540 = _0xb551[_0xba91]
      local _0xd8c2
      if _0xed3b == 0 then _0xd8c2 = _0xce81 - _0xba91 - 1 else _0xd8c2 = _0xed3b - 1 end
      local _0xea94 = {}
      for i = 1, _0xd8c2 do _0xea94[i] = _0xb551[_0xba91 + i] end
      local _0x6958 = { _0x3540(_0x92c1(_0xea94, 1, _0xd8c2)) }
      local _0x0355 = #_0x6958
      if _0x7d03 == 0 then
        for i = 1, _0x0355 do _0xb551[_0xba91 + i - 1] = _0x6958[i] end
        for i = _0x0355 + 1, _0x0355 + 4 do _0xb551[_0xba91 + i - 1] = nil end
        _0xce81 = _0xba91 + _0x0355
      elseif _0x7d03 == 1 then
        -- drop all
      else
        local _0x8e5d = _0x7d03 - 1
        for i = 1, _0x8e5d do _0xb551[_0xba91 + i - 1] = _0x6958[i] end
        for i = _0x0355 + 1, _0x8e5d do _0xb551[_0xba91 + i - 1] = nil end
      end
    end
end
  elseif _0x1c4a == 52 then
    local _0xf5f7 = _0xe28c + 48; _0xf5f7 = _0xf5f7 - _0xf5f7
    do local _h01cdf = _0xb551; local _hcc32e = _0xc4a5
_h01cdf[_0xba91] = _0x0e23[_hcc32e[_0xed3b + 1]]
end
  elseif _0x1c4a == 32 then
    local _0x1598 = (_0xba91 * 2 + 25)
    do local _h792a0 = _0xc4a5; local _hb4844 = _0xba91 + 23
do local _0x3524 = _0xb551[_0xba91]; for i = _0xed3b, _0x7d03 do _0x3524 = _0x3524 .. tostring(_0xb551[i]) end; _0xb551[_0xba91] = _0x3524 end
end
  else _0x6c47(_sdec_ca7b({18,17,20,80,31,0,19,31,20,21,80}) .. tostring(_0x1c4a) .. _sdec_ca7b({80,17,4,80,0,19,80}) .. tostring(_0xe28c - 1)) end
elseif _0x487c == 0 then
  if _0x1c4a == 55 then
    _0xb551[_0xba91] = _0xc4a5[_0xed3b + 1]
  elseif _0x1c4a == 75 then
    local _0x0d1c = #_0x2f8c
    do local _h58d20 = _0xb551
_h58d20[_0xba91] = _h58d20[_0xed3b] - _0xc4a5[_0x7d03 + 1]
end
  elseif _0x1c4a == 90 then
    local _0xcb02 = #_0x2f8c
    do local _h9a63b = _0xb551; local _h149f2 = _0xc4a5; local _h15b61 = _0x15fb; local _h3d532 = _0xba91 + 3
for i = _0xba91, _0xed3b do _h9a63b[i] = nil end
end
  elseif _0x1c4a == 10 then
    do local _h0a68f = _0xb551; local _h34554 = _0xc4a5
_h0a68f[_0xba91] = _h0a68f[_0xed3b] - _h34554[_0x7d03 + 1]
end
  elseif _0x1c4a == 115 then
    do local _h92d74 = _0xc4a5; local _h9dbd3 = _0x15fb
do
      local _0x5cd9 = _0x7302[_0xed3b + 1]
      local _0xa095 = {}
      for i = 1, #_0x5cd9.upvs do
        while _0x0235[7] < _0xe28c do
      local _0x3a98 = _0x0235[7] + 1
      _0x0235[7] = _0x3a98
      local _0x04bd = _0x2f8c[_0x3a98]
      local _0x963e = _0x04bd % _0xa188
      local _0x7e66 = (_0x04bd - _0x963e) / _0xa188
      local _0xedba = _0xc49a(_0x0235[3], (_0x3a98 * _0x0235[5]) % _0xa188)
      local _0xa03a = _0xc49a(_0x0235[4], (_0x3a98 * _0x0235[6]) % _0xa188)
      local _0xcecb = _0xc49a(_0x963e, _0xedba)
      local _0x7720 = _0xc49a(_0x7e66, _0xa03a)
      _0x2f8c[_0x3a98] = _0xcecb + _0x7720 * _0xa188
      _0x0235[3] = (_0xc49a(_0x0235[3], _0xcecb) + _0x0235[4]) % _0xa188
      _0x0235[4] = (_0xc49a(_0x0235[4], _0x7720) + _0x0235[3]) % _0xa188
    end
    local _0xcb03 = _0x2f8c[_0xe28c]
    local _0x91c2 = _0xcb03 % _0xa188
    local _0x9a61 = (_0xcb03 - _0x91c2) / _0xa188
    _0x91c2 = _0xc49a(_0x91c2, (_0xe28c * _0xd2f8 + _0x99fa) % _0xa188)
    _0x9a61 = _0xc49a(_0x9a61, (_0xe28c * _0x278a + _0x5d09) % _0xa188)
    local _0xa15d = _0x91c2 + _0x9a61 * _0xa188
        local _0xa4e2 = (_0x0ed0(_0xa15d / _0x8742) % _0x8742) - _0x627a
        local _0xcd3b = _0x0ed0(_0xa15d / _0xffeb)
        _0xe28c = _0xe28c + 1
        if _0xcd3b == 69 then
          _0xa095[i] = _0xb551[_0xa4e2]
        elseif _0xcd3b == 58 then
          _0xa095[i] = _0xe662[_0xa4e2 + 1]
        else
          _0x6c47(_sdec_ca7b({18,17,20,80,5,0,6,17,28,5,21,80,18,25,30,20,25,30,23,80,31,0,19,31,20,21,80}) .. tostring(_0xcd3b))
        end
      end
      _0xb551[_0xba91] = _0xd05d(_0x5cd9, _0xa095)
    end
end
  elseif _0x1c4a == 25 then
    do local _h318a7 = _0xc4a5
_0xe662[_0xed3b + 1].v = _0xb551[_0xba91]
end
  elseif _0x1c4a == 120 then
    do local _h15808 = _0xb551; local _h51839 = _0x15fb
_h15808[_0xba91] = not _h15808[_0xed3b]
end
  elseif _0x1c4a == 85 then
    local _0x28c3 = #_0x2f8c
    do local _h6e8bb = _0xb551
_h6e8bb[_0xba91][_0x15fb(_h6e8bb, _0xc4a5, _0xed3b)] = _0x15fb(_h6e8bb, _0xc4a5, _0x7d03)
end
  elseif _0x1c4a == 100 then
    local _0xcfb5 = _0xe28c + 82; _0xcfb5 = _0xcfb5 - _0xcfb5
    do local _h6cd28 = _0xb551
_h6cd28[_0xba91] = _0x15fb(_h6cd28, _0xc4a5, _0xed3b) - _0x15fb(_h6cd28, _0xc4a5, _0x7d03)
end
  elseif _0x1c4a == 35 then
    do local _h9c150 = _0xb551
do local _0x3b3c = (_0x15fb(_h9c150, _0xc4a5, _0xed3b) == _0x15fb(_h9c150, _0xc4a5, _0x7d03)); if not (_0x3b3c == (_0xba91 ~= 0)) then _0xe28c = _0xe28c + 1 end end
end
  elseif _0x1c4a == 65 then
    do local _h07e34 = _0xb551; local _h262d3 = _0xc4a5
_h07e34[_0xba91] = (_0xed3b ~= 0); if _0x7d03 ~= 0 then _0xe28c = _0xe28c + 1 end
end
  else _0x6c47(_sdec_ca7b({18,17,20,80,31,0,19,31,20,21,80}) .. tostring(_0x1c4a) .. _sdec_ca7b({80,17,4,80,0,19,80}) .. tostring(_0xe28c - 1)) end
else _0x6c47(_sdec_ca7b({18,17,20,80,18,5,19,27,21,4,80}) .. tostring(_0x487c)) end
  end
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = string.byte("x")
    local _ = _G["Vector3"]
  end

local _0x6a39 = 
{
  numparams = 0,
  isvararg = true,
  maxstack = 5,
  insns = _0x3fd0(_0x6389(_0xe491(_0x8688(_u7cc8(_sdec_ca7b({221,78,42,154,91,249,129,0,37,235,11,62,224,111,93,118,248,69,100,131,14,171,201,33,74,181,80,71,141,122,105,48,236,5,26,210,94,244,141,50,121,142,22,112,188,45,97,127,229,95,54,137,28,252,189,21,108,239,55,98,229,111,13,80,243,13,111,199,89,216,179,38})),57)),8), 313695849, 28112356, 25507251, 31194009, 3967153, 10333724),
  consts = {1,2,3},
  protos = {
    {
      numparams = 0,
      isvararg = true,
      maxstack = 2,
      insns = _0x3fd0(_0x6389(_0xe491(_0x8688(_u7cc8(_sdec_ca7b({248,23,36,187,18,201,212,23,76,229,68,84,137,47,90,73,222,26,106,210,4,233,154,62,103,190,90,116,150,76,80,54,221,34,56,171,76,211,169,82,42,151,28,43,175})),36)),5), 1686233744, 28112356, 25507251, 31194009, 3967153, 10333724),
      consts = {_sdec_ca7b({3,21,28,21,19,4}),_sdec_ca7b({83})},
      protos = {},
      upvs = {},
    }
    ,
  },
  upvs = {},
}

return _0x8e5c(_0x6a39, {}, {...}, _0x72e1(_sdec_ca7b({83}), ...))
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
  local _env = {_db13b=30010,_d2f76=30325,_d2483=11351,_d8efc=56646,_dfbc4=53473}
  local _s5c04 = _env._d2483
  local _fn = function(...)
return (function(...)
  local _env = {_d9534=25016,_dc389=6381,_d2583=62855,_db34e=51327,_d506a=45871}
  local _saf = _env._d2583
  local _fn = function(...)
return (function(...)
  local _env = {_dab35=44684,_de6f2=65025,_d665a=352,_d1f39=39405}
  local _sd40a = _env._de6f2
  local _fn = function(...)

local function _sdec_ef0b(b)
  local _k = 17
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
  local _0xaf9c = {}
  for i = 1, #b do _0xaf9c[i] = string.char(_xor(b[i], _k)) end
  return table.concat(_0xaf9c)
end


local _u6e2f = table.concat
local _ucf07 = string.byte
local _u7f50 = string.char
local _u4064 = string.sub
local _ubbc1 = rawget
local function _uc2b5(_ud08b, _uc6af)
  local _u7b05, _ufb71 = 0, 1
  for _ = 1, 8 do
    local _ubba0, _u8ba6 = _ud08b % 2, _uc6af % 2
    if _ubba0 ~= _u8ba6 then _u7b05 = _u7b05 + _ufb71 end
    _ud08b = (_ud08b - _ubba0) / 2
    _uc6af = (_uc6af - _u8ba6) / 2
    _ufb71 = _ufb71 * 2
  end
  return _u7b05
end
local _u0b7e = 0
do
  -- debug.gethook is present in Lua 5.1 and Luau (debug lib). _0xfdc6 hook means
  -- someone'_0x7168 tracing us; corrupt the pad.
  local _u2b53 = debug and debug.gethook
  if _u2b53 then
    local ok, hk = pcall(_u2b53)
    if ok and hk ~= nil then _u0b7e = _uc2b5(_u0b7e, 204) end
  end
  -- Roblox environment check. In Roblox/Luau, `game` is a userdata living
  -- in the script'_0x7168 environment chain (NOT in `_G`), so we use a bare
  -- global reference rather than `rawget(_G, "game")` which always returns
  -- nil under Roblox. Bare-global access goes through the env __index chain
  -- and finds `game` correctly. Any execution context that doesn'_0xaf9c expose
  -- `game` (stock lua5.1, hostile sandbox with stripped env) silently
  -- corrupts the pad.
  if game == nil then
    _u0b7e = _uc2b5(_u0b7e, 171)
  end
  -- LuaJIT detector. Roblox is Luau, not LuaJIT. If the `jit` global exists
  -- and has a `.version` field, we're running under LuaJIT (likely in a
  -- hostile sandbox); corrupt the pad.
  if rawget and rawget(_G, _sdec_ef0b({123,120,101})) ~= nil then
    _u0b7e = _uc2b5(_u0b7e, 90)
  end
end
local _u2f00 = {51,189,48,241,156,159,76,43,63,148,222,69,27,82,127,160}
local _u5c4a = {5,6,1,2,14,15,8,16,13,11,10,9,4,12,3,7}
local _ufc76 = {}
for _ua868 = 1, 16 do
  _ufc76[_ua868] = _uc2b5(_u2f00[_u5c4a[_ua868]], _u0b7e)
end
local function _ua9d7(_0x7168)
  local out = {}
  local len = #_0x7168
  for _ua868 = 1, len do
    local _u440b = ((_ua868 - 1) % 16) + 1
    out[_ua868] = _u7f50(_uc2b5(_ucf07(_0x7168, _ua868), _ufc76[_u440b]))
  end
  return _u6e2f(out)
end

if ((function() return false end)()) then
    local _ = _G["CFrame"]
  end

local _0xda82 = _sdec_ef0b({33,32,35,34,37,36,39,38,41,40,80,83,82,85,84,87,86,89,88,91,90,93,92,95,94,65,64,67,66,69,68,71,70,73,72,75,112,115,114,117,116,119,118,121,120,123,122,125,124,127,126,97,96,99,98,101,100,103,102,105,104,107,48,50,53,52,55,57,56,59,58,60,42,45,44,47,46,81,79,78,113,106,109,108,111})
local _0xbe39 = {}
for i = 1, 85 do _0xbe39[string.byte(_0xda82, i)] = i - 1 end
local function _0x6076(_0x7168, origLen)
  local out = {}
  local outPos = 0
  local sLen = #_0x7168
  local padCount = (5 - (sLen % 5)) % 5
  local i = 1
  while i <= sLen do
    local v = 0
    local group = 0
    while group < 5 do
      local ch
      if i + group <= sLen then
        ch = _0xbe39[string.byte(_0x7168, i + group)]
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

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = _G["CFrame"]
  end
local function _0x22af(buf)
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
    local _ = _G["workspace"]
    local _ = math.huge
  end
local function _0x4337(bytes, _0xdc55)
  local out = {}
  for i = 1, _0xdc55 do
    local base = (i - 1) * 7
    local v = 0
    for j = 7, 1, -1 do
      v = v * 256 + bytes[base + j]
    end
    out[i] = v
  end
  return out
end



local _0x37d1 = 33554432
local function _0x0e4b(a, b)
  local aLo = a % 65536
  local aHi = (a - aLo) / 65536
  local bLo = b % 65536
  local bHi = (b - bLo) / 65536
  local function xor16(_0xfab8, y)
    local r, p = 0, 1
    for _ = 1, 16 do
      local xb, yb = _0xfab8 % 2, y % 2
      if xb ~= yb then r = r + p end
      _0xfab8 = (_0xfab8 - xb) / 2
      y = (y - yb) / 2
      p = p * 2
    end
    return r
  end
  return xor16(aHi, bHi) * 65536 + xor16(aLo, bLo)
end

-- _0x41e9: stateful (lazy) bytecode decode.
--
-- `_0xe78f` no longer materializes a plaintext instruction array. It
-- returns a "_0x9682" holding (a) the layer-1-encrypted integer array, (b) the
-- initial feedback-chain state seeded by the per-proto checksum and the
-- script-env fingerprint, and (c) the per-build salt constants. The outer
-- _0x9682 is what `_0xf603.insns` becomes. Each _0x6aa4() call unboxes these
-- fields into its own local state and advances the decryption lazily at
-- fetch time: instruction `i` is only peeled from the feedback chain
-- when the dispatch loop actually reads it. Control flow that never
-- reaches an instruction (dead code, branches not taken) leaves those
-- cells in their encrypted form. An analyst who dumps the _0x9682'_0x7168 data
-- field outside the VM gets layer-1-encrypted integers with no way to
-- recover the feedback state without re-running the chain in order.
local function _0xe78f(enc, checksum, seed_a, seed_b, salt_a, salt_b, envConst)
  local env = ((game ~= nil) and 1 or 0)
  local state_a = _0x0e4b(seed_a, checksum % _0x37d1)
  local state_b = _0x0e4b(seed_b, (env * envConst + math.floor(checksum / _0x37d1)) % _0x37d1)
  -- numeric indices avoid any chance of the rename pass mangling a
  -- field-key identifier that happens to collide with a VM local name.
  -- Layout: [1]=data, [2]=_0xdc55, [3]=state_a, [4]=state_b, [5]=salt_a,
  --        [6]=salt_b, [7]=decLvl.  decLvl starts at 0 and only ever
  --        advances — so an inner proto that is executed multiple times
  --        (e.g. a closure called in a loop) reuses the same already-
  --        decrypted instructions on later calls instead of double-
  --        applying layer 1 to the in-place mutated array.
  return { enc, #enc, state_a, state_b, salt_a, salt_b, 0 }
end
local _0x74c7, _0x76bc, _0xcc89, _0xa273 = 17128231, 20417759, 24483517, 17503792

if ((function() return false end)()) then
    local _ = math.huge
    local _ = string.byte("x")
  end
-- larpfuscator runtime (plain)
local _0x6750 = math.floor
local _0x70de = select
local _0xe591 = type
local _0x38ca = setmetatable
local _0x8719 = getmetatable
local _0x7e74 = table.unpack or unpack
local _0x31a2 = error
local _0x18fb = {}
do local _vd383d2 = RunService; if _vd383d2 ~= nil then _0x18fb.RunService = _vd383d2 end end
do local _vddc07e = HttpService; if _vddc07e ~= nil then _0x18fb.HttpService = _vddc07e end end
do local _v7ed489 = UDim2; if _v7ed489 ~= nil then _0x18fb[_sdec_ef0b({68,85,120,124,35})] = _v7ed489 end end
do local _v7756bc = tonumber; _0x18fb[_v7756bc ~= nil and _sdec_ef0b({101,126,127,100,124,115,116,99}) or false] = _v7756bc end
do local _v9de001 = spawn; _0x18fb[_v9de001 ~= nil and _sdec_ef0b({98,97,112,102,127}) or false] = _v9de001 end
do local _vbfffbb = rawset; _0x18fb[_vbfffbb ~= nil and _sdec_ef0b({99,112,102,98,116,101}) or false] = _vbfffbb end
do local _vaad367 = game; if _vaad367 ~= nil then _0x18fb[_sdec_ef0b({118,112,124,116})] = _vaad367 end end
do local _v111c69 = pcall; if _v111c69 ~= nil then _0x18fb.pcall = _v111c69 end end
do local _v541c5d = TweenInfo; if _v541c5d ~= nil then _0x18fb.TweenInfo = _v541c5d end end
do local _v8099e5 = assert; _0x18fb[_v8099e5 ~= nil and _sdec_ef0b({112,98,98,116,99,101}) or false] = _v8099e5 end
do local _v73e548 = Instance; _0x18fb[_v73e548 ~= nil and _sdec_ef0b({88,127,98,101,112,127,114,116}) or false] = _v73e548 end
do local _ve0d195 = Axes; if _ve0d195 ~= nil then _0x18fb[_sdec_ef0b({80,105,116,98})] = _ve0d195 end end
do local _vd1f33c = print; if _vd1f33c ~= nil then _0x18fb[_sdec_ef0b({97,99,120,127,101})] = _vd1f33c end end
do local _v116af6 = ColorSequence; if _v116af6 ~= nil then _0x18fb[_sdec_ef0b({82,126,125,126,99,66,116,96,100,116,127,114,116})] = _v116af6 end end
do local _v170cd3 = unpack; if _v170cd3 ~= nil then _0x18fb.unpack = _v170cd3 end end
do local _va15918 = xpcall; _0x18fb[_va15918 ~= nil and _sdec_ef0b({105,97,114,112,125,125}) or false] = _va15918 end
do local _v193a6f = bit32; if _v193a6f ~= nil then _0x18fb[_sdec_ef0b({115,120,101,34,35})] = _v193a6f end end
do local _v8924c7 = wait; _0x18fb[_v8924c7 ~= nil and _sdec_ef0b({102,112,120,101}) or false] = _v8924c7 end
do local _ve1dd94 = ServerScriptService; _0x18fb[_ve1dd94 ~= nil and _sdec_ef0b({66,116,99,103,116,99,66,114,99,120,97,101,66,116,99,103,120,114,116}) or false] = _ve1dd94 end
do local _v97de82 = workspace; if _v97de82 ~= nil then _0x18fb.workspace = _v97de82 end end
do local _v54c1ce = script; if _v54c1ce ~= nil then _0x18fb.script = _v54c1ce end end
do local _v9da981 = ipairs; if _v9da981 ~= nil then _0x18fb.ipairs = _v9da981 end end
do local _vea51ae = DateTime; if _vea51ae ~= nil then _0x18fb[_sdec_ef0b({85,112,101,116,69,120,124,116})] = _vea51ae end end
do local _v99e09a = shared; if _v99e09a ~= nil then _0x18fb.shared = _v99e09a end end
do local _v288f49 = next; if _v288f49 ~= nil then _0x18fb.next = _v288f49 end end
do local _v39eb8f = task; _0x18fb[_v39eb8f ~= nil and _sdec_ef0b({101,112,98,122}) or false] = _v39eb8f end
do local _v2acd2c = io; if _v2acd2c ~= nil then _0x18fb.io = _v2acd2c end end
do local _v2e951a = NumberSequenceKeypoint; if _v2e951a ~= nil then _0x18fb[_sdec_ef0b({95,100,124,115,116,99,66,116,96,100,116,127,114,116,90,116,104,97,126,120,127,101})] = _v2e951a end end
do local _v161595 = debug; if _v161595 ~= nil then _0x18fb.debug = _v161595 end end
do local _vd4b275 = Region3; if _vd4b275 ~= nil then _0x18fb.Region3 = _vd4b275 end end
do local _vf7959d = utf8; _0x18fb[_vf7959d ~= nil and _sdec_ef0b({100,101,119,41}) or false] = _vf7959d end
do local _vbef14e = math; _0x18fb[_vbef14e ~= nil and _sdec_ef0b({124,112,101,121}) or false] = _vbef14e end
do local _v82075c = table; if _v82075c ~= nil then _0x18fb[_sdec_ef0b({101,112,115,125,116})] = _v82075c end end
do local _v74aef1 = SoundService; _0x18fb[_v74aef1 ~= nil and _sdec_ef0b({66,126,100,127,117,66,116,99,103,120,114,116}) or false] = _v74aef1 end
do local _vd6a38f = error; if _vd6a38f ~= nil then _0x18fb[_sdec_ef0b({116,99,99,126,99})] = _vd6a38f end end
do local _v62ab00 = NumberRange; if _v62ab00 ~= nil then _0x18fb.NumberRange = _v62ab00 end end
do local _v570c80 = type; if _v570c80 ~= nil then _0x18fb[_sdec_ef0b({101,104,97,116})] = _v570c80 end end
do local _v78769d = Vector3; if _v78769d ~= nil then _0x18fb.Vector3 = _v78769d end end
do local _v934576 = pairs; _0x18fb[_v934576 ~= nil and _sdec_ef0b({97,112,120,99,98}) or false] = _v934576 end
do local _v434d0d = RaycastParams; if _v434d0d ~= nil then _0x18fb[_sdec_ef0b({67,112,104,114,112,98,101,65,112,99,112,124,98})] = _v434d0d end end
do local _v8abcb5 = time; if _v8abcb5 ~= nil then _0x18fb[_sdec_ef0b({101,120,124,116})] = _v8abcb5 end end
do local _v09c12f = tostring; _0x18fb[_v09c12f ~= nil and _sdec_ef0b({101,126,98,101,99,120,127,118}) or false] = _v09c12f end
do local _v76d453 = ContentProvider; if _v76d453 ~= nil then _0x18fb[_sdec_ef0b({82,126,127,101,116,127,101,65,99,126,103,120,117,116,99})] = _v76d453 end end
do local _v0d2379 = setmetatable; if _v0d2379 ~= nil then _0x18fb[_sdec_ef0b({98,116,101,124,116,101,112,101,112,115,125,116})] = _v0d2379 end end
do local _va002f2 = BrickColor; if _va002f2 ~= nil then _0x18fb[_sdec_ef0b({83,99,120,114,122,82,126,125,126,99})] = _va002f2 end end
do local _v2c65f9 = Teams; _0x18fb[_v2c65f9 ~= nil and _sdec_ef0b({69,116,112,124,98}) or false] = _v2c65f9 end
do local _v1b9d42 = getmetatable; if _v1b9d42 ~= nil then _0x18fb.getmetatable = _v1b9d42 end end
do local _v9c5a55 = Ray; if _v9c5a55 ~= nil then _0x18fb[_sdec_ef0b({67,112,104})] = _v9c5a55 end end
do local _v6c595c = TextService; _0x18fb[_v6c595c ~= nil and _sdec_ef0b({69,116,105,101,66,116,99,103,120,114,116}) or false] = _v6c595c end
do local _vb4dbc9 = Lighting; _0x18fb[_vb4dbc9 ~= nil and _sdec_ef0b({93,120,118,121,101,120,127,118}) or false] = _vb4dbc9 end
do local _v8696ab = coroutine; _0x18fb[_v8696ab ~= nil and _sdec_ef0b({114,126,99,126,100,101,120,127,116}) or false] = _v8696ab end
do local _v98ebdc = rawget; if _v98ebdc ~= nil then _0x18fb.rawget = _v98ebdc end end
do local _v93f1a8 = tick; if _v93f1a8 ~= nil then _0x18fb[_sdec_ef0b({101,120,114,122})] = _v93f1a8 end end
do local _v287c99 = Rect; if _v287c99 ~= nil then _0x18fb[_sdec_ef0b({67,116,114,101})] = _v287c99 end end
do local _vdb46ea = StarterGui; if _vdb46ea ~= nil then _0x18fb.StarterGui = _vdb46ea end end
do local _v3f9435 = UDim; if _v3f9435 ~= nil then _0x18fb.UDim = _v3f9435 end end
do local _v656f94 = os; _0x18fb[_v656f94 ~= nil and _sdec_ef0b({126,98}) or false] = _v656f94 end
do local _vbc46d8 = Enum; if _vbc46d8 ~= nil then _0x18fb.Enum = _vbc46d8 end end
do local _v5f1bd6 = Color3; _0x18fb[_v5f1bd6 ~= nil and _sdec_ef0b({82,126,125,126,99,34}) or false] = _v5f1bd6 end
do local _vedab31 = Vector2; if _vedab31 ~= nil then _0x18fb[_sdec_ef0b({71,116,114,101,126,99,35})] = _vedab31 end end
do local _va02869 = delay; if _va02869 ~= nil then _0x18fb.delay = _va02869 end end
do local _v0fd4f0 = rawlen; if _v0fd4f0 ~= nil then _0x18fb[_sdec_ef0b({99,112,102,125,116,127})] = _v0fd4f0 end end
do local _vbedbc7 = ColorSequenceKeypoint; if _vbedbc7 ~= nil then _0x18fb.ColorSequenceKeypoint = _vbedbc7 end end
do local _v51f3ff = OverlapParams; _0x18fb[_v51f3ff ~= nil and _sdec_ef0b({94,103,116,99,125,112,97,65,112,99,112,124,98}) or false] = _v51f3ff end
do local _va56a07 = BadgeService; if _va56a07 ~= nil then _0x18fb[_sdec_ef0b({83,112,117,118,116,66,116,99,103,120,114,116})] = _va56a07 end end
do local _v654809 = PhysicsService; if _v654809 ~= nil then _0x18fb.PhysicsService = _v654809 end end
do local _v797516 = warn; _0x18fb[_v797516 ~= nil and _sdec_ef0b({102,112,99,127}) or false] = _v797516 end
do local _vaee72f = MessagingService; if _vaee72f ~= nil then _0x18fb.MessagingService = _vaee72f end end
do local _v2a775d = collectgarbage; if _v2a775d ~= nil then _0x18fb.collectgarbage = _v2a775d end end
do local _v80a7d7 = CFrame; if _v80a7d7 ~= nil then _0x18fb.CFrame = _v80a7d7 end end
do local _v041ad7 = Random; if _v041ad7 ~= nil then _0x18fb.Random = _v041ad7 end end
do local _v6d5f10 = Faces; if _v6d5f10 ~= nil then _0x18fb[_sdec_ef0b({87,112,114,116,98})] = _v6d5f10 end end
do local _v55d6be = select; _0x18fb[_v55d6be ~= nil and _sdec_ef0b({98,116,125,116,114,101}) or false] = _v55d6be end
do local _v7ec9f9 = StarterPack; if _v7ec9f9 ~= nil then _0x18fb.StarterPack = _v7ec9f9 end end
do local _v5388ca = rawequal; if _v5388ca ~= nil then _0x18fb.rawequal = _v5388ca end end
do local _vb34fa3 = NumberSequence; _0x18fb[_vb34fa3 ~= nil and _sdec_ef0b({95,100,124,115,116,99,66,116,96,100,116,127,114,116}) or false] = _vb34fa3 end
do local _vea6f8a = typeof; if _vea6f8a ~= nil then _0x18fb.typeof = _vea6f8a end end
do local _v5b35f3 = PolicyService; if _v5b35f3 ~= nil then _0x18fb[_sdec_ef0b({65,126,125,120,114,104,66,116,99,103,120,114,116})] = _v5b35f3 end end
do local _v8b9cab = PhysicalProperties; _0x18fb[_v8b9cab ~= nil and _sdec_ef0b({65,121,104,98,120,114,112,125,65,99,126,97,116,99,101,120,116,98}) or false] = _v8b9cab end
do local _vdfa3ac = string; if _vdfa3ac ~= nil then _0x18fb.string = _vdfa3ac end end
_0x18fb[false] = nil
local _glob_env_9dd87b
do local _ok, _0x77e3 = pcall(getfenv, 1); if _ok and type(_0x77e3) == _sdec_ef0b({101,112,115,125,116}) then _glob_env_9dd87b = _0x77e3 else _glob_env_9dd87b = _G end end
setmetatable(_0x18fb, { __index = _glob_env_9dd87b, __newindex = _glob_env_9dd87b })

if ((function() return false end)()) then
    local _ = string.byte("x")
    local _ = _G["game"]
  end
local _0x1511 = 4096
local _0x3777 = 16383
local _0x7310 = 16384
local _0x36fc = 268435456
local _0x8125 = 4398046511104
local _0xd18d = 8192


local _0x6aa4

local function _0x6d5f(_0xa74a, _0x8f2a, _0xfab8)
  if _0xfab8 >= _0xd18d then return _0x8f2a[_0xfab8 - _0xd18d + 1] end
  return _0xa74a[_0xfab8]
end

local function _0x328d(_0x8dbf, _0x696c)
  return function(...)
    local _0xdc55 = _0x70de(_sdec_ef0b({50}), ...)
    return _0x6aa4(_0x8dbf, _0x696c, { ... }, _0xdc55)
  end
end

_0x6aa4 = function(_0xf603, _0xe985, _0xae28, _0x9bfd)
  local _0x2762 = _0xf603.insns
  local _0xdd30 = _0x2762[1]
  local _0x4b1e = _0xf603.consts
  local _0xc794 = _0xf603.protos
  local _0x6c7e = _0xf603.maxstack or 64
  local _0xa74a = {}
  for i = 0, _0x6c7e + 16 do _0xa74a[i] = nil end
  _0x9bfd = _0x9bfd or 0
  local _0x1259 = _0xf603.numparams
  for i = 1, _0x1259 do _0xa74a[i - 1] = _0xae28[i] end
  local _0x48d3 = nil
  local _0x0cd3 = 0
  if _0xf603.isvararg then
    _0x48d3 = {}
    _0x0cd3 = _0x9bfd - _0x1259
    if _0x0cd3 < 0 then _0x0cd3 = 0 end
    for i = 1, _0x0cd3 do _0x48d3[i] = _0xae28[_0x1259 + i] end
  end
  local _0x090c = 1
  local _0x486e = _0x1259
  local _0xdf06 = _0x2762[2]
  while _0x090c <= _0xdf06 do
    while _0x2762[7] < _0x090c do
      local _0x0b34 = _0x2762[7] + 1
      _0x2762[7] = _0x0b34
      local _0x77e3 = _0xdd30[_0x0b34]
      local _0xd2d7 = _0x77e3 % _0x37d1
      local _0x21fc = (_0x77e3 - _0xd2d7) / _0x37d1
      local _0xe362 = _0x0e4b(_0x2762[3], (_0x0b34 * _0x2762[5]) % _0x37d1)
      local _0x8dfd = _0x0e4b(_0x2762[4], (_0x0b34 * _0x2762[6]) % _0x37d1)
      local _0xbe10 = _0x0e4b(_0xd2d7, _0xe362)
      local _0x8417 = _0x0e4b(_0x21fc, _0x8dfd)
      _0xdd30[_0x0b34] = _0xbe10 + _0x8417 * _0x37d1
      _0x2762[3] = (_0x0e4b(_0x2762[3], _0xbe10) + _0x2762[4]) % _0x37d1
      _0x2762[4] = (_0x0e4b(_0x2762[4], _0x8417) + _0x2762[3]) % _0x37d1
    end
    local _0x996e = _0xdd30[_0x090c]
    local _0x8525 = _0x996e % _0x37d1
    local _0x9207 = (_0x996e - _0x8525) / _0x37d1
    _0x8525 = _0x0e4b(_0x8525, (_0x090c * _0x74c7 + _0x76bc) % _0x37d1)
    _0x9207 = _0x0e4b(_0x9207, (_0x090c * _0xcc89 + _0xa273) % _0x37d1)
    local _0x0d00 = _0x8525 + _0x9207 * _0x37d1
    local _0xfdc6 = (_0x0d00 % _0x7310) - _0x1511
    local _0x41e9 = (_0x6750(_0x0d00 / _0x7310) % _0x7310) - _0x1511
    local _0x8550 = (_0x6750(_0x0d00 / _0x36fc) % _0x7310) - _0x1511
    local _0xe926 = _0x6750(_0x0d00 / _0x8125)
    _0x090c = _0x090c + 1
local _0xe3ea = _0xe926 % 6
if _0xe3ea == 5 then
  if _0xe926 == 107 then
    do local _h7fa0d = _0x4b1e; local _h9912a = _0xa74a[_0xfdc6]
_0xa74a[_0xfdc6] = _0x6d5f(_0xa74a, _h7fa0d, _0x41e9) + _0x6d5f(_0xa74a, _h7fa0d, _0x8550)
end
  elseif _0xe926 == 53 then
    local _0xe5c9 = (_0xfdc6 * 25 + 26)
    _0xa74a[_0xfdc6] = _0xa74a[_0x41e9] - _0x4b1e[_0x8550 + 1]
  elseif _0xe926 == 41 then
    local _0x6dd5 = (_0xfdc6 * 37 + 19)
    do local _h781b8 = _0x4b1e; local _hff1b3 = _0x6d5f
do local _0xaf9c = _0xa74a[_0x41e9]; _0xa74a[_0xfdc6] = _0xaf9c and _0xaf9c[_hff1b3(_0xa74a, _h781b8, _0x8550)] end
end
  elseif _0xe926 == 125 then
    local _0xe07f = (_0xfdc6 * 50 + 20)
    do local _h93f1a = _0x6d5f
_0xe985[_0x41e9 + 1].v = _0xa74a[_0xfdc6]
end
  elseif _0xe926 == 65 then
    local _0x919d = (_0xfdc6 * 31 + 32)
    do local _hd3a39 = _0xa74a
for i = _0xfdc6, _0x41e9 do _hd3a39[i] = nil end
end
  elseif _0xe926 == 29 then
    local _0xd38b = _0xa74a[_0xfdc6]
    do local _hac3ca = _0xa74a; local _he2bc4 = _0x6d5f
do
      if _0x41e9 == 0 then
        local _0xdfd3 = {}
        local _0xdc55 = _0x486e - _0xfdc6
        for i = 0, _0xdc55 - 1 do _0xdfd3[i + 1] = _hac3ca[_0xfdc6 + i] end
        return _0x7e74(_0xdfd3, 1, _0xdc55)
      elseif _0x41e9 == 1 then
        return
      else
        local _0xdc55 = _0x41e9 - 1
        local _0xdfd3 = {}
        for i = 0, _0xdc55 - 1 do _0xdfd3[i + 1] = _hac3ca[_0xfdc6 + i] end
        return _0x7e74(_0xdfd3, 1, _0xdc55)
      end
    end
end
  elseif _0xe926 == 11 then
    do local _hff792 = _0xa74a; local _h237a4 = _0x6d5f
do local _0xaf1c = (_h237a4(_hff792, _0x4b1e, _0x41e9) < _h237a4(_hff792, _0x4b1e, _0x8550)); if not (_0xaf1c == (_0xfdc6 ~= 0)) then _0x090c = _0x090c + 1 end end
end
  elseif _0xe926 == 77 then
    do local _hb7b67 = _0x4b1e
do
      local _0x3269 = _0xa74a[_0xfdc6]
      local _0x5d53
      if _0x41e9 == 0 then _0x5d53 = _0x486e - _0xfdc6 - 1 else _0x5d53 = _0x41e9 - 1 end
      local _0x219a = {}
      for i = 1, _0x5d53 do _0x219a[i] = _0xa74a[_0xfdc6 + i] end
      local _0xcb98 = { _0x3269(_0x7e74(_0x219a, 1, _0x5d53)) }
      local _0x4d73 = #_0xcb98
      if _0x8550 == 0 then
        for i = 1, _0x4d73 do _0xa74a[_0xfdc6 + i - 1] = _0xcb98[i] end
        for i = _0x4d73 + 1, _0x4d73 + 4 do _0xa74a[_0xfdc6 + i - 1] = nil end
        _0x486e = _0xfdc6 + _0x4d73
      elseif _0x8550 == 1 then
        -- drop all
      else
        local _0x5a88 = _0x8550 - 1
        for i = 1, _0x5a88 do _0xa74a[_0xfdc6 + i - 1] = _0xcb98[i] end
        for i = _0x4d73 + 1, _0x5a88 do _0xa74a[_0xfdc6 + i - 1] = nil end
      end
    end
end
  elseif _0xe926 == 83 then
    local _0xaf02 = (_0xfdc6 * 10 + 4)
    do local _h35df1 = _0x4b1e; local _h00fdf = _0xfdc6 + 13
_0x18fb[_h35df1[_0x41e9 + 1]] = _0xa74a[_0xfdc6]
end
  elseif _0xe926 == 17 then
    local _0x395b = _0x090c + 83; _0x395b = _0x395b - _0x395b
    do local _hc190c = _0xa74a; local _heec93 = _0x6d5f
_hc190c[_0xfdc6] = _hc190c[_0xfdc6] - _hc190c[_0xfdc6 + 2]; _0x090c = _0x090c + _0x41e9
end
  else _0x31a2(_sdec_ef0b({115,112,117,49,126,97,114,126,117,116,49}) .. tostring(_0xe926) .. _sdec_ef0b({49,112,101,49,97,114,49}) .. tostring(_0x090c - 1)) end
elseif _0xe3ea == 3 then
  if _0xe926 == 117 then
    do local _hd986d = _0xa74a; local _h15b29 = _0x4b1e
_hd986d[_0xfdc6] = not _hd986d[_0x41e9]
end
  elseif _0xe926 == 63 then
    local _0xbb04 = _0xa74a[_0xfdc6]
    do local _h914b6 = _0xa74a; local _he751f = (_0x090c + _0x41e9) % 26
_h914b6[_0xfdc6] = _0xe985[_0x41e9 + 1].v
end
  elseif _0xe926 == 81 then
    local _0xe4d5 = #_0xdd30
    do local _he4fb6 = _0xa74a; local _h735d9 = _0x4b1e; local _h40d49 = (_0x090c + _0x41e9) % 31
do
      local _0x8dbf = _0xc794[_0x41e9 + 1]
      local _0x696c = {}
      for i = 1, #_0x8dbf.upvs do
        while _0x2762[7] < _0x090c do
      local _0x0b34 = _0x2762[7] + 1
      _0x2762[7] = _0x0b34
      local _0x77e3 = _0xdd30[_0x0b34]
      local _0xd2d7 = _0x77e3 % _0x37d1
      local _0x21fc = (_0x77e3 - _0xd2d7) / _0x37d1
      local _0xe362 = _0x0e4b(_0x2762[3], (_0x0b34 * _0x2762[5]) % _0x37d1)
      local _0x8dfd = _0x0e4b(_0x2762[4], (_0x0b34 * _0x2762[6]) % _0x37d1)
      local _0xbe10 = _0x0e4b(_0xd2d7, _0xe362)
      local _0x8417 = _0x0e4b(_0x21fc, _0x8dfd)
      _0xdd30[_0x0b34] = _0xbe10 + _0x8417 * _0x37d1
      _0x2762[3] = (_0x0e4b(_0x2762[3], _0xbe10) + _0x2762[4]) % _0x37d1
      _0x2762[4] = (_0x0e4b(_0x2762[4], _0x8417) + _0x2762[3]) % _0x37d1
    end
    local _0x996e = _0xdd30[_0x090c]
    local _0x8525 = _0x996e % _0x37d1
    local _0x9207 = (_0x996e - _0x8525) / _0x37d1
    _0x8525 = _0x0e4b(_0x8525, (_0x090c * _0x74c7 + _0x76bc) % _0x37d1)
    _0x9207 = _0x0e4b(_0x9207, (_0x090c * _0xcc89 + _0xa273) % _0x37d1)
    local _0x7314 = _0x8525 + _0x9207 * _0x37d1
        local _0xd6c2 = (_0x6750(_0x7314 / _0x7310) % _0x7310) - _0x1511
        local _0x387b = _0x6750(_0x7314 / _0x8125)
        _0x090c = _0x090c + 1
        if _0x387b == 12 then
          _0x696c[i] = _he4fb6[_0xd6c2]
        elseif _0x387b == 63 then
          _0x696c[i] = _0xe985[_0xd6c2 + 1]
        else
          _0x31a2(_sdec_ef0b({115,112,117,49,100,97,103,112,125,100,116,49,115,120,127,117,120,127,118,49,126,97,114,126,117,116,49}) .. tostring(_0x387b))
        end
      end
      _he4fb6[_0xfdc6] = _0x328d(_0x8dbf, _0x696c)
    end
end
  elseif _0xe926 == 105 then
    local _0x192d = _0xa74a[_0xfdc6]
    do local _h52288 = _0x4b1e; local _h776c4 = (_0x090c + _0x41e9) % 20
_0xa74a[_0xfdc6] = _0xa74a[_0x41e9][_0x6d5f(_0xa74a, _h52288, _0x8550)]
end
  elseif _0xe926 == 9 then
    local _0xed10 = (_0xfdc6 * 17 + 26)
    do local _h89aa8 = _0xa74a; local _ha81ab = _0xfdc6 + 20
_h89aa8[_0xfdc6] = _0x18fb[_0x4b1e[_0x41e9 + 1]]
end
  elseif _0xe926 == 93 then
    local _0x44b9 = _0x090c + 40; _0x44b9 = _0x44b9 - _0x44b9
    do local _h7ae8d = _0xa74a; local _hb0833 = _0x4b1e
_h7ae8d[_0xfdc6] = not _h7ae8d[_0x41e9]
end
  elseif _0xe926 == 39 then
    local _0x6aef = (_0xfdc6 * 10 + 42)
    do local _hd5bc6 = _0xa74a; local _h1ef81 = _hd5bc6[_0xfdc6]
do local _0x6ad9 = (_0x6d5f(_hd5bc6, _0x4b1e, _0x41e9) == _0x6d5f(_hd5bc6, _0x4b1e, _0x8550)); if not (_0x6ad9 == (_0xfdc6 ~= 0)) then _0x090c = _0x090c + 1 end end
end
  elseif _0xe926 == 87 then
    local _0x31dd = #_0xdd30
    do local _ha55af = _0xa74a
_ha55af[_0xfdc6] = (_0x41e9 ~= 0); if _0x8550 ~= 0 then _0x090c = _0x090c + 1 end
end
  elseif _0xe926 == 15 then
    local _0xd80f = _0xa74a[_0xfdc6]
    do local _hde27f = _0xa74a
_hde27f[_0xfdc6] = _hde27f[_0x41e9] - _0x4b1e[_0x8550 + 1]
end
  else _0x31a2(_sdec_ef0b({115,112,117,49,126,97,114,126,117,116,49}) .. tostring(_0xe926) .. _sdec_ef0b({49,112,101,49,97,114,49}) .. tostring(_0x090c - 1)) end
elseif _0xe3ea == 0 then
  if _0xe926 == 102 then
    do local _h1c356 = _0xa74a; local _hefaf2 = _0x6d5f
_h1c356[_0xfdc6] = _hefaf2(_h1c356, _0x4b1e, _0x41e9) / _hefaf2(_h1c356, _0x4b1e, _0x8550)
end
  elseif _0xe926 == 24 then
    local _0x98cb = _0xa74a[_0xfdc6]
    do local _h0cc7d = _0xa74a; local _h06fca = _0x4b1e
_h0cc7d[_0x41e9].v = _h0cc7d[_0xfdc6]
end
  elseif _0xe926 == 18 then
    local _0x4be3 = _0x090c + 37; _0x4be3 = _0x4be3 - _0x4be3
    do local _h2f954 = _0xa74a
do
      local _0x3269 = _h2f954[_0xfdc6]
      local _0x5d53
      if _0x41e9 == 0 then _0x5d53 = _0x486e - _0xfdc6 - 1 else _0x5d53 = _0x41e9 - 1 end
      local _0x219a = {}
      for i = 1, _0x5d53 do _0x219a[i] = _h2f954[_0xfdc6 + i] end
      return _0x3269(_0x7e74(_0x219a, 1, _0x5d53))
    end
end
  elseif _0xe926 == 96 then
    local _0x37ad = _0x090c + 40; _0x37ad = _0x37ad - _0x37ad
    do local _h27954 = _0xa74a; local _h748ea = _0x4b1e; local _h148ff = _h27954[_0xfdc6]
do
      local _0xaf9c = _h27954[_0xfdc6]
      local _0xdc55 = (_0x41e9 == 0) and (_0x486e - _0xfdc6 - 1) or _0x41e9
      local offset = (_0x8550 - 1) * 50
      for i = 1, _0xdc55 do _0xaf9c[offset + i] = _h27954[_0xfdc6 + i] end
    end
end
  elseif _0xe926 == 78 then
    local _0xeae3 = (_0xfdc6 * 38 + 45)
    do local _h4bdbf = _0xa74a; local _ha2ea6 = _0x4b1e
_h4bdbf[_0xfdc6] = _ha2ea6[_0x41e9 + 1]
end
  elseif _0xe926 == 12 then
    local _0xef3d = #_0xdd30
    do local _h0de97 = _0x6d5f
_0xa74a[_0xfdc6] = _0xa74a[_0x41e9]
end
  elseif _0xe926 == 66 then
    local _0x1371 = (_0xfdc6 * 48 + 20)
    do local _h36b48 = _0xa74a[_0xfdc6]
do
      if _0x41e9 == 0 then
        for i = 1, _0x0cd3 do _0xa74a[_0xfdc6 + i - 1] = _0x48d3[i] end
        for i = _0x0cd3 + 1, _0x0cd3 + 4 do _0xa74a[_0xfdc6 + i - 1] = nil end
        _0x486e = _0xfdc6 + _0x0cd3
      else
        local _0x5a88 = _0x41e9 - 1
        for i = 1, _0x5a88 do
          if i <= _0x0cd3 then _0xa74a[_0xfdc6 + i - 1] = _0x48d3[i] else _0xa74a[_0xfdc6 + i - 1] = nil end
        end
      end
    end
end
  elseif _0xe926 == 6 then
    do local _ha434b = _0xa74a; local _hc5734 = _0x4b1e; local _h19841 = _0x6d5f
_ha434b[_0xfdc6] = _h19841(_ha434b, _hc5734, _0x41e9) % _h19841(_ha434b, _hc5734, _0x8550)
end
  elseif _0xe926 == 90 then
    do local _h575ab = _0xa74a; local _hf7033 = _0x4b1e; local _hd4063 = _0xfdc6 + 9
do local _0x83b9 = _h575ab[_0x41e9]; _h575ab[_0xfdc6 + 1] = _0x83b9; _h575ab[_0xfdc6] = _0x83b9[_0x6d5f(_h575ab, _hf7033, _0x8550)] end
end
  elseif _0xe926 == 60 then
    do local _h7bd39 = _0xa74a; local _h4ccb1 = _0x4b1e; local _h433c3 = _0x6d5f; local _hd69fb = (_0x090c + _0x41e9) % 18
_h7bd39[_0xfdc6] = _h7bd39[_0x41e9] - _h4ccb1[_0x8550 + 1]
end
  elseif _0xe926 == 120 then
    local _0x587f = _0x090c + 28; _0x587f = _0x587f - _0x587f
    do local _hcccbf = _0xa74a; local _ha99f1 = _0x4b1e; local _h5e590 = _0xfdc6 + 24
_hcccbf[_0xfdc6] = _0x6d5f(_hcccbf, _ha99f1, _0x41e9) ^ _0x6d5f(_hcccbf, _ha99f1, _0x8550)
end
  else _0x31a2(_sdec_ef0b({115,112,117,49,126,97,114,126,117,116,49}) .. tostring(_0xe926) .. _sdec_ef0b({49,112,101,49,97,114,49}) .. tostring(_0x090c - 1)) end
elseif _0xe3ea == 2 then
  if _0xe926 == 68 then
    local _0xdcd9 = _0xa74a[_0xfdc6]
    do local _h7bfff = _0xa74a; local _h7721d = (_0x090c + _0x41e9) % 22
_h7bfff[_0xfdc6] = { v = _h7bfff[_0xfdc6] }
end
  elseif _0xe926 == 62 then
    local _0x46ff = _0x090c + 90; _0x46ff = _0x46ff - _0x46ff
    do local _h005b2 = _0xa74a
_h005b2[_0xfdc6] = (_h005b2[_0x41e9] == _h005b2[_0x8550])
end
  elseif _0xe926 == 110 then
    do local _hf7a3b = _0xa74a[_0xfdc6]
_0xa74a[_0xfdc6] = _0xa74a[_0x41e9] - _0x4b1e[_0x8550 + 1]
end
  elseif _0xe926 == 86 then
    local _0xb8ed = _0x090c + 38; _0xb8ed = _0xb8ed - _0xb8ed
    _0xa74a[_0xfdc6] = -_0xa74a[_0x41e9]
  elseif _0xe926 == 80 then
    local _0x8fd1 = _0xa74a[_0xfdc6]
    do local _hfe9ff = _0xa74a; local _hb31c6 = _0x4b1e; local _h993c7 = _hfe9ff[_0xfdc6]
_0x090c = _0x090c + _0x41e9; _hfe9ff[_0xfdc6] = _hfe9ff[_0xfdc6 + 1]
end
  elseif _0xe926 == 56 then
    do local _h65c3e = _0xa74a; local _hc8ef7 = _0x4b1e
_h65c3e[_0xfdc6] = _0x6d5f(_h65c3e, _hc8ef7, _0x41e9) - _0x6d5f(_h65c3e, _hc8ef7, _0x8550)
end
  elseif _0xe926 == 32 then
    local _0x9c15 = (_0xfdc6 * 49 + 16)
    do local _h6d65e = _0xa74a
_h6d65e[_0xfdc6] = _h6d65e[_0x41e9] - _0x4b1e[_0x8550 + 1]
end
  elseif _0xe926 == 122 then
    local _0xa0c8 = _0xa74a[_0xfdc6]
    do local _h8ec6e = _0xa74a; local _h657e6 = _0x4b1e
_0x090c = _0x090c + _0x41e9
end
  elseif _0xe926 == 92 then
    do local _h0c147 = _0xa74a; local _hd1092 = (_0x090c + _0x41e9) % 24
do
      local _0x3269 = _h0c147[_0xfdc6]
      local _0x7168 = _h0c147[_0xfdc6 + 1]
      local _0x3e42 = _h0c147[_0xfdc6 + 2]
      local _0xcb98 = { _0x3269(_0x7168, _0x3e42) }
      local nres = _0x8550
      for i = 1, nres do _h0c147[_0xfdc6 + 2 + i] = _0xcb98[i] end
      if _h0c147[_0xfdc6 + 3] ~= nil then
        _h0c147[_0xfdc6 + 2] = _h0c147[_0xfdc6 + 3]
      else
        _0x090c = _0x090c + 1
      end
    end
end
  else _0x31a2(_sdec_ef0b({115,112,117,49,126,97,114,126,117,116,49}) .. tostring(_0xe926) .. _sdec_ef0b({49,112,101,49,97,114,49}) .. tostring(_0x090c - 1)) end
elseif _0xe3ea == 4 then
  if _0xe926 == 52 then
    local _0xafdb = #_0xdd30
    do local _h10161 = _0xa74a; local _h9a33a = _0xfdc6 + 7
do local _0xa1c6 = (_0x6d5f(_h10161, _0x4b1e, _0x41e9) <= _0x6d5f(_h10161, _0x4b1e, _0x8550)); if not (_0xa1c6 == (_0xfdc6 ~= 0)) then _0x090c = _0x090c + 1 end end
end
  elseif _0xe926 == 94 then
    do local _haaeb8 = _0x6d5f
-- no-_0xe926 under our _0x9682 model
end
  elseif _0xe926 == 34 then
    local _0x67a4 = (_0xfdc6 * 9 + 26)
    do local _h80b38 = _0xa74a
do
      _h80b38[_0xfdc6] = _h80b38[_0xfdc6] + _h80b38[_0xfdc6 + 2]
      local _0x71d1 = _h80b38[_0xfdc6 + 2]
      if (_0x71d1 > 0 and _h80b38[_0xfdc6] <= _h80b38[_0xfdc6 + 1]) or (_0x71d1 <= 0 and _h80b38[_0xfdc6] >= _h80b38[_0xfdc6 + 1]) then
        _0x090c = _0x090c + _0x41e9
        _h80b38[_0xfdc6 + 3] = _h80b38[_0xfdc6]
      end
    end
end
  elseif _0xe926 == 100 then
    do local _hdf0e1 = _0xa74a; local _h4a0e4 = _0x4b1e
_hdf0e1[_0xfdc6] = _hdf0e1[_0x41e9].v
end
  elseif _0xe926 == 70 then
    do local _h1bcdb = _0x6d5f
_0xa74a[_0xfdc6] = {}
end
  elseif _0xe926 == 88 then
    do local _haf5d0 = _0xa74a; local _h777de = _0x4b1e
_haf5d0[_0xfdc6] = _0x6d5f(_haf5d0, _h777de, _0x41e9) * _0x6d5f(_haf5d0, _h777de, _0x8550)
end
  elseif _0xe926 == 106 then
    do local _h99b92 = _0x6d5f
_0xa74a[_0xfdc6] = _h99b92(_0xa74a, _0x4b1e, _0x41e9) + _h99b92(_0xa74a, _0x4b1e, _0x8550)
end
  elseif _0xe926 == 4 then
    do local _hb219d = _0x4b1e
_0xa74a[_0xfdc6] = #_hb219d
end
  else _0x31a2(_sdec_ef0b({115,112,117,49,126,97,114,126,117,116,49}) .. tostring(_0xe926) .. _sdec_ef0b({49,112,101,49,97,114,49}) .. tostring(_0x090c - 1)) end
elseif _0xe3ea == 1 then
  if _0xe926 == 37 then
    local _0x2f4d = _0x090c + 60; _0x2f4d = _0x2f4d - _0x2f4d
    do local _hb288d = _0xa74a; local _h19a05 = _0x4b1e; local _h16513 = _0x6d5f
do local _0x268d = not not _hb288d[_0xfdc6]; if not (_0x268d == (_0x8550 ~= 0)) then _0x090c = _0x090c + 1 end end
end
  elseif _0xe926 == 103 then
    do local _h5376c = _0x4b1e; local _h79592 = _0xfdc6 + 31
_0xa74a[_0xfdc6][_0x6d5f(_0xa74a, _h5376c, _0x41e9)] = _0x6d5f(_0xa74a, _h5376c, _0x8550)
end
  elseif _0xe926 == 25 then
    do local _h2b230 = _0xa74a; local _h4a208 = _0x4b1e
_h2b230[_0xfdc6] = #_h2b230[_0x41e9]
end
  elseif _0xe926 == 31 then
    do local _he838c = _0xa74a; local _h0ac68 = _0x6d5f; local _h6f4c2 = _0xfdc6 + 38
_he838c[_0xfdc6] = _h0ac68(_he838c, _0x4b1e, _0x41e9) + _h0ac68(_he838c, _0x4b1e, _0x8550)
end
  elseif _0xe926 == 7 then
    local _0xe1a9 = (_0xfdc6 * 1 + 12)
    do local _h86638 = _0x4b1e; local _hd1440 = _0x6d5f
do local _0xaf9c = _0xa74a[_0x41e9]; _0xa74a[_0xfdc6] = _0xaf9c and _0xaf9c[_hd1440(_0xa74a, _h86638, _0x8550)] end
end
  elseif _0xe926 == 79 then
    local _0x0c84 = _0x090c + 90; _0x0c84 = _0x0c84 - _0x0c84
    do local _hee120 = _0xa74a; local _h490ab = _0x6d5f
do local _0x7168 = _hee120[_0x41e9]; for i = _0x41e9 + 1, _0x8550 do _0x7168 = _0x7168 .. _hee120[i] end; _hee120[_0xfdc6] = _0x7168 end
end
  else _0x31a2(_sdec_ef0b({115,112,117,49,126,97,114,126,117,116,49}) .. tostring(_0xe926) .. _sdec_ef0b({49,112,101,49,97,114,49}) .. tostring(_0x090c - 1)) end
else _0x31a2(_sdec_ef0b({115,112,117,49,115,100,114,122,116,101,49}) .. tostring(_0xe3ea)) end
  end
end

if ((function() return false end)()) then
    local _ = "__" .. tostring(os.time())
  end

local _0x0224 = 
{
  numparams = 0,
  isvararg = true,
  maxstack = 6,
  insns = _0xe78f(_0x4337(_0x22af(_0x6076(_ua9d7(_sdec_ef0b({186,166,105,252,14,10,100,149,91,191,241,92,149,11,23,57,166,196,85,132,41,30,25,251,97,159,221,82,133,38,108,7,169,232,3,227,101,13,82,246,121,181,240,30,130,16,16,96,211,246,73,199,49,10,92,229,46,235,235,83,175,108,95,19,196,163,105,213,57,95,64,219,119,141,243,106,211,59,111,14})),64)),9), 1451404889, 17608290, 26738271, 699685, 11817004, 1534673),
  consts = {1,4},
  protos = {},
  upvs = {},
}

return _0x6aa4(_0x0224, {}, {...}, _0x70de(_sdec_ef0b({50}), ...))
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

-- vm 2
do
  local _r = (function(...)
return (function(...)
  local _env = {_da8e7=61893,_dfb33=20806,_db736=3112,_d5ad9=64390}
  local _s2fc5 = _env._db736
  local _fn = function(...)
return (function(...)
  local _env = {_d35f=29376,_daf86=8652,_d8a34=48976,_d7de3=58684,_ddef1=61357,_d4d89=35020}
  local _s88c6 = _env._d8a34
  local _fn = function(...)
return (function(...)
  local _env = {_da392=21704,_dd457=28391,_de8a=35568,_d9284=15861,_dd56e=10042,_d120e=36781}
  local _s6f11 = _env._dd457
  local _fn = function(...)

local function _sdec_4829(b)
  local _k = 139
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
  local _0x282c = {}
  for i = 1, #b do _0x282c[i] = string.char(_xor(b[i], _k)) end
  return table.concat(_0x282c)
end


local _uf57b = table.concat
local _ue021 = string.byte
local _u466d = string.char
local _uaa80 = string.sub
local _u8308 = rawget
local function _u297b(_u8137, _u2876)
  local _uef74, _u2685 = 0, 1
  for _ = 1, 8 do
    local _uf95b, _u63bd = _u8137 % 2, _u2876 % 2
    if _uf95b ~= _u63bd then _uef74 = _uef74 + _u2685 end
    _u8137 = (_u8137 - _uf95b) / 2
    _u2876 = (_u2876 - _u63bd) / 2
    _u2685 = _u2685 * 2
  end
  return _uef74
end
local _u9cf7 = 0
do
  -- debug.gethook is present in Lua 5.1 and Luau (debug lib). _0x7dda hook means
  -- someone'_0x0c37 tracing us; corrupt the pad.
  local _ubf47 = debug and debug.gethook
  if _ubf47 then
    local ok, hk = pcall(_ubf47)
    if ok and hk ~= nil then _u9cf7 = _u297b(_u9cf7, 204) end
  end
  -- Roblox environment check. In Roblox/Luau, `game` is a userdata living
  -- in the script'_0x0c37 environment chain (NOT in `_G`), so we use a bare
  -- global reference rather than `rawget(_G, "game")` which always returns
  -- nil under Roblox. Bare-global access goes through the env __index chain
  -- and finds `game` correctly. Any execution context that doesn'_0x282c expose
  -- `game` (stock lua5.1, hostile sandbox with stripped env) silently
  -- corrupts the pad.
  if game == nil then
    _u9cf7 = _u297b(_u9cf7, 171)
  end
  -- LuaJIT detector. Roblox is Luau, not LuaJIT. If the `jit` global exists
  -- and has a `.version` field, we're running under LuaJIT (likely in a
  -- hostile sandbox); corrupt the pad.
  if rawget and rawget(_G, _sdec_4829({225,226,255})) ~= nil then
    _u9cf7 = _u297b(_u9cf7, 90)
  end
end
local _ud79f = {176,181,244,111,71,195,89,80,186,40,33,107,24,103,175,29}
local _u3a10 = {13,2,14,5,12,9,16,15,4,3,10,6,11,7,8,1}
local _u282a = {}
for _u3d5a = 1, 16 do
  _u282a[_u3d5a] = _u297b(_ud79f[_u3a10[_u3d5a]], _u9cf7)
end
local function _u00da(_0x0c37)
  local out = {}
  local len = #_0x0c37
  for _u3d5a = 1, len do
    local _u5308 = ((_u3d5a - 1) % 16) + 1
    out[_u3d5a] = _u466d(_u297b(_ue021(_0x0c37, _u3d5a), _u282a[_u5308]))
  end
  return _uf57b(out)
end

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = _G["CFrame"]
    local _ = "__" .. tostring(os.time())
  end

local _0xbf1b = _sdec_4829({187,186,185,184,191,190,189,188,179,178,202,201,200,207,206,205,204,195,194,193,192,199,198,197,196,219,218,217,216,223,222,221,220,211,210,209,234,233,232,239,238,237,236,227,226,225,224,231,230,229,228,251,250,249,248,255,254,253,252,243,242,241,170,168,175,174,173,163,162,161,160,166,176,183,182,181,180,203,213,212,235,240,247,246,245})
local _0xeb45 = {}
for i = 1, 85 do _0xeb45[string.byte(_0xbf1b, i)] = i - 1 end
local function _0xe216(_0x0c37, origLen)
  local out = {}
  local outPos = 0
  local sLen = #_0x0c37
  local padCount = (5 - (sLen % 5)) % 5
  local i = 1
  while i <= sLen do
    local v = 0
    local group = 0
    while group < 5 do
      local ch
      if i + group <= sLen then
        ch = _0xeb45[string.byte(_0x0c37, i + group)]
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
    local _ = math.pi
  end
local function _0xcc98(buf)
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

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = math.pi
    local _ = _G["game"]
  end
local function _0xdd06(bytes, _0xb18e)
  local out = {}
  for i = 1, _0xb18e do
    local base = (i - 1) * 7
    local v = 0
    for j = 7, 1, -1 do
      v = v * 256 + bytes[base + j]
    end
    out[i] = v
  end
  return out
end



local _0x47f6 = 33554432
local function _0xde5b(a, b)
  local aLo = a % 65536
  local aHi = (a - aLo) / 65536
  local bLo = b % 65536
  local bHi = (b - bLo) / 65536
  local function xor16(_0x3e15, y)
    local r, p = 0, 1
    for _ = 1, 16 do
      local xb, yb = _0x3e15 % 2, y % 2
      if xb ~= yb then r = r + p end
      _0x3e15 = (_0x3e15 - xb) / 2
      y = (y - yb) / 2
      p = p * 2
    end
    return r
  end
  return xor16(aHi, bHi) * 65536 + xor16(aLo, bLo)
end

-- _0x2e4c: stateful (lazy) bytecode decode.
--
-- `_0xf8f3` no longer materializes a plaintext instruction array. It
-- returns a "_0xc78c" holding (a) the layer-1-encrypted integer array, (b) the
-- initial feedback-chain state seeded by the per-proto checksum and the
-- script-env fingerprint, and (c) the per-build salt constants. The outer
-- _0xc78c is what `_0x6636.insns` becomes. Each _0xfb0e() call unboxes these
-- fields into its own local state and advances the decryption lazily at
-- fetch time: instruction `i` is only peeled from the feedback chain
-- when the dispatch loop actually reads it. Control flow that never
-- reaches an instruction (dead code, branches not taken) leaves those
-- cells in their encrypted form. An analyst who dumps the _0xc78c'_0x0c37 data
-- field outside the VM gets layer-1-encrypted integers with no way to
-- recover the feedback state without re-running the chain in order.
local function _0xf8f3(enc, checksum, seed_a, seed_b, salt_a, salt_b, envConst)
  local env = ((game ~= nil) and 1 or 0)
  local state_a = _0xde5b(seed_a, checksum % _0x47f6)
  local state_b = _0xde5b(seed_b, (env * envConst + math.floor(checksum / _0x47f6)) % _0x47f6)
  -- numeric indices avoid any chance of the rename pass mangling a
  -- field-key identifier that happens to collide with a VM local name.
  -- Layout: [1]=data, [2]=_0xb18e, [3]=state_a, [4]=state_b, [5]=salt_a,
  --        [6]=salt_b, [7]=decLvl.  decLvl starts at 0 and only ever
  --        advances — so an inner proto that is executed multiple times
  --        (e.g. a closure called in a loop) reuses the same already-
  --        decrypted instructions on later calls instead of double-
  --        applying layer 1 to the in-place mutated array.
  return { enc, #enc, state_a, state_b, salt_a, salt_b, 0 }
end
local _0x4eae, _0xa0b4, _0xd46a, _0xa7f0 = 13900977, 25173503, 24437209, 2454773

if ((function() return false end)()) then
    local _ = math.pi
    local _ = _G["game"]
  end
-- larpfuscator runtime (plain)
local _0xcd4f = math.floor
local _0x0001 = select
local _0x7812 = type
local _0x8a95 = setmetatable
local _0x8499 = getmetatable
local _0x19e8 = table.unpack or unpack
local _0x0824 = error
local _0xc623 = {}
do local _vc079a5 = PolicyService; _0xc623[_vc079a5 ~= nil and _sdec_4829({219,228,231,226,232,242,216,238,249,253,226,232,238}) or false] = _vc079a5 end
do local _vd0955b = CFrame; _0xc623[_vd0955b ~= nil and _sdec_4829({200,205,249,234,230,238}) or false] = _vd0955b end
do local _vcab6e6 = Random; _0xc623[_vcab6e6 ~= nil and _sdec_4829({217,234,229,239,228,230}) or false] = _vcab6e6 end
do local _v30e464 = Rect; if _v30e464 ~= nil then _0xc623[_sdec_4829({217,238,232,255})] = _v30e464 end end
do local _vb7945b = ColorSequenceKeypoint; _0xc623[_vb7945b ~= nil and _sdec_4829({200,228,231,228,249,216,238,250,254,238,229,232,238,192,238,242,251,228,226,229,255}) or false] = _vb7945b end
do local _v82b887 = rawlen; _0xc623[_v82b887 ~= nil and _sdec_4829({249,234,252,231,238,229}) or false] = _v82b887 end
do local _v749783 = workspace; _0xc623[_v749783 ~= nil and _sdec_4829({252,228,249,224,248,251,234,232,238}) or false] = _v749783 end
do local _v63f1b9 = math; if _v63f1b9 ~= nil then _0xc623[_sdec_4829({230,234,255,227})] = _v63f1b9 end end
do local _ve8b60a = rawget; _0xc623[_ve8b60a ~= nil and _sdec_4829({249,234,252,236,238,255}) or false] = _ve8b60a end
do local _vf9fcc3 = time; _0xc623[_vf9fcc3 ~= nil and _sdec_4829({255,226,230,238}) or false] = _vf9fcc3 end
do local _ve61637 = script; if _ve61637 ~= nil then _0xc623[_sdec_4829({248,232,249,226,251,255})] = _ve61637 end end
do local _v173a95 = print; if _v173a95 ~= nil then _0xc623.print = _v173a95 end end
do local _va2c3f2 = NumberSequence; if _va2c3f2 ~= nil then _0xc623[_sdec_4829({197,254,230,233,238,249,216,238,250,254,238,229,232,238})] = _va2c3f2 end end
do local _v7e5ba9 = game; _0xc623[_v7e5ba9 ~= nil and _sdec_4829({236,234,230,238}) or false] = _v7e5ba9 end
do local _v3c09fc = UDim; if _v3c09fc ~= nil then _0xc623[_sdec_4829({222,207,226,230})] = _v3c09fc end end
do local _ve4131b = ipairs; _0xc623[_ve4131b ~= nil and _sdec_4829({226,251,234,226,249,248}) or false] = _ve4131b end
do local _v28fcdd = pairs; if _v28fcdd ~= nil then _0xc623[_sdec_4829({251,234,226,249,248})] = _v28fcdd end end
do local _v4340be = UDim2; _0xc623[_v4340be ~= nil and _sdec_4829({222,207,226,230,185}) or false] = _v4340be end
do local _v2b4a14 = assert; _0xc623[_v2b4a14 ~= nil and _sdec_4829({234,248,248,238,249,255}) or false] = _v2b4a14 end
do local _vb0016c = bit32; if _vb0016c ~= nil then _0xc623.bit32 = _vb0016c end end
do local _v22df0e = pcall; if _v22df0e ~= nil then _0xc623[_sdec_4829({251,232,234,231,231})] = _v22df0e end end
do local _v617cf6 = TweenInfo; if _v617cf6 ~= nil then _0xc623.TweenInfo = _v617cf6 end end
do local _v200492 = MessagingService; if _v200492 ~= nil then _0xc623.MessagingService = _v200492 end end
do local _veee153 = rawset; if _veee153 ~= nil then _0xc623.rawset = _veee153 end end
do local _v702869 = xpcall; if _v702869 ~= nil then _0xc623.xpcall = _v702869 end end
do local _v0b8377 = spawn; if _v0b8377 ~= nil then _0xc623.spawn = _v0b8377 end end
do local _v5eb76d = shared; if _v5eb76d ~= nil then _0xc623[_sdec_4829({248,227,234,249,238,239})] = _v5eb76d end end
do local _v74b413 = TextService; _0xc623[_v74b413 ~= nil and _sdec_4829({223,238,243,255,216,238,249,253,226,232,238}) or false] = _v74b413 end
do local _vca5046 = tostring; if _vca5046 ~= nil then _0xc623[_sdec_4829({255,228,248,255,249,226,229,236})] = _vca5046 end end
do local _v84b646 = select; _0xc623[_v84b646 ~= nil and _sdec_4829({248,238,231,238,232,255}) or false] = _v84b646 end
do local _v4badaa = Axes; _0xc623[_v4badaa ~= nil and _sdec_4829({202,243,238,248}) or false] = _v4badaa end
do local _vfd64b7 = StarterPlayer; _0xc623[_vfd64b7 ~= nil and _sdec_4829({216,255,234,249,255,238,249,219,231,234,242,238,249}) or false] = _vfd64b7 end
do local _v34dc44 = tonumber; _0xc623[_v34dc44 ~= nil and _sdec_4829({255,228,229,254,230,233,238,249}) or false] = _v34dc44 end
do local _v08bc7b = OverlapParams; if _v08bc7b ~= nil then _0xc623.OverlapParams = _v08bc7b end end
do local _vfc48c5 = StarterPack; if _vfc48c5 ~= nil then _0xc623.StarterPack = _vfc48c5 end end
do local _v654b33 = Vector3; if _v654b33 ~= nil then _0xc623.Vector3 = _v654b33 end end
do local _v683095 = ContentProvider; if _v683095 ~= nil then _0xc623[_sdec_4829({200,228,229,255,238,229,255,219,249,228,253,226,239,238,249})] = _v683095 end end
do local _vaeb9f9 = utf8; _0xc623[_vaeb9f9 ~= nil and _sdec_4829({254,255,237,179}) or false] = _vaeb9f9 end
do local _v9f8219 = DateTime; _0xc623[_v9f8219 ~= nil and _sdec_4829({207,234,255,238,223,226,230,238}) or false] = _v9f8219 end
do local _v219b4f = HttpService; if _v219b4f ~= nil then _0xc623[_sdec_4829({195,255,255,251,216,238,249,253,226,232,238})] = _v219b4f end end
do local _v6691c8 = Vector2; if _v6691c8 ~= nil then _0xc623[_sdec_4829({221,238,232,255,228,249,185})] = _v6691c8 end end
do local _v926f2a = Color3; if _v926f2a ~= nil then _0xc623.Color3 = _v926f2a end end
do local _v7dceff = BrickColor; if _v7dceff ~= nil then _0xc623.BrickColor = _v7dceff end end
do local _v049159 = InsertService; _0xc623[_v049159 ~= nil and _sdec_4829({194,229,248,238,249,255,216,238,249,253,226,232,238}) or false] = _v049159 end
do local _v562c98 = Enum; _0xc623[_v562c98 ~= nil and _sdec_4829({206,229,254,230}) or false] = _v562c98 end
do local _v5781b0 = string; _0xc623[_v5781b0 ~= nil and _sdec_4829({248,255,249,226,229,236}) or false] = _v5781b0 end
do local _v35f6f2 = TeleportService; _0xc623[_v35f6f2 ~= nil and _sdec_4829({223,238,231,238,251,228,249,255,216,238,249,253,226,232,238}) or false] = _v35f6f2 end
do local _va167df = Instance; if _va167df ~= nil then _0xc623[_sdec_4829({194,229,248,255,234,229,232,238})] = _va167df end end
do local _vc544a5 = getmetatable; if _vc544a5 ~= nil then _0xc623.getmetatable = _vc544a5 end end
do local _v87a5a5 = Ray; if _v87a5a5 ~= nil then _0xc623[_sdec_4829({217,234,242})] = _v87a5a5 end end
do local _va0f4f7 = PhysicalProperties; _0xc623[_va0f4f7 ~= nil and _sdec_4829({219,227,242,248,226,232,234,231,219,249,228,251,238,249,255,226,238,248}) or false] = _va0f4f7 end
do local _vd556fe = rawequal; if _vd556fe ~= nil then _0xc623.rawequal = _vd556fe end end
do local _v64650e = RaycastParams; _0xc623[_v64650e ~= nil and _sdec_4829({217,234,242,232,234,248,255,219,234,249,234,230,248}) or false] = _v64650e end
do local _v76d4e4 = typeof; _0xc623[_v76d4e4 ~= nil and _sdec_4829({255,242,251,238,228,237}) or false] = _v76d4e4 end
do local _v7d976a = wait; if _v7d976a ~= nil then _0xc623.wait = _v7d976a end end
do local _v8e7a41 = task; _0xc623[_v8e7a41 ~= nil and _sdec_4829({255,234,248,224}) or false] = _v8e7a41 end
do local _v7db1a5 = delay; if _v7db1a5 ~= nil then _0xc623.delay = _v7db1a5 end end
do local _v15e049 = collectgarbage; _0xc623[_v15e049 ~= nil and _sdec_4829({232,228,231,231,238,232,255,236,234,249,233,234,236,238}) or false] = _v15e049 end
do local _v568e8f = type; if _v568e8f ~= nil then _0xc623[_sdec_4829({255,242,251,238})] = _v568e8f end end
do local _v85834a = warn; _0xc623[_v85834a ~= nil and _sdec_4829({252,234,249,229}) or false] = _v85834a end
do local _v474cb8 = Faces; if _v474cb8 ~= nil then _0xc623.Faces = _v474cb8 end end
do local _v7ef5da = coroutine; if _v7ef5da ~= nil then _0xc623[_sdec_4829({232,228,249,228,254,255,226,229,238})] = _v7ef5da end end
do local _v31c5da = BadgeService; _0xc623[_v31c5da ~= nil and _sdec_4829({201,234,239,236,238,216,238,249,253,226,232,238}) or false] = _v31c5da end
do local _vcf9a4a = Region3; if _vcf9a4a ~= nil then _0xc623.Region3 = _vcf9a4a end end
do local _v2cd46e = UserInputService; _0xc623[_v2cd46e ~= nil and _sdec_4829({222,248,238,249,194,229,251,254,255,216,238,249,253,226,232,238}) or false] = _v2cd46e end
do local _vfebfde = io; _0xc623[_vfebfde ~= nil and _sdec_4829({226,228}) or false] = _vfebfde end
do local _vbd1fc3 = NumberSequenceKeypoint; if _vbd1fc3 ~= nil then _0xc623.NumberSequenceKeypoint = _vbd1fc3 end end
do local _v34c805 = PhysicsService; if _v34c805 ~= nil then _0xc623.PhysicsService = _v34c805 end end
do local _v3545f3 = ColorSequence; _0xc623[_v3545f3 ~= nil and _sdec_4829({200,228,231,228,249,216,238,250,254,238,229,232,238}) or false] = _v3545f3 end
do local _v8c238e = unpack; if _v8c238e ~= nil then _0xc623.unpack = _v8c238e end end
do local _v208ed7 = next; if _v208ed7 ~= nil then _0xc623.next = _v208ed7 end end
do local _ve2de90 = NumberRange; _0xc623[_ve2de90 ~= nil and _sdec_4829({197,254,230,233,238,249,217,234,229,236,238}) or false] = _ve2de90 end
do local _v642fd4 = setmetatable; if _v642fd4 ~= nil then _0xc623[_sdec_4829({248,238,255,230,238,255,234,255,234,233,231,238})] = _v642fd4 end end
do local _v496fd2 = debug; if _v496fd2 ~= nil then _0xc623.debug = _v496fd2 end end
do local _vadbbad = os; _0xc623[_vadbbad ~= nil and _sdec_4829({228,248}) or false] = _vadbbad end
do local _v564fc4 = MarketplaceService; _0xc623[_v564fc4 ~= nil and _sdec_4829({198,234,249,224,238,255,251,231,234,232,238,216,238,249,253,226,232,238}) or false] = _v564fc4 end
do local _vac794b = RunService; _0xc623[_vac794b ~= nil and _sdec_4829({217,254,229,216,238,249,253,226,232,238}) or false] = _vac794b end
do local _v550a67 = tick; if _v550a67 ~= nil then _0xc623[_sdec_4829({255,226,232,224})] = _v550a67 end end
do local _v7ef5e5 = table; if _v7ef5e5 ~= nil then _0xc623.table = _v7ef5e5 end end
do local _vfd8749 = error; if _vfd8749 ~= nil then _0xc623.error = _vfd8749 end end
_0xc623[false] = nil
local _glob_env_0c86e0
do local _ok, _0x4313 = pcall(getfenv, 1); if _ok and type(_0x4313) == _sdec_4829({255,234,233,231,238}) then _glob_env_0c86e0 = _0x4313 else _glob_env_0c86e0 = _G end end
setmetatable(_0xc623, { __index = _glob_env_0c86e0, __newindex = _glob_env_0c86e0 })

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = _G["script"]
  end
local _0xf63f = 4096
local _0xb7b2 = 16383
local _0xed0e = 16384
local _0x8a7d = 268435456
local _0x9c92 = 4398046511104
local _0x52d1 = 8192


local _0xfb0e

local function _0x06e2(_0xbea8, _0x35eb, _0x3e15)
  if _0x3e15 >= _0x52d1 then return _0x35eb[_0x3e15 - _0x52d1 + 1] end
  return _0xbea8[_0x3e15]
end

local function _0xe2e1(_0x62c5, _0x2406)
  return function(...)
    local _0xb18e = _0x0001(_sdec_4829({168}), ...)
    return _0xfb0e(_0x62c5, _0x2406, { ... }, _0xb18e)
  end
end

_0xfb0e = function(_0x6636, _0x513f, _0x14e7, _0xa452)
  local _0xfed9 = _0x6636.insns
  local _0xbf56 = _0xfed9[1]
  local _0xc940 = _0x6636.consts
  local _0x5a17 = _0x6636.protos
  local _0x1258 = _0x6636.maxstack or 64
  local _0xbea8 = {}
  for i = 0, _0x1258 + 16 do _0xbea8[i] = nil end
  _0xa452 = _0xa452 or 0
  local _0x7656 = _0x6636.numparams
  for i = 1, _0x7656 do _0xbea8[i - 1] = _0x14e7[i] end
  local _0x45e5 = nil
  local _0x643d = 0
  if _0x6636.isvararg then
    _0x45e5 = {}
    _0x643d = _0xa452 - _0x7656
    if _0x643d < 0 then _0x643d = 0 end
    for i = 1, _0x643d do _0x45e5[i] = _0x14e7[_0x7656 + i] end
  end
  local _0xd746 = 1
  local _0xea84 = _0x7656
  local _0x9624 = _0xfed9[2]
  while _0xd746 <= _0x9624 do
    while _0xfed9[7] < _0xd746 do
      local _0x8d11 = _0xfed9[7] + 1
      _0xfed9[7] = _0x8d11
      local _0x4313 = _0xbf56[_0x8d11]
      local _0x678c = _0x4313 % _0x47f6
      local _0x104d = (_0x4313 - _0x678c) / _0x47f6
      local _0x43f4 = _0xde5b(_0xfed9[3], (_0x8d11 * _0xfed9[5]) % _0x47f6)
      local _0x1ad8 = _0xde5b(_0xfed9[4], (_0x8d11 * _0xfed9[6]) % _0x47f6)
      local _0x7163 = _0xde5b(_0x678c, _0x43f4)
      local _0x3693 = _0xde5b(_0x104d, _0x1ad8)
      _0xbf56[_0x8d11] = _0x7163 + _0x3693 * _0x47f6
      _0xfed9[3] = (_0xde5b(_0xfed9[3], _0x7163) + _0xfed9[4]) % _0x47f6
      _0xfed9[4] = (_0xde5b(_0xfed9[4], _0x3693) + _0xfed9[3]) % _0x47f6
    end
    local _0xc760 = _0xbf56[_0xd746]
    local _0x14b7 = _0xc760 % _0x47f6
    local _0xf965 = (_0xc760 - _0x14b7) / _0x47f6
    _0x14b7 = _0xde5b(_0x14b7, (_0xd746 * _0x4eae + _0xa0b4) % _0x47f6)
    _0xf965 = _0xde5b(_0xf965, (_0xd746 * _0xd46a + _0xa7f0) % _0x47f6)
    local _0xc8e6 = _0x14b7 + _0xf965 * _0x47f6
    local _0x7dda = (_0xc8e6 % _0xed0e) - _0xf63f
    local _0x2e4c = (_0xcd4f(_0xc8e6 / _0xed0e) % _0xed0e) - _0xf63f
    local _0x24e7 = (_0xcd4f(_0xc8e6 / _0x8a7d) % _0xed0e) - _0xf63f
    local _0x9c03 = _0xcd4f(_0xc8e6 / _0x9c92)
    _0xd746 = _0xd746 + 1
local _0x2fa8 = _0x9c03 % 5
if _0x2fa8 == 4 then
  if _0x9c03 == 89 then
    do local _h0c96b = _0xbea8
_h0c96b[_0x7dda] = _h0c96b[_0x2e4c].v
end
  elseif _0x9c03 == 4 then
    local _0x4720 = (_0x7dda * 9 + 3)
    do local _h848a2 = _0xc940
do local _0x0c37 = _0xbea8[_0x2e4c]; for i = _0x2e4c + 1, _0x24e7 do _0x0c37 = _0x0c37 .. _0xbea8[i] end; _0xbea8[_0x7dda] = _0x0c37 end
end
  elseif _0x9c03 == 114 then
    local _0x2d28 = _0xd746 + 59; _0x2d28 = _0x2d28 - _0x2d28
    do local _h08a70 = _0xbea8; local _h1dc19 = _0xc940; local _hea5ab = (_0xd746 + _0x2e4c) % 35
do
      local _0x282c = _h08a70[_0x7dda]
      local _0xb18e = (_0x2e4c == 0) and (_0xea84 - _0x7dda - 1) or _0x2e4c
      local offset = (_0x24e7 - 1) * 50
      for i = 1, _0xb18e do _0x282c[offset + i] = _h08a70[_0x7dda + i] end
    end
end
  elseif _0x9c03 == 64 then
    local _0xd3c7 = #_0xbf56
    do local _hef9e4 = (_0xd746 + _0x2e4c) % 21
_0xbea8[_0x7dda] = _0xbea8[_0x2e4c][_0x06e2(_0xbea8, _0xc940, _0x24e7)]
end
  elseif _0x9c03 == 29 then
    local _0xcb3a = #_0xbf56
    do local _he8d8f = _0xc940; local _h2c511 = _0x06e2
_0xbea8[_0x7dda] = _h2c511(_0xbea8, _he8d8f, _0x2e4c) + _h2c511(_0xbea8, _he8d8f, _0x24e7)
end
  elseif _0x9c03 == 94 then
    local _0xda8d = _0xbea8[_0x7dda]
    do local _h747a3 = _0xbea8; local _hf5425 = _h747a3[_0x7dda]
_h747a3[_0x2e4c].v = _h747a3[_0x7dda]
end
  elseif _0x9c03 == 109 then
    local _0x6f21 = _0xbea8[_0x7dda]
    do local _h13d9e = _0xbea8; local _hb49b7 = _0x06e2
_h13d9e[_0x7dda] = _h13d9e[_0x2e4c]
end
  elseif _0x9c03 == 99 then
    local _0xb96a = #_0xbf56
    do local _h96ede = _0xc940
do
      local _0x62c5 = _0x5a17[_0x2e4c + 1]
      local _0x2406 = {}
      for i = 1, #_0x62c5.upvs do
        while _0xfed9[7] < _0xd746 do
      local _0x8d11 = _0xfed9[7] + 1
      _0xfed9[7] = _0x8d11
      local _0x4313 = _0xbf56[_0x8d11]
      local _0x678c = _0x4313 % _0x47f6
      local _0x104d = (_0x4313 - _0x678c) / _0x47f6
      local _0x43f4 = _0xde5b(_0xfed9[3], (_0x8d11 * _0xfed9[5]) % _0x47f6)
      local _0x1ad8 = _0xde5b(_0xfed9[4], (_0x8d11 * _0xfed9[6]) % _0x47f6)
      local _0x7163 = _0xde5b(_0x678c, _0x43f4)
      local _0x3693 = _0xde5b(_0x104d, _0x1ad8)
      _0xbf56[_0x8d11] = _0x7163 + _0x3693 * _0x47f6
      _0xfed9[3] = (_0xde5b(_0xfed9[3], _0x7163) + _0xfed9[4]) % _0x47f6
      _0xfed9[4] = (_0xde5b(_0xfed9[4], _0x3693) + _0xfed9[3]) % _0x47f6
    end
    local _0xc760 = _0xbf56[_0xd746]
    local _0x14b7 = _0xc760 % _0x47f6
    local _0xf965 = (_0xc760 - _0x14b7) / _0x47f6
    _0x14b7 = _0xde5b(_0x14b7, (_0xd746 * _0x4eae + _0xa0b4) % _0x47f6)
    _0xf965 = _0xde5b(_0xf965, (_0xd746 * _0xd46a + _0xa7f0) % _0x47f6)
    local _0x3eac = _0x14b7 + _0xf965 * _0x47f6
        local _0xc595 = (_0xcd4f(_0x3eac / _0xed0e) % _0xed0e) - _0xf63f
        local _0xe372 = _0xcd4f(_0x3eac / _0x9c92)
        _0xd746 = _0xd746 + 1
        if _0xe372 == 109 then
          _0x2406[i] = _0xbea8[_0xc595]
        elseif _0xe372 == 32 then
          _0x2406[i] = _0x513f[_0xc595 + 1]
        else
          _0x0824(_sdec_4829({233,234,239,171,254,251,253,234,231,254,238,171,233,226,229,239,226,229,236,171,228,251,232,228,239,238,171}) .. tostring(_0xe372))
        end
      end
      _0xbea8[_0x7dda] = _0xe2e1(_0x62c5, _0x2406)
    end
end
  elseif _0x9c03 == 84 then
    local _0x77d1 = #_0xbf56
    do local _h46b31 = _0xbea8; local _hee6b0 = _0x7dda + 38
_h46b31[_0x7dda] = _0xc940[_0x2e4c + 1]; _0xd746 = _0xd746 + 1
end
  elseif _0x9c03 == 39 then
    local _0x8fbd = _0xbea8[_0x7dda]
    do local _h69a41 = _0xbea8; local _h35acd = _0xc940
_h69a41[_0x7dda] = _0x06e2(_h69a41, _h35acd, _0x2e4c) + _0x06e2(_h69a41, _h35acd, _0x24e7)
end
  else _0x0824(_sdec_4829({233,234,239,171,228,251,232,228,239,238,171}) .. tostring(_0x9c03) .. _sdec_4829({171,234,255,171,251,232,171}) .. tostring(_0xd746 - 1)) end
elseif _0x2fa8 == 3 then
  if _0x9c03 == 53 then
    local _0x8332 = (_0x7dda * 20 + 40)
    do local _h028fd = _0xbea8; local _h68d75 = _0x06e2; local _ha07d2 = _h028fd[_0x7dda]
_h028fd[_0x7dda] = _h68d75(_h028fd, _0xc940, _0x2e4c) % _h68d75(_h028fd, _0xc940, _0x24e7)
end
  elseif _0x9c03 == 48 then
    local _0xcc55 = #_0xbf56
    do local _hfb662 = _0xbea8; local _hd57a1 = _0xc940; local _h4e845 = _0x06e2
for i = _0x7dda, _0x2e4c do _hfb662[i] = nil end
end
  elseif _0x9c03 == 13 then
    local _0xb902 = #_0xbf56
    do local _hded9e = _0xbea8; local _hb63d1 = _0xc940; local _hd2cde = _0x06e2; local _h356bb = _hded9e[_0x7dda]
_hded9e[_0x7dda] = _hded9e[_0x2e4c] - _hb63d1[_0x24e7 + 1]
end
  elseif _0x9c03 == 83 then
    local _0x0007 = #_0xbf56
    do local _h2b864 = _0xbea8; local _h418fc = _0xc940
_h2b864[_0x7dda] = _0x06e2(_h2b864, _h418fc, _0x2e4c) / _0x06e2(_h2b864, _h418fc, _0x24e7)
end
  elseif _0x9c03 == 3 then
    do local _h82fac = _0xbea8; local _h7f996 = _0x06e2; local _hebc55 = (_0xd746 + _0x2e4c) % 17
do local _0x383a = not not _h82fac[_0x7dda]; if not (_0x383a == (_0x24e7 ~= 0)) then _0xd746 = _0xd746 + 1 end end
end
  elseif _0x9c03 == 103 then
    do local _hdaa4f = _0xbea8[_0x7dda]
do local _0x9184 = (_0x06e2(_0xbea8, _0xc940, _0x2e4c) < _0x06e2(_0xbea8, _0xc940, _0x24e7)); if not (_0x9184 == (_0x7dda ~= 0)) then _0xd746 = _0xd746 + 1 end end
end
  elseif _0x9c03 == 88 then
    local _0x1beb = _0xbea8[_0x7dda]
    do local _hdfa5e = _0xbea8
do
      local _0xb131 = _hdfa5e[_0x7dda]
      local _0x24df
      if _0x2e4c == 0 then _0x24df = _0xea84 - _0x7dda - 1 else _0x24df = _0x2e4c - 1 end
      local _0xfd09 = {}
      for i = 1, _0x24df do _0xfd09[i] = _hdfa5e[_0x7dda + i] end
      local _0x1581 = { _0xb131(_0x19e8(_0xfd09, 1, _0x24df)) }
      local _0x3634 = #_0x1581
      if _0x24e7 == 0 then
        for i = 1, _0x3634 do _hdfa5e[_0x7dda + i - 1] = _0x1581[i] end
        for i = _0x3634 + 1, _0x3634 + 4 do _hdfa5e[_0x7dda + i - 1] = nil end
        _0xea84 = _0x7dda + _0x3634
      elseif _0x24e7 == 1 then
        -- drop all
      else
        local _0x1ef5 = _0x24e7 - 1
        for i = 1, _0x1ef5 do _hdfa5e[_0x7dda + i - 1] = _0x1581[i] end
        for i = _0x3634 + 1, _0x1ef5 do _hdfa5e[_0x7dda + i - 1] = nil end
      end
    end
end
  elseif _0x9c03 == 78 then
    do local _h61018 = _0xbea8
_h61018[_0x7dda] = {}
end
  elseif _0x9c03 == 68 then
    do local _hd0ba6 = _0xc940
do local _0x0c37 = _0xbea8[_0x7dda]; for i = _0x2e4c, _0x24e7 do _0x0c37 = _0x0c37 .. tostring(_0xbea8[i]) end; _0xbea8[_0x7dda] = _0x0c37 end
end
  elseif _0x9c03 == 8 then
    local _0x76a5 = (_0x7dda * 29 + 4)
    do local _h5cc52 = _0xc940; local _h8328e = _0x7dda + 23
_0xbea8[_0x7dda][_0x06e2(_0xbea8, _h5cc52, _0x2e4c)] = _0x06e2(_0xbea8, _h5cc52, _0x24e7)
end
  else _0x0824(_sdec_4829({233,234,239,171,228,251,232,228,239,238,171}) .. tostring(_0x9c03) .. _sdec_4829({171,234,255,171,251,232,171}) .. tostring(_0xd746 - 1)) end
elseif _0x2fa8 == 1 then
  if _0x9c03 == 121 then
    do local _h9399e = _0xbea8
_h9399e[_0x7dda] = not _h9399e[_0x2e4c]
end
  elseif _0x9c03 == 106 then
    local _0xd31e = (_0x7dda * 27 + 33)
    do local _hca859 = _0xbea8; local _h6a348 = _0xc940
_hca859[_0x7dda] = -_hca859[_0x2e4c]
end
  elseif _0x9c03 == 26 then
    do local _h25cd2 = _0xbea8
_h25cd2[_0x7dda] = #_0xc940
end
  elseif _0x9c03 == 56 then
    do local _h91d5f = _0xc940
-- no-_0x9c03 under our _0xc78c model
end
  elseif _0x9c03 == 21 then
    local _0xde53 = _0xd746 + 95; _0xde53 = _0xde53 - _0xde53
    do local _he272d = _0xc940
do
      local _0xb131 = _0xbea8[_0x7dda]
      local _0x0c37 = _0xbea8[_0x7dda + 1]
      local _0x39f7 = _0xbea8[_0x7dda + 2]
      local _0x1581 = { _0xb131(_0x0c37, _0x39f7) }
      local nres = _0x24e7
      for i = 1, nres do _0xbea8[_0x7dda + 2 + i] = _0x1581[i] end
      if _0xbea8[_0x7dda + 3] ~= nil then
        _0xbea8[_0x7dda + 2] = _0xbea8[_0x7dda + 3]
      else
        _0xd746 = _0xd746 + 1
      end
    end
end
  elseif _0x9c03 == 81 then
    local _0x83dd = _0xbea8[_0x7dda]
    do local _hc0c53 = _0xc940; local _h1beb5 = _0x7dda + 37
do local _0x7bf6 = (_0x06e2(_0xbea8, _hc0c53, _0x2e4c) <= _0x06e2(_0xbea8, _hc0c53, _0x24e7)); if not (_0x7bf6 == (_0x7dda ~= 0)) then _0xd746 = _0xd746 + 1 end end
end
  elseif _0x9c03 == 11 then
    do local _hafc21 = _0xbea8; local _h66ce3 = _0x06e2
_hafc21[_0x7dda] = _h66ce3(_hafc21, _0xc940, _0x2e4c) ^ _h66ce3(_hafc21, _0xc940, _0x24e7)
end
  elseif _0x9c03 == 76 then
    do local _h951f5 = _0xbea8; local _he5807 = _0x7dda + 22
_h951f5[_0x7dda] = _0x06e2(_h951f5, _0xc940, _0x2e4c) - _0x06e2(_h951f5, _0xc940, _0x24e7)
end
  elseif _0x9c03 == 66 then
    do local _h6008c = _0xc940; local _hb1029 = (_0xd746 + _0x2e4c) % 31
do
      if _0x2e4c == 0 then
        for i = 1, _0x643d do _0xbea8[_0x7dda + i - 1] = _0x45e5[i] end
        for i = _0x643d + 1, _0x643d + 4 do _0xbea8[_0x7dda + i - 1] = nil end
        _0xea84 = _0x7dda + _0x643d
      else
        local _0x1ef5 = _0x2e4c - 1
        for i = 1, _0x1ef5 do
          if i <= _0x643d then _0xbea8[_0x7dda + i - 1] = _0x45e5[i] else _0xbea8[_0x7dda + i - 1] = nil end
        end
      end
    end
end
  elseif _0x9c03 == 61 then
    do local _hcfeb7 = _0xbea8; local _h79d26 = _0xc940; local _ha82a7 = _0x06e2
_0xc623[_h79d26[_0x2e4c + 1]] = _hcfeb7[_0x7dda]
end
  elseif _0x9c03 == 41 then
    local _0x16c1 = _0xd746 + 53; _0x16c1 = _0x16c1 - _0x16c1
    _0xbea8[_0x7dda] = (_0x2e4c ~= 0); if _0x24e7 ~= 0 then _0xd746 = _0xd746 + 1 end
  elseif _0x9c03 == 116 then
    local _0x2080 = (_0x7dda * 16 + 5)
    do local _h57a70 = _0xbea8; local _ha4547 = _0xc940; local _h07cfa = _0x7dda + 5
_h57a70[_0x7dda] = #_ha4547
end
  else _0x0824(_sdec_4829({233,234,239,171,228,251,232,228,239,238,171}) .. tostring(_0x9c03) .. _sdec_4829({171,234,255,171,251,232,171}) .. tostring(_0xd746 - 1)) end
elseif _0x2fa8 == 2 then
  if _0x9c03 == 117 then
    local _0x38e6 = _0xd746 + 51; _0x38e6 = _0x38e6 - _0x38e6
    do local _h1723c = _0xbea8
_0x513f[_0x2e4c + 1].v = _h1723c[_0x7dda]
end
  elseif _0x9c03 == 32 then
    local _0xdb94 = (_0x7dda * 50 + 36)
    do local _h813f5 = _0xbea8; local _h06510 = (_0xd746 + _0x2e4c) % 30
_h813f5[_0x7dda] = _0x513f[_0x2e4c + 1].v
end
  elseif _0x9c03 == 97 then
    local _0xef21 = _0xd746 + 1; _0xef21 = _0xef21 - _0xef21
    do local _hb2c94 = _0xbea8
_hb2c94[_0x7dda] = not _hb2c94[_0x2e4c]
end
  elseif _0x9c03 == 112 then
    do local _h05f08 = _0xbea8; local _hd6a76 = _0xc940
do
      _h05f08[_0x7dda] = _h05f08[_0x7dda] + _h05f08[_0x7dda + 2]
      local _0x4966 = _h05f08[_0x7dda + 2]
      if (_0x4966 > 0 and _h05f08[_0x7dda] <= _h05f08[_0x7dda + 1]) or (_0x4966 <= 0 and _h05f08[_0x7dda] >= _h05f08[_0x7dda + 1]) then
        _0xd746 = _0xd746 + _0x2e4c
        _h05f08[_0x7dda + 3] = _h05f08[_0x7dda]
      end
    end
end
  elseif _0x9c03 == 102 then
    local _0xe2d7 = _0xd746 + 58; _0xe2d7 = _0xe2d7 - _0xe2d7
    do local _ha234c = _0xbea8; local _h793c9 = _0xc940
_ha234c[_0x7dda] = #_ha234c[_0x2e4c]
end
  elseif _0x9c03 == 127 then
    do local _hac977 = _0xc940; local _h4d7c3 = _0x06e2
do local _0x9171 = _0xbea8[_0x2e4c]; _0xbea8[_0x7dda + 1] = _0x9171; _0xbea8[_0x7dda] = _0x9171[_h4d7c3(_0xbea8, _hac977, _0x24e7)] end
end
  elseif _0x9c03 == 57 then
    local _0x9d9e = _0xbea8[_0x7dda]
    do local _hc5305 = _0xbea8; local _hdfa2f = _0xc940; local _h03a45 = _0x06e2; local _h100c8 = _0x7dda + 27
_hc5305[_0x7dda] = #_hdfa2f
end
  elseif _0x9c03 == 92 then
    local _0x8566 = #_0xbf56
    do local _h1faf2 = _0xbea8
do local _0x0c37 = _h1faf2[_0x7dda]; for i = _0x2e4c, _0x24e7 do _0x0c37 = _0x0c37 .. tostring(_h1faf2[i]) end; _h1faf2[_0x7dda] = _0x0c37 end
end
  elseif _0x9c03 == 72 then
    local _0x5542 = #_0xbf56
    do local _h92972 = _0xbea8; local _hd1ba9 = _0xc940
do
      if _0x2e4c == 0 then
        local _0x2072 = {}
        local _0xb18e = _0xea84 - _0x7dda
        for i = 0, _0xb18e - 1 do _0x2072[i + 1] = _h92972[_0x7dda + i] end
        return _0x19e8(_0x2072, 1, _0xb18e)
      elseif _0x2e4c == 1 then
        return
      else
        local _0xb18e = _0x2e4c - 1
        local _0x2072 = {}
        for i = 0, _0xb18e - 1 do _0x2072[i + 1] = _h92972[_0x7dda + i] end
        return _0x19e8(_0x2072, 1, _0xb18e)
      end
    end
end
  elseif _0x9c03 == 77 then
    do local _h6f74d = _0xbea8; local _h47f28 = _0xc940; local _h9b75c = _0x06e2
_h6f74d[_0x7dda] = -_h9b75c(_h6f74d, _h47f28, _0x2e4c)
end
  else _0x0824(_sdec_4829({233,234,239,171,228,251,232,228,239,238,171}) .. tostring(_0x9c03) .. _sdec_4829({171,234,255,171,251,232,171}) .. tostring(_0xd746 - 1)) end
elseif _0x2fa8 == 0 then
  if _0x9c03 == 15 then
    do local _h10bc5 = _0xbea8; local _h6aedf = (_0xd746 + _0x2e4c) % 7
_h10bc5[_0x7dda] = _0xc623[_0xc940[_0x2e4c + 1]]
end
  elseif _0x9c03 == 105 then
    do local _h751e6 = _0xbea8
_h751e6[_0x7dda] = _0xc940[_0x2e4c + 1]
end
  elseif _0x9c03 == 45 then
    local _0x1920 = (_0x7dda * 17 + 42)
    do local _hb13b1 = _0xc940
_0xbea8[_0x7dda] = _0xbea8[_0x2e4c] - _hb13b1[_0x24e7 + 1]
end
  elseif _0x9c03 == 90 then
    local _0x1a83 = _0xd746 + 16; _0x1a83 = _0x1a83 - _0x1a83
    do local _h3c17b = (_0xd746 + _0x2e4c) % 14
do local _0x4f05 = (_0x06e2(_0xbea8, _0xc940, _0x2e4c) == _0x06e2(_0xbea8, _0xc940, _0x24e7)); if not (_0x4f05 == (_0x7dda ~= 0)) then _0xd746 = _0xd746 + 1 end end
end
  elseif _0x9c03 == 95 then
    do local _h5af61 = _0xbea8; local _h07e06 = _0x06e2
_0xd746 = _0xd746 + _0x2e4c
end
  elseif _0x9c03 == 0 then
    local _0xced0 = _0xd746 + 66; _0xced0 = _0xced0 - _0xced0
    do local _h55416 = _0xbea8; local _h74210 = _0xc940
_h55416[_0x7dda] = _0x06e2(_h55416, _h74210, _0x2e4c) * _0x06e2(_h55416, _h74210, _0x24e7)
end
  elseif _0x9c03 == 125 then
    do local _h0d75c = _0xbea8; local _h2b3eb = _0xc940; local _hc0b36 = _0x06e2
do
      local _0xb131 = _h0d75c[_0x7dda]
      local _0x24df
      if _0x2e4c == 0 then _0x24df = _0xea84 - _0x7dda - 1 else _0x24df = _0x2e4c - 1 end
      local _0xfd09 = {}
      for i = 1, _0x24df do _0xfd09[i] = _h0d75c[_0x7dda + i] end
      return _0xb131(_0x19e8(_0xfd09, 1, _0x24df))
    end
end
  elseif _0x9c03 == 115 then
    do local _h50f2e = _0xc940
_0xbea8[_0x7dda] = { v = _0xbea8[_0x7dda] }
end
  elseif _0x9c03 == 55 then
    do local _hce20b = _0xc940; local _ha29f4 = _0x06e2
_0xbea8[_0x7dda] = _0xbea8[_0x7dda] - _0xbea8[_0x7dda + 2]; _0xd746 = _0xd746 + _0x2e4c
end
  else _0x0824(_sdec_4829({233,234,239,171,228,251,232,228,239,238,171}) .. tostring(_0x9c03) .. _sdec_4829({171,234,255,171,251,232,171}) .. tostring(_0xd746 - 1)) end
else _0x0824(_sdec_4829({233,234,239,171,233,254,232,224,238,255,171}) .. tostring(_0x2fa8)) end
  end
end

if ((function() return false end)()) then
    local _ = _G["script"]
    local _ = math.pi
  end

local _0xa061 = 
{
  numparams = 0,
  isvararg = true,
  maxstack = 8,
  insns = _0xf8f3(_0xdd06(_0xcc98(_0xe216(_u00da(_sdec_4829({162,20,172,150,142,80,244,19,171,70,130,121,205,182,161,15,239,88,199,185,169,15,223,105,129,44,159,26,156,159,131,124,220,124,189,149,190,112,219,82,145,68,150,126,238,185,228,112,213,87,152,148,185,68,209,79,212,16,194,22,153,171,243,74,243,107,130,170,152,7,254,113,186,79,212,37,145,133,190,108,185,14,154,251,133,21,253,14,218,75,197,107,130,255,228,26,176,7,211,244,219,118,227,102,182,40,223,124,243,241,169,17,231,87,171,146,138,121,251,89,211,33,214,4,199,165,171,65,187,106,167,161})),105)),15), 1128683240, 5180489, 17700089, 31785236, 33201978, 6310564),
  consts = {1,2,3,0,_sdec_4829({226,251,234,226,249,248})},
  protos = {},
  upvs = {},
}

return _0xfb0e(_0xa061, {}, {...}, _0x0001(_sdec_4829({168}), ...))
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
  local _env = {_d4c1c=25597,_df71f=65079,_db597=41722,_d4739=17575,_d981c=29937,_d740b=17304}
  local _s3f69 = _env._db597
  local _fn = function(...)
return (function(...)
  local _env = {_df94d=45094,_da702=13754,_dc660=23400,_d93ef=46417,_db644=1836,_d38fd=13866}
  local _sd9c5 = _env._d93ef
  local _fn = function(...)
return (function(...)
  local _env = {_dcf9d=64704,_d7430=13417,_d91b3=45653,_dd69a=59977}
  local _saa3d = _env._d91b3
  local _fn = function(...)

local function _sdec_59ed(b)
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
  local _0xa9c9 = {}
  for i = 1, #b do _0xa9c9[i] = string.char(_xor(b[i], _k)) end
  return table.concat(_0xa9c9)
end


local _u5e64 = table.concat
local _ue024 = string.byte
local _u1055 = string.char
local _u7626 = string.sub
local _u487f = rawget
local function _u6d7c(_u425b, _u804c)
  local _u4ced, _u75e1 = 0, 1
  for _ = 1, 8 do
    local _u639d, _u6167 = _u425b % 2, _u804c % 2
    if _u639d ~= _u6167 then _u4ced = _u4ced + _u75e1 end
    _u425b = (_u425b - _u639d) / 2
    _u804c = (_u804c - _u6167) / 2
    _u75e1 = _u75e1 * 2
  end
  return _u4ced
end
local _ue5f7 = 0
do
  -- debug.gethook is present in Lua 5.1 and Luau (debug lib). _0x4902 hook means
  -- someone'_0xb76a tracing us; corrupt the pad.
  local _u5821 = debug and debug.gethook
  if _u5821 then
    local ok, hk = pcall(_u5821)
    if ok and hk ~= nil then _ue5f7 = _u6d7c(_ue5f7, 204) end
  end
  -- Roblox environment check. In Roblox/Luau, `game` is a userdata living
  -- in the script'_0xb76a environment chain (NOT in `_G`), so we use a bare
  -- global reference rather than `rawget(_G, "game")` which always returns
  -- nil under Roblox. Bare-global access goes through the env __index chain
  -- and finds `game` correctly. Any execution context that doesn'_0xa9c9 expose
  -- `game` (stock lua5.1, hostile sandbox with stripped env) silently
  -- corrupts the pad.
  if game == nil then
    _ue5f7 = _u6d7c(_ue5f7, 171)
  end
  -- LuaJIT detector. Roblox is Luau, not LuaJIT. If the `jit` global exists
  -- and has a `.version` field, we're running under LuaJIT (likely in a
  -- hostile sandbox); corrupt the pad.
  if rawget and rawget(_G, _sdec_59ed({254,253,224})) ~= nil then
    _ue5f7 = _u6d7c(_ue5f7, 90)
  end
end
local _u4a63 = {164,21,207,17,34,86,3,90,75,28,103,117,159,77,253,136}
local _u94ba = {4,7,15,11,13,6,10,8,14,2,9,16,12,3,1,5}
local _u49d3 = {}
for _uce60 = 1, 16 do
  _u49d3[_uce60] = _u6d7c(_u4a63[_u94ba[_uce60]], _ue5f7)
end
local function _ufd52(_0xb76a)
  local out = {}
  local len = #_0xb76a
  for _uce60 = 1, len do
    local _u7c91 = ((_uce60 - 1) % 16) + 1
    out[_uce60] = _u1055(_u6d7c(_ue024(_0xb76a, _uce60), _u49d3[_u7c91]))
  end
  return _u5e64(out)
end

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = math.huge
  end

local _0xad1a = _sdec_59ed({164,165,166,167,160,161,162,163,172,173,213,214,215,208,209,210,211,220,221,222,223,216,217,218,219,196,197,198,199,192,193,194,195,204,205,206,245,246,247,240,241,242,243,252,253,254,255,248,249,250,251,228,229,230,231,224,225,226,227,236,237,238,181,183,176,177,178,188,189,190,191,185,175,168,169,170,171,212,202,203,244,239,232,233,234})
local _0x9e74 = {}
for i = 1, 85 do _0x9e74[string.byte(_0xad1a, i)] = i - 1 end
local function _0x095b(_0xb76a, origLen)
  local out = {}
  local outPos = 0
  local sLen = #_0xb76a
  local padCount = (5 - (sLen % 5)) % 5
  local i = 1
  while i <= sLen do
    local v = 0
    local group = 0
    while group < 5 do
      local ch
      if i + group <= sLen then
        ch = _0x9e74[string.byte(_0xb76a, i + group)]
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

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = math.pi
    local _ = string.byte("x")
  end
local function _0xde42(buf)
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
    local _ = _G["Vector3"]
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

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = math.huge
  end
local function _0x6bf5(bytes, _0xa539)
  local out = {}
  for i = 1, _0xa539 do
    local base = (i - 1) * 7
    local v = 0
    for j = 7, 1, -1 do
      v = v * 256 + bytes[base + j]
    end
    out[i] = v
  end
  return out
end



local _0xd8cc = 33554432
local function _0x6988(a, b)
  local aLo = a % 65536
  local aHi = (a - aLo) / 65536
  local bLo = b % 65536
  local bHi = (b - bLo) / 65536
  local function xor16(_0xa98f, y)
    local r, p = 0, 1
    for _ = 1, 16 do
      local xb, yb = _0xa98f % 2, y % 2
      if xb ~= yb then r = r + p end
      _0xa98f = (_0xa98f - xb) / 2
      y = (y - yb) / 2
      p = p * 2
    end
    return r
  end
  return xor16(aHi, bHi) * 65536 + xor16(aLo, bLo)
end

-- _0x8312: stateful (lazy) bytecode decode.
--
-- `_0xff1d` no longer materializes a plaintext instruction array. It
-- returns a "_0xbe7e" holding (a) the layer-1-encrypted integer array, (b) the
-- initial feedback-chain state seeded by the per-proto checksum and the
-- script-env fingerprint, and (c) the per-build salt constants. The outer
-- _0xbe7e is what `_0x11c8.insns` becomes. Each _0x6443() call unboxes these
-- fields into its own local state and advances the decryption lazily at
-- fetch time: instruction `i` is only peeled from the feedback chain
-- when the dispatch loop actually reads it. Control flow that never
-- reaches an instruction (dead code, branches not taken) leaves those
-- cells in their encrypted form. An analyst who dumps the _0xbe7e'_0xb76a data
-- field outside the VM gets layer-1-encrypted integers with no way to
-- recover the feedback state without re-running the chain in order.
local function _0xff1d(enc, checksum, seed_a, seed_b, salt_a, salt_b, envConst)
  local env = ((game ~= nil) and 1 or 0)
  local state_a = _0x6988(seed_a, checksum % _0xd8cc)
  local state_b = _0x6988(seed_b, (env * envConst + math.floor(checksum / _0xd8cc)) % _0xd8cc)
  -- numeric indices avoid any chance of the rename pass mangling a
  -- field-key identifier that happens to collide with a VM local name.
  -- Layout: [1]=data, [2]=_0xa539, [3]=state_a, [4]=state_b, [5]=salt_a,
  --        [6]=salt_b, [7]=decLvl.  decLvl starts at 0 and only ever
  --        advances — so an inner proto that is executed multiple times
  --        (e.g. a closure called in a loop) reuses the same already-
  --        decrypted instructions on later calls instead of double-
  --        applying layer 1 to the in-place mutated array.
  return { enc, #enc, state_a, state_b, salt_a, salt_b, 0 }
end
local _0x656d, _0x917f, _0x0e7a, _0xc410 = 29970534, 13266633, 28503682, 12185656

if ((function() return 1 end)()) ~= ((function() return 1 end)()) then
    local _ = math.pi
  end
-- larpfuscator runtime (plain)
local _0x6655 = math.floor
local _0xe507 = select
local _0x84ef = type
local _0xe9ff = setmetatable
local _0x3003 = getmetatable
local _0x264c = table.unpack or unpack
local _0x33fa = error
local _0xc188 = {}
do local _v561ab0 = setmetatable; if _v561ab0 ~= nil then _0xc188.setmetatable = _v561ab0 end end
do local _v7a3c03 = game; if _v7a3c03 ~= nil then _0xc188[_sdec_59ed({243,245,249,241})] = _v7a3c03 end end
do local _v6d7607 = error; _0xc188[_v6d7607 ~= nil and _sdec_59ed({241,230,230,251,230}) or false] = _v6d7607 end
do local _v6a4314 = print; _0xc188[_v6a4314 ~= nil and _sdec_59ed({228,230,253,250,224}) or false] = _v6a4314 end
do local _vb4303d = TeleportService; if _vb4303d ~= nil then _0xc188.TeleportService = _vb4303d end end
do local _v5c49d2 = coroutine; if _v5c49d2 ~= nil then _0xc188.coroutine = _v5c49d2 end end
do local _v1b61e0 = xpcall; if _v1b61e0 ~= nil then _0xc188.xpcall = _v1b61e0 end end
do local _v8f527e = UserInputService; if _v8f527e ~= nil then _0xc188[_sdec_59ed({193,231,241,230,221,250,228,225,224,199,241,230,226,253,247,241})] = _v8f527e end end
do local _v6e14ff = Lighting; if _v6e14ff ~= nil then _0xc188.Lighting = _v6e14ff end end
do local _v47fbbe = assert; if _v47fbbe ~= nil then _0xc188.assert = _v47fbbe end end
do local _v9f2b52 = math; if _v9f2b52 ~= nil then _0xc188.math = _v9f2b52 end end
do local _vd0f4a7 = rawset; if _vd0f4a7 ~= nil then _0xc188[_sdec_59ed({230,245,227,231,241,224})] = _vd0f4a7 end end
do local _v80f035 = ContentProvider; if _v80f035 ~= nil then _0xc188.ContentProvider = _v80f035 end end
do local _v709a07 = script; if _v709a07 ~= nil then _0xc188[_sdec_59ed({231,247,230,253,228,224})] = _v709a07 end end
do local _ve5ea16 = Vector2; if _ve5ea16 ~= nil then _0xc188.Vector2 = _ve5ea16 end end
do local _vff11a4 = NumberRange; if _vff11a4 ~= nil then _0xc188[_sdec_59ed({218,225,249,246,241,230,198,245,250,243,241})] = _vff11a4 end end
do local _v7b6003 = ServerStorage; if _v7b6003 ~= nil then _0xc188.ServerStorage = _v7b6003 end end
do local _v80d4aa = pairs; _0xc188[_v80d4aa ~= nil and _sdec_59ed({228,245,253,230,231}) or false] = _v80d4aa end
do local _v738d0d = Vector3; if _v738d0d ~= nil then _0xc188.Vector3 = _v738d0d end end
do local _v9758c5 = NumberSequenceKeypoint; if _v9758c5 ~= nil then _0xc188[_sdec_59ed({218,225,249,246,241,230,199,241,229,225,241,250,247,241,223,241,237,228,251,253,250,224})] = _v9758c5 end end
do local _vd3d0a1 = UDim; if _vd3d0a1 ~= nil then _0xc188.UDim = _vd3d0a1 end end
do local _v9dfe6c = bit32; if _v9dfe6c ~= nil then _0xc188[_sdec_59ed({246,253,224,167,166})] = _v9dfe6c end end
do local _v2832b8 = Axes; if _v2832b8 ~= nil then _0xc188[_sdec_59ed({213,236,241,231})] = _v2832b8 end end
do local _vcddf60 = Enum; if _vcddf60 ~= nil then _0xc188.Enum = _vcddf60 end end
do local _vffff28 = StarterPlayer; _0xc188[_vffff28 ~= nil and _sdec_59ed({199,224,245,230,224,241,230,196,248,245,237,241,230}) or false] = _vffff28 end
do local _v1fd4cc = RaycastParams; if _v1fd4cc ~= nil then _0xc188[_sdec_59ed({198,245,237,247,245,231,224,196,245,230,245,249,231})] = _v1fd4cc end end
do local _vc93eb6 = rawequal; if _vc93eb6 ~= nil then _0xc188[_sdec_59ed({230,245,227,241,229,225,245,248})] = _vc93eb6 end end
do local _v236909 = spawn; if _v236909 ~= nil then _0xc188.spawn = _v236909 end end
do local _v79014f = tick; if _v79014f ~= nil then _0xc188.tick = _v79014f end end
do local _vcd4078 = Color3; if _vcd4078 ~= nil then _0xc188.Color3 = _vcd4078 end end
do local _v6f78e4 = pcall; if _v6f78e4 ~= nil then _0xc188.pcall = _v6f78e4 end end
do local _v70ea60 = Random; if _v70ea60 ~= nil then _0xc188[_sdec_59ed({198,245,250,240,251,249})] = _v70ea60 end end
do local _v5b5fa3 = io; _0xc188[_v5b5fa3 ~= nil and _sdec_59ed({253,251}) or false] = _v5b5fa3 end
do local _ve64359 = UDim2; _0xc188[_ve64359 ~= nil and _sdec_59ed({193,208,253,249,166}) or false] = _ve64359 end
do local _vdf030d = NumberSequence; if _vdf030d ~= nil then _0xc188[_sdec_59ed({218,225,249,246,241,230,199,241,229,225,241,250,247,241})] = _vdf030d end end
do local _v5f4a5b = utf8; if _v5f4a5b ~= nil then _0xc188[_sdec_59ed({225,224,242,172})] = _v5f4a5b end end
do local _v308df2 = warn; if _v308df2 ~= nil then _0xc188.warn = _v308df2 end end
do local _vd65485 = select; if _vd65485 ~= nil then _0xc188[_sdec_59ed({231,241,248,241,247,224})] = _vd65485 end end
do local _v67a71a = shared; _0xc188[_v67a71a ~= nil and _sdec_59ed({231,252,245,230,241,240}) or false] = _v67a71a end
do local _v4c8c70 = typeof; if _v4c8c70 ~= nil then _0xc188[_sdec_59ed({224,237,228,241,251,242})] = _v4c8c70 end end
do local _v043084 = TweenInfo; if _v043084 ~= nil then _0xc188.TweenInfo = _v043084 end end
do local _v05a045 = InsertService; if _v05a045 ~= nil then _0xc188[_sdec_59ed({221,250,231,241,230,224,199,241,230,226,253,247,241})] = _v05a045 end end
do local _vfd02bb = HttpService; if _vfd02bb ~= nil then _0xc188[_sdec_59ed({220,224,224,228,199,241,230,226,253,247,241})] = _vfd02bb end end
do local _v20937c = unpack; _0xc188[_v20937c ~= nil and _sdec_59ed({225,250,228,245,247,255}) or false] = _v20937c end
do local _vb96b7c = Faces; _0xc188[_vb96b7c ~= nil and _sdec_59ed({210,245,247,241,231}) or false] = _vb96b7c end
do local _v69c2c0 = Instance; if _v69c2c0 ~= nil then _0xc188.Instance = _v69c2c0 end end
do local _vef241b = Region3; if _vef241b ~= nil then _0xc188[_sdec_59ed({198,241,243,253,251,250,167})] = _vef241b end end
do local _v0f26ea = Rect; if _v0f26ea ~= nil then _0xc188.Rect = _v0f26ea end end
do local _v0e8954 = tostring; _0xc188[_v0e8954 ~= nil and _sdec_59ed({224,251,231,224,230,253,250,243}) or false] = _v0e8954 end
do local _vcc8f8e = PhysicalProperties; if _vcc8f8e ~= nil then _0xc188[_sdec_59ed({196,252,237,231,253,247,245,248,196,230,251,228,241,230,224,253,241,231})] = _vcc8f8e end end
do local _v3cda0f = Chat; _0xc188[_v3cda0f ~= nil and _sdec_59ed({215,252,245,224}) or false] = _v3cda0f end
do local _v7a281a = PolicyService; if _v7a281a ~= nil then _0xc188[_sdec_59ed({196,251,248,253,247,237,199,241,230,226,253,247,241})] = _v7a281a end end
do local _v7b9541 = wait; if _v7b9541 ~= nil then _0xc188[_sdec_59ed({227,245,253,224})] = _v7b9541 end end
do local _v2b7b21 = type; if _v2b7b21 ~= nil then _0xc188[_sdec_59ed({224,237,228,241})] = _v2b7b21 end end
do local _vdaccd8 = rawget; if _vdaccd8 ~= nil then _0xc188.rawget = _vdaccd8 end end
do local _v58e0ae = tonumber; if _v58e0ae ~= nil then _0xc188[_sdec_59ed({224,251,250,225,249,246,241,230})] = _v58e0ae end end
do local _v0757a5 = getmetatable; if _v0757a5 ~= nil then _0xc188[_sdec_59ed({243,241,224,249,241,224,245,224,245,246,248,241})] = _v0757a5 end end
do local _v112ece = TextService; if _v112ece ~= nil then _0xc188.TextService = _v112ece end end
do local _vf0e208 = string; _0xc188[_vf0e208 ~= nil and _sdec_59ed({231,224,230,253,250,243}) or false] = _vf0e208 end
do local _v512bbe = debug; if _v512bbe ~= nil then _0xc188[_sdec_59ed({240,241,246,225,243})] = _v512bbe end end
do local _v771930 = DataStoreService; if _v771930 ~= nil then _0xc188.DataStoreService = _v771930 end end
do local _v302280 = ColorSequence; if _v302280 ~= nil then _0xc188[_sdec_59ed({215,251,248,251,230,199,241,229,225,241,250,247,241})] = _v302280 end end
do local _v500888 = Teams; _0xc188[_v500888 ~= nil and _sdec_59ed({192,241,245,249,231}) or false] = _v500888 end
do local _v3d99de = delay; if _v3d99de ~= nil then _0xc188[_sdec_59ed({240,241,248,245,237})] = _v3d99de end end
do local _v577fbe = os; if _v577fbe ~= nil then _0xc188[_sdec_59ed({251,231})] = _v577fbe end end
do local _v723d61 = CollectionService; _0xc188[_v723d61 ~= nil and _sdec_59ed({215,251,248,248,241,247,224,253,251,250,199,241,230,226,253,247,241}) or false] = _v723d61 end
do local _v025492 = workspace; if _v025492 ~= nil then _0xc188[_sdec_59ed({227,251,230,255,231,228,245,247,241})] = _v025492 end end
do local _vaa5d9d = CFrame; if _vaa5d9d ~= nil then _0xc188.CFrame = _vaa5d9d end end
do local _ve8880b = ipairs; _0xc188[_ve8880b ~= nil and _sdec_59ed({253,228,245,253,230,231}) or false] = _ve8880b end
do local _v5c8c7b = task; if _v5c8c7b ~= nil then _0xc188.task = _v5c8c7b end end
do local _v904db3 = collectgarbage; if _v904db3 ~= nil then _0xc188.collectgarbage = _v904db3 end end
do local _v9f11cd = table; _0xc188[_v9f11cd ~= nil and _sdec_59ed({224,245,246,248,241}) or false] = _v9f11cd end
do local _va74eec = rawlen; _0xc188[_va74eec ~= nil and _sdec_59ed({230,245,227,248,241,250}) or false] = _va74eec end
do local _v56336f = Players; if _v56336f ~= nil then _0xc188.Players = _v56336f end end
do local _v6f949a = DateTime; if _v6f949a ~= nil then _0xc188.DateTime = _v6f949a end end
do local _vb2d371 = next; _0xc188[_vb2d371 ~= nil and _sdec_59ed({250,241,236,224}) or false] = _vb2d371 end
do local _vd72666 = BrickColor; if _vd72666 ~= nil then _0xc188.BrickColor = _vd72666 end end
do local _va6407e = time; _0xc188[_va6407e ~= nil and _sdec_59ed({224,253,249,241}) or false] = _va6407e end
do local _v14f8a3 = Ray; if _v14f8a3 ~= nil then _0xc188[_sdec_59ed({198,245,237})] = _v14f8a3 end end
do local _v635612 = ColorSequenceKeypoint; _0xc188[_v635612 ~= nil and _sdec_59ed({215,251,248,251,230,199,241,229,225,241,250,247,241,223,241,237,228,251,253,250,224}) or false] = _v635612 end
do local _vcc89c8 = OverlapParams; if _vcc89c8 ~= nil then _0xc188.OverlapParams = _vcc89c8 end end
_0xc188[false] = nil
local _glob_env_45445c
do local _ok, _0x8496 = pcall(getfenv, 1); if _ok and type(_0x8496) == _sdec_59ed({224,245,246,248,241}) then _glob_env_45445c = _0x8496 else _glob_env_45445c = _G end end
setmetatable(_0xc188, { __index = _glob_env_45445c, __newindex = _glob_env_45445c })

if ((function() return false end)()) then
    local _ = _G["workspace"]
  end
local _0x67e4 = 4096
local _0xb875 = 16383
local _0x0652 = 16384
local _0x3157 = 268435456
local _0xbde8 = 4398046511104
local _0xe3eb = 8192


local _0x6443

local function _0x02ae(_0xc5ad, _0x3732, _0xa98f)
  if _0xa98f >= _0xe3eb then return _0x3732[_0xa98f - _0xe3eb + 1] end
  return _0xc5ad[_0xa98f]
end

local function _0x8d58(_0x49f0, _0x2f0d)
  return function(...)
    local _0xa539 = _0xe507(_sdec_59ed({183}), ...)
    return _0x6443(_0x49f0, _0x2f0d, { ... }, _0xa539)
  end
end

_0x6443 = function(_0x11c8, _0x61bb, _0xfea2, _0x2431)
  local _0x60fb = _0x11c8.insns
  local _0x1cff = _0x60fb[1]
  local _0xa1c4 = _0x11c8.consts
  local _0x4188 = _0x11c8.protos
  local _0xed93 = _0x11c8.maxstack or 64
  local _0xc5ad = {}
  for i = 0, _0xed93 + 16 do _0xc5ad[i] = nil end
  _0x2431 = _0x2431 or 0
  local _0x7d60 = _0x11c8.numparams
  for i = 1, _0x7d60 do _0xc5ad[i - 1] = _0xfea2[i] end
  local _0xb2d8 = nil
  local _0x66fd = 0
  if _0x11c8.isvararg then
    _0xb2d8 = {}
    _0x66fd = _0x2431 - _0x7d60
    if _0x66fd < 0 then _0x66fd = 0 end
    for i = 1, _0x66fd do _0xb2d8[i] = _0xfea2[_0x7d60 + i] end
  end
  local _0xfaa2 = 1
  local _0xedbc = _0x7d60
  local _0x7f87 = _0x60fb[2]
  while _0xfaa2 <= _0x7f87 do
    while _0x60fb[7] < _0xfaa2 do
      local _0x3610 = _0x60fb[7] + 1
      _0x60fb[7] = _0x3610
      local _0x8496 = _0x1cff[_0x3610]
      local _0x3701 = _0x8496 % _0xd8cc
      local _0x1a50 = (_0x8496 - _0x3701) / _0xd8cc
      local _0x2071 = _0x6988(_0x60fb[3], (_0x3610 * _0x60fb[5]) % _0xd8cc)
      local _0x50d4 = _0x6988(_0x60fb[4], (_0x3610 * _0x60fb[6]) % _0xd8cc)
      local _0xaa94 = _0x6988(_0x3701, _0x2071)
      local _0x951d = _0x6988(_0x1a50, _0x50d4)
      _0x1cff[_0x3610] = _0xaa94 + _0x951d * _0xd8cc
      _0x60fb[3] = (_0x6988(_0x60fb[3], _0xaa94) + _0x60fb[4]) % _0xd8cc
      _0x60fb[4] = (_0x6988(_0x60fb[4], _0x951d) + _0x60fb[3]) % _0xd8cc
    end
    local _0x177f = _0x1cff[_0xfaa2]
    local _0xee81 = _0x177f % _0xd8cc
    local _0x7c05 = (_0x177f - _0xee81) / _0xd8cc
    _0xee81 = _0x6988(_0xee81, (_0xfaa2 * _0x656d + _0x917f) % _0xd8cc)
    _0x7c05 = _0x6988(_0x7c05, (_0xfaa2 * _0x0e7a + _0xc410) % _0xd8cc)
    local _0xa3c9 = _0xee81 + _0x7c05 * _0xd8cc
    local _0x4902 = (_0xa3c9 % _0x0652) - _0x67e4
    local _0x8312 = (_0x6655(_0xa3c9 / _0x0652) % _0x0652) - _0x67e4
    local _0xa027 = (_0x6655(_0xa3c9 / _0x3157) % _0x0652) - _0x67e4
    local _0x0dbb = _0x6655(_0xa3c9 / _0xbde8)
    _0xfaa2 = _0xfaa2 + 1
local _0x7e21 = _0x0dbb % 6
if _0x7e21 == 4 then
  if _0x0dbb == 118 then
    do local _hbc1b1 = _0xc5ad; local _h6a1f4 = _0xa1c4
_hbc1b1[_0x4902] = _0x02ae(_hbc1b1, _h6a1f4, _0x8312) / _0x02ae(_hbc1b1, _h6a1f4, _0xa027)
end
  elseif _0x0dbb == 82 then
    local _0x87e5 = (_0x4902 * 46 + 21)
    do local _h81be2 = _0xc5ad; local _hf8f54 = _0x02ae; local _h96027 = _0x4902 + 39
do
      _h81be2[_0x4902] = _h81be2[_0x4902] + _h81be2[_0x4902 + 2]
      local _0x9423 = _h81be2[_0x4902 + 2]
      if (_0x9423 > 0 and _h81be2[_0x4902] <= _h81be2[_0x4902 + 1]) or (_0x9423 <= 0 and _h81be2[_0x4902] >= _h81be2[_0x4902 + 1]) then
        _0xfaa2 = _0xfaa2 + _0x8312
        _h81be2[_0x4902 + 3] = _h81be2[_0x4902]
      end
    end
end
  elseif _0x0dbb == 4 then
    local _0x825b = #_0x1cff
    do local _h08cd5 = _0xc5ad; local _h91b74 = _0x02ae; local _h368f6 = (_0xfaa2 + _0x8312) % 25
_0xc188[_0xa1c4[_0x8312 + 1]] = _h08cd5[_0x4902]
end
  elseif _0x0dbb == 124 then
    do local _h668d4 = _0xa1c4; local _hc80dd = _0x4902 + 12
do local _0xb76a = _0xc5ad[_0x4902]; for i = _0x8312, _0xa027 do _0xb76a = _0xb76a .. tostring(_0xc5ad[i]) end; _0xc5ad[_0x4902] = _0xb76a end
end
  elseif _0x0dbb == 106 then
    do local _h3c293 = _0xc5ad; local _h9ab8b = _0xa1c4; local _hd6d09 = _h3c293[_0x4902]
_h3c293[_0x4902] = _0xc188[_h9ab8b[_0x8312 + 1]]
end
  elseif _0x0dbb == 88 then
    local _0x0568 = #_0x1cff
    do local _h27eca = _0xc5ad
_h27eca[_0x4902] = _h27eca[_0x8312].v
end
  elseif _0x0dbb == 70 then
    do local _h0b920 = _0xc5ad
do
      if _0x8312 == 0 then
        for i = 1, _0x66fd do _h0b920[_0x4902 + i - 1] = _0xb2d8[i] end
        for i = _0x66fd + 1, _0x66fd + 4 do _h0b920[_0x4902 + i - 1] = nil end
        _0xedbc = _0x4902 + _0x66fd
      else
        local _0x51ec = _0x8312 - 1
        for i = 1, _0x51ec do
          if i <= _0x66fd then _h0b920[_0x4902 + i - 1] = _0xb2d8[i] else _h0b920[_0x4902 + i - 1] = nil end
        end
      end
    end
end
  elseif _0x0dbb == 46 then
    local _0x98b0 = (_0x4902 * 44 + 2)
    do local _h87f38 = _0xc5ad; local _h8720a = (_0xfaa2 + _0x8312) % 13
_h87f38[_0x4902] = not _h87f38[_0x8312]
end
  elseif _0x0dbb == 28 then
    local _0xa024 = _0xc5ad[_0x4902]
    do local _h26f82 = _0x02ae
_0xc5ad[_0x4902] = _h26f82(_0xc5ad, _0xa1c4, _0x8312) * _h26f82(_0xc5ad, _0xa1c4, _0xa027)
end
  elseif _0x0dbb == 58 then
    do local _hc1a28 = _0xc5ad; local _ha87ec = _0x02ae
_hc1a28[_0x4902] = _ha87ec(_hc1a28, _0xa1c4, _0x8312) % _ha87ec(_hc1a28, _0xa1c4, _0xa027)
end
  else _0x33fa(_sdec_59ed({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x0dbb) .. _sdec_59ed({180,245,224,180,228,247,180}) .. tostring(_0xfaa2 - 1)) end
elseif _0x7e21 == 3 then
  if _0x0dbb == 81 then
    local _0x237e = (_0x4902 * 21 + 31)
    do local _h9b5b0 = _0x02ae; local _hf8559 = _0x4902 + 19
_0xc5ad[_0x4902] = _0xc5ad[_0x8312][_h9b5b0(_0xc5ad, _0xa1c4, _0xa027)]
end
  elseif _0x0dbb == 63 then
    do local _h37fe2 = _0xc5ad; local _h7ce95 = _0x02ae; local _hbb379 = (_0xfaa2 + _0x8312) % 23
_0xfaa2 = _0xfaa2 + _0x8312; _h37fe2[_0x4902] = _h37fe2[_0x4902 + 1]
end
  elseif _0x0dbb == 69 then
    do local _h7441b = _0xc5ad
_h7441b[_0x4902] = #_0xa1c4
end
  elseif _0x0dbb == 111 then
    do local _h856c7 = _0xc5ad; local _h58988 = _0xa1c4; local _hdde9c = (_0xfaa2 + _0x8312) % 13
do local _0x0562 = not not _h856c7[_0x4902]; if not (_0x0562 == (_0xa027 ~= 0)) then _0xfaa2 = _0xfaa2 + 1 end end
end
  elseif _0x0dbb == 51 then
    local _0x2643 = #_0x1cff
    do local _hed68b = _0xc5ad; local _h86f6c = _0xa1c4
_hed68b[_0x4902] = #_hed68b[_0x8312]
end
  elseif _0x0dbb == 75 then
    local _0x5ef2 = (_0x4902 * 40 + 40)
    do local _hf5a36 = _0xc5ad; local _hca3a3 = _0x02ae; local _hc3323 = (_0xfaa2 + _0x8312) % 21
_hf5a36[_0x4902] = (_hf5a36[_0x8312] == _hf5a36[_0xa027])
end
  elseif _0x0dbb == 57 then
    do local _ha0bf3 = _0xa1c4
_0xc5ad[_0x8312].v = _0xc5ad[_0x4902]
end
  elseif _0x0dbb == 117 then
    do local _h6e163 = _0xc5ad
do
      local _0x49f0 = _0x4188[_0x8312 + 1]
      local _0x2f0d = {}
      for i = 1, #_0x49f0.upvs do
        while _0x60fb[7] < _0xfaa2 do
      local _0x3610 = _0x60fb[7] + 1
      _0x60fb[7] = _0x3610
      local _0x8496 = _0x1cff[_0x3610]
      local _0x3701 = _0x8496 % _0xd8cc
      local _0x1a50 = (_0x8496 - _0x3701) / _0xd8cc
      local _0x2071 = _0x6988(_0x60fb[3], (_0x3610 * _0x60fb[5]) % _0xd8cc)
      local _0x50d4 = _0x6988(_0x60fb[4], (_0x3610 * _0x60fb[6]) % _0xd8cc)
      local _0xaa94 = _0x6988(_0x3701, _0x2071)
      local _0x951d = _0x6988(_0x1a50, _0x50d4)
      _0x1cff[_0x3610] = _0xaa94 + _0x951d * _0xd8cc
      _0x60fb[3] = (_0x6988(_0x60fb[3], _0xaa94) + _0x60fb[4]) % _0xd8cc
      _0x60fb[4] = (_0x6988(_0x60fb[4], _0x951d) + _0x60fb[3]) % _0xd8cc
    end
    local _0x177f = _0x1cff[_0xfaa2]
    local _0xee81 = _0x177f % _0xd8cc
    local _0x7c05 = (_0x177f - _0xee81) / _0xd8cc
    _0xee81 = _0x6988(_0xee81, (_0xfaa2 * _0x656d + _0x917f) % _0xd8cc)
    _0x7c05 = _0x6988(_0x7c05, (_0xfaa2 * _0x0e7a + _0xc410) % _0xd8cc)
    local _0x9fa2 = _0xee81 + _0x7c05 * _0xd8cc
        local _0x348a = (_0x6655(_0x9fa2 / _0x0652) % _0x0652) - _0x67e4
        local _0xfd71 = _0x6655(_0x9fa2 / _0xbde8)
        _0xfaa2 = _0xfaa2 + 1
        if _0xfd71 == 54 then
          _0x2f0d[i] = _h6e163[_0x348a]
        elseif _0xfd71 == 61 then
          _0x2f0d[i] = _0x61bb[_0x348a + 1]
        else
          _0x33fa(_sdec_59ed({246,245,240,180,225,228,226,245,248,225,241,180,246,253,250,240,253,250,243,180,251,228,247,251,240,241,180}) .. tostring(_0xfd71))
        end
      end
      _h6e163[_0x4902] = _0x8d58(_0x49f0, _0x2f0d)
    end
end
  elseif _0x0dbb == 21 then
    local _0x2d06 = _0xc5ad[_0x4902]
    do local _h353d3 = _0xc5ad; local _hdd787 = _0x02ae
_h353d3[_0x4902] = (_h353d3[_0x8312] == _h353d3[_0xa027])
end
  else _0x33fa(_sdec_59ed({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x0dbb) .. _sdec_59ed({180,245,224,180,228,247,180}) .. tostring(_0xfaa2 - 1)) end
elseif _0x7e21 == 2 then
  if _0x0dbb == 104 then
    do local _hc9871 = _0xc5ad; local _hf84d3 = _0xa1c4
_0xfaa2 = _0xfaa2 + _0x8312
end
  elseif _0x0dbb == 38 then
    do local _hea7d6 = _0xc5ad
_hea7d6[_0x4902] = _0xa1c4[_0x8312 + 1]; _0xfaa2 = _0xfaa2 + 1
end
  elseif _0x0dbb == 122 then
    local _0xee84 = _0xc5ad[_0x4902]
    do local _he83ef = _0xc5ad; local _h33ebe = _0x02ae
for i = _0x4902, _0x8312 do _he83ef[i] = nil end
end
  elseif _0x0dbb == 62 then
    do local _h4db75 = _0xc5ad; local _hb3ced = (_0xfaa2 + _0x8312) % 31
_h4db75[_0x4902] = #_0xa1c4
end
  elseif _0x0dbb == 20 then
    local _0x3deb = _0xfaa2 + 72; _0x3deb = _0x3deb - _0x3deb
    do local _h86d6a = _0xc5ad; local _hb6314 = _0x02ae; local _h00b34 = _h86d6a[_0x4902]
do
      local _0xa9c9 = _h86d6a[_0x4902]
      local _0xa539 = (_0x8312 == 0) and (_0xedbc - _0x4902 - 1) or _0x8312
      local offset = (_0xa027 - 1) * 50
      for i = 1, _0xa539 do _0xa9c9[offset + i] = _h86d6a[_0x4902 + i] end
    end
end
  elseif _0x0dbb == 56 then
    do local _h1ef44 = _0xa1c4
do local _0x8eef = (_0x02ae(_0xc5ad, _h1ef44, _0x8312) < _0x02ae(_0xc5ad, _h1ef44, _0xa027)); if not (_0x8eef == (_0x4902 ~= 0)) then _0xfaa2 = _0xfaa2 + 1 end end
end
  elseif _0x0dbb == 8 then
    do local _h09d7a = _0x02ae
do local _0xb76a = _0xc5ad[_0x8312]; for i = _0x8312 + 1, _0xa027 do _0xb76a = _0xb76a .. _0xc5ad[i] end; _0xc5ad[_0x4902] = _0xb76a end
end
  elseif _0x0dbb == 26 then
    local _0xc41b = _0xfaa2 + 91; _0xc41b = _0xc41b - _0xc41b
    do local _h8bbd4 = _0xc5ad; local _h7dfc6 = _0xa1c4; local _hea5a5 = _h8bbd4[_0x4902]
do
      local _0xee26 = _h8bbd4[_0x4902]
      local _0x2f5c
      if _0x8312 == 0 then _0x2f5c = _0xedbc - _0x4902 - 1 else _0x2f5c = _0x8312 - 1 end
      local _0x44b7 = {}
      for i = 1, _0x2f5c do _0x44b7[i] = _h8bbd4[_0x4902 + i] end
      return _0xee26(_0x264c(_0x44b7, 1, _0x2f5c))
    end
end
  elseif _0x0dbb == 2 then
    local _0x8919 = (_0x4902 * 35 + 3)
    do local _hfba54 = _0xc5ad; local _h749b3 = _0x02ae
_hfba54[_0x4902] = _0xa1c4[_0x8312 + 1]
end
  elseif _0x0dbb == 86 then
    local _0xf3b5 = _0xc5ad[_0x4902]
    do local _hdf3d4 = _0x02ae; local _h19fb0 = _0x4902 + 11
do local _0x354a = _0xc5ad[_0x8312]; _0xc5ad[_0x4902 + 1] = _0x354a; _0xc5ad[_0x4902] = _0x354a[_hdf3d4(_0xc5ad, _0xa1c4, _0xa027)] end
end
  elseif _0x0dbb == 92 then
    local _0xeaff = #_0x1cff
    do local _he6d24 = _0xc5ad; local _h3a1c9 = _0xa1c4
do local _0x2368 = (_0x02ae(_he6d24, _h3a1c9, _0x8312) == _0x02ae(_he6d24, _h3a1c9, _0xa027)); if not (_0x2368 == (_0x4902 ~= 0)) then _0xfaa2 = _0xfaa2 + 1 end end
end
  elseif _0x0dbb == 14 then
    do local _he0bce = _0xa1c4
_0xc5ad[_0x4902] = { v = _0xc5ad[_0x4902] }
end
  elseif _0x0dbb == 50 then
    local _0x22da = #_0x1cff
    do local _hdc1a7 = _0xc5ad; local _hdebaf = _0xa1c4; local _h2db14 = _0x02ae
_hdc1a7[_0x4902] = -_hdc1a7[_0x8312]
end
  else _0x33fa(_sdec_59ed({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x0dbb) .. _sdec_59ed({180,245,224,180,228,247,180}) .. tostring(_0xfaa2 - 1)) end
elseif _0x7e21 == 5 then
  if _0x0dbb == 41 then
    do local _h80bd8 = _0xc5ad
do
      if _0x8312 == 0 then
        local _0x1668 = {}
        local _0xa539 = _0xedbc - _0x4902
        for i = 0, _0xa539 - 1 do _0x1668[i + 1] = _h80bd8[_0x4902 + i] end
        return _0x264c(_0x1668, 1, _0xa539)
      elseif _0x8312 == 1 then
        return
      else
        local _0xa539 = _0x8312 - 1
        local _0x1668 = {}
        for i = 0, _0xa539 - 1 do _0x1668[i + 1] = _h80bd8[_0x4902 + i] end
        return _0x264c(_0x1668, 1, _0xa539)
      end
    end
end
  elseif _0x0dbb == 89 then
    local _0xe2c4 = _0xc5ad[_0x4902]
    do local _h9f6b8 = _0xc5ad; local _hec2a4 = _0xa1c4
_h9f6b8[_0x4902] = _0x02ae(_h9f6b8, _hec2a4, _0x8312) + _0x02ae(_h9f6b8, _hec2a4, _0xa027)
end
  elseif _0x0dbb == 11 then
    do local _ha74ff = _0xc5ad; local _h063c9 = _0xa1c4
-- no-_0x0dbb under our _0xbe7e model
end
  elseif _0x0dbb == 53 then
    do local _h71ce6 = _0xc5ad; local _hc3b58 = _0x02ae; local _hd2b2c = _h71ce6[_0x4902]
_h71ce6[_0x4902] = _0xa1c4[_0x8312 + 1]; _0xfaa2 = _0xfaa2 + 1
end
  elseif _0x0dbb == 5 then
    do local _ha8bf3 = _0x02ae; local _h2ea55 = _0xc5ad[_0x4902]
_0xc5ad[_0x4902] = _0xc5ad[_0x4902] - _0xc5ad[_0x4902 + 2]; _0xfaa2 = _0xfaa2 + _0x8312
end
  else _0x33fa(_sdec_59ed({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x0dbb) .. _sdec_59ed({180,245,224,180,228,247,180}) .. tostring(_0xfaa2 - 1)) end
elseif _0x7e21 == 0 then
  if _0x0dbb == 96 then
    do local _h2cbf6 = _0xc5ad
_h2cbf6[_0x4902] = not _h2cbf6[_0x8312]
end
  elseif _0x0dbb == 60 then
    _0xc5ad[_0x4902] = (_0x8312 ~= 0); if _0xa027 ~= 0 then _0xfaa2 = _0xfaa2 + 1 end
  elseif _0x0dbb == 54 then
    do local _hf58f5 = _0xa1c4
_0xc5ad[_0x4902] = _0xc5ad[_0x8312]
end
  elseif _0x0dbb == 42 then
    do local _hc1dc9 = _0xc5ad
do local _0xa9c9 = _hc1dc9[_0x8312]; _hc1dc9[_0x4902] = _0xa9c9 and _0xa9c9[_0x02ae(_hc1dc9, _0xa1c4, _0xa027)] end
end
  elseif _0x0dbb == 114 then
    local _0x0388 = _0xfaa2 + 73; _0x0388 = _0x0388 - _0x0388
    do local _hd4c75 = _0xc5ad
_hd4c75[_0x4902] = {}
end
  elseif _0x0dbb == 78 then
    local _0x0d65 = #_0x1cff
    do local _h4696f = _0xc5ad; local _h0095e = _0xa1c4
do local _0x5b61 = (_0x02ae(_h4696f, _h0095e, _0x8312) <= _0x02ae(_h4696f, _h0095e, _0xa027)); if not (_0x5b61 == (_0x4902 ~= 0)) then _0xfaa2 = _0xfaa2 + 1 end end
end
  elseif _0x0dbb == 126 then
    do local _h2be44 = _0xc5ad
_h2be44[_0x4902] = not _h2be44[_0x8312]
end
  elseif _0x0dbb == 6 then
    do local _h51ca1 = _0xc5ad; local _h7df22 = _0xa1c4; local _hae828 = _h51ca1[_0x4902]
do
      local _0xee26 = _h51ca1[_0x4902]
      local _0xb76a = _h51ca1[_0x4902 + 1]
      local _0xba4d = _h51ca1[_0x4902 + 2]
      local _0x8b21 = { _0xee26(_0xb76a, _0xba4d) }
      local nres = _0xa027
      for i = 1, nres do _h51ca1[_0x4902 + 2 + i] = _0x8b21[i] end
      if _h51ca1[_0x4902 + 3] ~= nil then
        _h51ca1[_0x4902 + 2] = _h51ca1[_0x4902 + 3]
      else
        _0xfaa2 = _0xfaa2 + 1
      end
    end
end
  elseif _0x0dbb == 84 then
    do local _h439f3 = _0xc5ad; local _hb033a = _0xa1c4; local _h966b8 = (_0xfaa2 + _0x8312) % 27
_h439f3[_0x4902] = _0x02ae(_h439f3, _hb033a, _0x8312) + _0x02ae(_h439f3, _hb033a, _0xa027)
end
  else _0x33fa(_sdec_59ed({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x0dbb) .. _sdec_59ed({180,245,224,180,228,247,180}) .. tostring(_0xfaa2 - 1)) end
elseif _0x7e21 == 1 then
  if _0x0dbb == 61 then
    do local _hd7600 = _0xc5ad; local _hab093 = _0xa1c4
_hd7600[_0x4902] = _0x61bb[_0x8312 + 1].v
end
  elseif _0x0dbb == 49 then
    do local _h80437 = _0xa1c4; local _h75809 = _0x02ae
_0xc5ad[_0x4902] = _0xc5ad[_0x8312] - _h80437[_0xa027 + 1]
end
  elseif _0x0dbb == 37 then
    do local _hb5c4e = _0xc5ad
do local _0xa9c9 = _hb5c4e[_0x8312]; _hb5c4e[_0x4902] = _0xa9c9 and _0xa9c9[_0x02ae(_hb5c4e, _0xa1c4, _0xa027)] end
end
  elseif _0x0dbb == 55 then
    do local _ha934f = _0xc5ad; local _h6f83a = _0xa1c4; local _h2692c = (_0xfaa2 + _0x8312) % 33
_ha934f[_0x4902] = _0x02ae(_ha934f, _h6f83a, _0x8312) - _0x02ae(_ha934f, _h6f83a, _0xa027)
end
  elseif _0x0dbb == 7 then
    local _0xb71e = #_0x1cff
    do local _h32b80 = _0xc5ad; local _h108b2 = _0xa1c4; local _he468f = _0x02ae
_h32b80[_0x4902] = _he468f(_h32b80, _h108b2, _0x8312) + _he468f(_h32b80, _h108b2, _0xa027)
end
  elseif _0x0dbb == 79 then
    do local _he9c93 = _0xc5ad; local _hde819 = _0xa1c4; local _hf7993 = _0x02ae
_he9c93[_0x4902] = #_hde819
end
  elseif _0x0dbb == 1 then
    do local _h10c4c = _0xc5ad
do
      local _0xee26 = _h10c4c[_0x4902]
      local _0x2f5c
      if _0x8312 == 0 then _0x2f5c = _0xedbc - _0x4902 - 1 else _0x2f5c = _0x8312 - 1 end
      local _0x44b7 = {}
      for i = 1, _0x2f5c do _0x44b7[i] = _h10c4c[_0x4902 + i] end
      local _0x8b21 = { _0xee26(_0x264c(_0x44b7, 1, _0x2f5c)) }
      local _0x3e9f = #_0x8b21
      if _0xa027 == 0 then
        for i = 1, _0x3e9f do _h10c4c[_0x4902 + i - 1] = _0x8b21[i] end
        for i = _0x3e9f + 1, _0x3e9f + 4 do _h10c4c[_0x4902 + i - 1] = nil end
        _0xedbc = _0x4902 + _0x3e9f
      elseif _0xa027 == 1 then
        -- drop all
      else
        local _0x51ec = _0xa027 - 1
        for i = 1, _0x51ec do _h10c4c[_0x4902 + i - 1] = _0x8b21[i] end
        for i = _0x3e9f + 1, _0x51ec do _h10c4c[_0x4902 + i - 1] = nil end
      end
    end
end
  elseif _0x0dbb == 97 then
    do local _hb1f1c = _0xc5ad; local _h09321 = _0xa1c4; local _h8fb71 = _0x02ae; local _hed74c = _hb1f1c[_0x4902]
_hb1f1c[_0x4902][_h8fb71(_hb1f1c, _h09321, _0x8312)] = _h8fb71(_hb1f1c, _h09321, _0xa027)
end
  elseif _0x0dbb == 91 then
    _0x61bb[_0x8312 + 1].v = _0xc5ad[_0x4902]
  elseif _0x0dbb == 25 then
    do local _h9fce4 = _0xc5ad
_h9fce4[_0x4902] = _0x02ae(_h9fce4, _0xa1c4, _0x8312) ^ _0x02ae(_h9fce4, _0xa1c4, _0xa027)
end
  else _0x33fa(_sdec_59ed({246,245,240,180,251,228,247,251,240,241,180}) .. tostring(_0x0dbb) .. _sdec_59ed({180,245,224,180,228,247,180}) .. tostring(_0xfaa2 - 1)) end
else _0x33fa(_sdec_59ed({246,245,240,180,246,225,247,255,241,224,180}) .. tostring(_0x7e21)) end
  end
end

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = math.pi
  end

local _0x19f3 = 
{
  numparams = 0,
  isvararg = true,
  maxstack = 17,
  insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({205,167,55,178,65,146,190,170,146,249,235,49,153,58,11,204,205,250,18,149,103,233,216,136,252,230,174,74,147,33,88,206,185,233,85,182,35,138,217,232,255,222,140,67,214,30,69,157,214,217,51,145,75,172,176,167,160,255,183,100,165,23,2,233,195,253,33,169,42,151,222,138,182,236,244,124,167,111,114,247,177,179,31,136,69,129,220,145,159,191,140,103,184,26,86,197,179,246,43,133,60,145,230,157,181,190,187,58,130,125,15,252,241,221,33,184,59,130,238,143,157,194,187,68,214,61,22,244,177,218,90,148,54,139,251,134,242,236,170,116,142,96,80,225,252,186,87,197,35,242,210,182,150,248,246,57,199,101,105,250,253,249,74,167,74,180,177,141,151,231,188,121,167,32,78,138,160,165,14,133,91,252,172,184,252,232,250,86,145,110,22,224,225,235,29,152,74,175,163,176,174,209,133,40,144,113,113,157,246,192,12,172,47,235,206,156,179,183,153,69,196,34,17,218,238,177,37,145,83,185,235,189,243,181,168,53,159,27,88,240,243,246,17,165,69,171,207,170,155,168,166,88,136,4,2,255,207,236,16,216,125,177,196,163,151,200,247,80,176,103,111,139,221,164,9,173,73,254,255,178,239,188,237,84,210,32,110,249,243,231,61,200,58,188,181,137,137,241,224,93,169,99,102,135,240,249,62,183,58,164,174,152,159,181,172,91,221,99,112,133,246,169,82,178,64,165,160,249,232,211,232,84,223,31,5,146,245,242,94,203,33,166,197,152,165,200,183,75,179,11,95,129,244,219,86,217,46,172,192,185,230,230,146,85,191,113,100,213,252,251,47,158,64,135,176,239,129,177,140,82,129,21,124,157,255,212,0,214,108,138,210,251,148,195,189,72,187,109,9,147,166,167,94,142,101,165,228,232,224,212,149,53,194,53,89,151,246,190,5,155,85,230,186,148,231,228,252,78,185,99,96,214,249,221,37,136,72,154,188,165,225,194,139,32,151,49,94,210,177,191,28,185,120,246,231,239,179,208,235,61,204,15,19,141,198,214,1,164,60,161,184,249,156,162,129,106,151,52,101,143,206,235,23,199,91,184,180,155,158,233,233,81,161,105,92,244,173,252,62,155,110,181,160,249,142,164,167,101,200,1,95,243,194,207,38,147,112,245,186,185,187,237,155,117,172,1,80,159,251,237,30,131,55,148,217,172,250,170,128,57,154,62,9,228,207,245,9,187,46,232,224,255,174,246,189,87,142,62,120,132,238,177,88,163,127,230,180,161,228,162,174,35,178,114,7,215,251,252,61,130,71,182,189,155,237,167,157,108,152,12,20,139,235,160,34,146,92,184,208,175,139,229,154,98,214,29,120,229,221,220,47,200,56,164,238,167,128,223,165,92,142,34,96,229,208,248,26,192,115,156,255,130,144,249,149,105,156,3,87,138,194,223,40,162,50,254,237,131,180,237,166,76,154,107,88,143,185,216,10,206,109,191,184,179,236,247,171,78,136,38,82,156,244,172,6,198,38,131,245,139,163,169,144,44,167,1,25,220,214,210,94,130,35,185,182,249,134,164,231,121,214,51,116,155,160,194,25,170,115,251,252,243,140,209,252,34,208,25,7,216,227,212,38,156,100,230,187,167,184,212,250,98,166,102,115,133,161,193,55,150,105,157,230,128,241,165,246,34,223,5,93,253,198,201,91,204,114,230,200,175,253,169,237,114,217,32,123,210,213,230,85,149,38,251,227,134,170,176,227,112,178,99,29,202,227,192,36,179,100,255,182,172,244,231,189,87,144,17,94,249,218,200,18,166,127,245,205,191,240,251,250,126,201,104,86,135,181,218,77,155,106,245,182,189,161,199,171,63,133,113,96,223,252,247,7,149,109,132,245,148,172,199,153,79,183,49,117,192,228,191,51,153,83,165,210,173,237,191,177,49,221,38,119,135,213,214,46,141,112,160,230,188,171,237,174,45,135,48,66,254,224,221,92,156,119,160,181,248,165,197,157,58,142,45,9,243,219,160,14,176,73,164,244,251,176,211,180,46,143,8,121,156,166,190,94,132,66,144,174,167,187,211,135,93,131,28,92,245,207,189,10,204,82,143,239,245,190,184,134,113,221,62,110,255,224,218,63,144,51,187,240,130,155,194,239,32,132,61,66,143,208,182,9,203,123,235,216,255,170,248,235,119,203,104,127,238,203,219,31,129,104,144,245,227,233,204,244,57,133,50,1,239,249,231,46,179,110,132,215,245,129,185,176,82,131,2,1,249,163,206,90,141,73,146,236,139,158,253,134,78,145,34,12,135,178,216,1,143,126,157,239,171,159,208,174,109,156,24,86,241,199,186,18,216,79,228,252,191,234,176,155,72,144,54,114,134,199,161,42,169,85,138,250,251,174,234,161,114,161,96,114,159,173,206,51,178,46,131,194,234,229,233,143,72,150,40,21,207,219,219,82,162,118,177,200,231,135,190,156,52,197,112,110,214,176,163,81,150,97,254,197,137,148,243,144,111,204,47,3,210,209,213,65,195,81,233,237,190,157,200,139,54,180,30,101,194,205,191,46,213,47,166,191,144,150,164,129,56,152,96,75,133,234,190,90,156,118,251,229,137,255,215,242,108,156,55,105,206,254,226,16,154,104,165,222,132,189,186,172,95,190,118,78,194,249,240,63,128,89,230,192,153,143,195,190,115,173,106,98,134,172,193,63,176,74,249,187,143,224,170,228,42,217,104,12,245,204,247,61,218,38,247,203,143,177,180,135,94,187,96,97,138,244,201,92,186,58,170,233,130,255,197,152,78,173,98,1,223,239,161,24,216,95,188,249,232,145,189,185,85,214,111,73,209,185,215,31,139,38,228,177,239,186,233,175,103,145,58,19,134,178,182,41,165,124,140,223,165,147,172,135,47,216,105,83,240,255,191,72,157,111,135,255,245,162,162,148,57,181,47,72,221,245,220,24,198,33,233,199,241,236,167,184,70,179,21,83,249,189,200,43,198,81,135,244,164,145,188,148,120,200,9,24,248,212,221,86,219,121,245,226,254,141,244,176,42,208,96,81,208,198,201,68,196,68,182,254,232,180,250,176,123,192,18,70,224,220,249,66,145,46,180,197,173,137,237,224,121,177,13,0,143,160,214,20,143,67,133,226,181,187,182,177,73,160,43,97,230,248,251,18,165,122,227,230,144,146,217,140,39,152,13,7,226,206,215,12,215,63,182,220,128,248,165,134,74,164,47,124,224,197,219,46,141,90,156,248,188,168,168,157,107,161,122,17,219,249,227,57,180,45,253,252,169,135,250,180,87,208,114,1,214,243,245,30,146,113,239,195,227,233,248,145,82,167,104,99,131,204,230,64,206,67,185,215,158,250,224,154,111,163,104,0,240,192,219,31,183,110,230,186,157,185,215,140,66,214,3,64,206,182,199,43,165,51,150,208,252,235,208})),1224)),178), 513741965, 3774895, 7244236, 14876728, 23378877, 6352087),
  consts = {_sdec_59ed({252,224,224,228,231,174,187,187,240,253,231,247,251,230,240,186,247,251,249,187,245,228,253,187,227,241,246,252,251,251,255,231,187,165,160,162,161,165,166,165,173,162,173,163,166,163,173,173,162,164,160,163,187,217,226,199,251,162,245,222,226,163,221,245,240,209,253,173,210,249,225,253,226,214,236,210,204,222,242,166,160,245,222,218,165,173,251,251,172,245,251,228,197,227,224,173,204,209,251,220,253,252,248,166,241,238,173,194,240,203,227,241,249,219,165,194,223,249,194,245,254}),_sdec_59ed({243,245,249,241}),_sdec_59ed({211,241,224,199,241,230,226,253,247,241}),_sdec_59ed({196,248,245,237,241,230,231}),_sdec_59ed({216,251,247,245,248,196,248,245,237,241,230}),_sdec_59ed({216,253,243,252,224,253,250,243}),_sdec_59ed({248,251,245,240,231,224,230,253,250,243}),_sdec_59ed({220,224,224,228,211,241,224}),_sdec_59ed({252,224,224,228,231,174,187,187,230,245,227,186,243,253,224,252,225,246,225,231,241,230,247,251,250,224,241,250,224,186,247,251,249,187,218,241,236,251,251,166,187,217,245,253,250,220,225,246,187,230,241,242,231,187,252,241,245,240,231,187,249,245,253,250,187,199}),_sdec_59ed({224,245,231,255}),_sdec_59ed({231,228,245,227,250}),_sdec_59ed({217,245,255,241,195,253,250,240,251,227}),_sdec_59ed({220,225,246}),_sdec_59ed({192,253,224,248,241}),_sdec_59ed({194,241,230,253,242,253,241,240,180,198,253,226,245,248,231,180,213,253,249,246,251,224}),_sdec_59ed({213,250,253,249,245,224,253,251,250}),_sdec_59ed({196,230,241,249,253,225,249,180,209,236,228,241,230,253,241,250,247,241}),_sdec_59ed({223,241,237}),_sdec_59ed({223,241,237,199,237,231,224,241,249}),true,_sdec_59ed({194,241,230,253,242,253,241,240,180,199,247,230,253,228,224}),_sdec_59ed({208,241,231,247,230,253,228,224,253,251,250}),_sdec_59ed({199,193,196,209,198,180,209,213,199,205,180,223,209,205,180,199,205,199,192,209,217,181}),_sdec_59ed({223,241,237,216,253,250,255}),_sdec_59ed({252,224,224,228,231,174,187,187,240,253,231,247,251,230,240,186,243,243,187,204,198,225,220,252,252,240,217,223}),_sdec_59ed({223,241,237,231}),_sdec_59ed({193,228,240,245,224,241,240,215,251,250,224,230,251,248,220,225,246}),_sdec_59ed({218,251,224,253,242,253}),_sdec_59ed({218,251,224,253,242,253,247,245,224,253,251,250,231}),_sdec_59ed({215,251,230,230,241,247,224,223,241,237}),_sdec_59ed({213,247,247,241,231,231,180,211,230,245,250,224,241,240}),_sdec_59ed({221,250,247,251,230,230,241,247,224,255,241,237}),_sdec_59ed({213,247,247,241,231,231,180,208,241,250,253,241,240}),_sdec_59ed({215,251,228,237,223,241,237,216,253,250,255}),_sdec_59ed({223,241,237,180,216,253,250,255,180,215,251,228,253,241,240}),_sdec_59ed({217,253,250,253,249,253,238,241,214,225,224,224,251,250}),_sdec_59ed({221,249,245,243,241}),_sdec_59ed({230,246,236,245,231,231,241,224,253,240,174,187,187,165,164,167,163,163,161,161,163,160,166,162,163,163,161,164}),_sdec_59ed({199,253,238,241}),55,_sdec_59ed({215,251,248,251,230}),_sdec_59ed({215,251,248,251,230,167}),_sdec_59ed({242,230,251,249,198,211,214}),15,_sdec_59ed({215,251,230,250,241,230}),_sdec_59ed({199,224,230,251,255,241}),_sdec_59ed({199,224,230,251,255,241,215,251,248,251,230}),0,255,200,_sdec_59ed({217,245,255,241,218,251,224,253,242,253}),_sdec_59ed({215,251,250,224,230,251,248,180,196,230,241,249,253,225,249}),_sdec_59ed({192,241,236,224}),_sdec_59ed({216,251,245,240,241,240,180,199,225,247,247,241,231,231,242,225,248,248,237}),_sdec_59ed({192,253,249,241}),5,_sdec_59ed({217,245,255,241,192,245,246}),_sdec_59ed({218,245,249,241}),_sdec_59ed({208,245,231,252,246,251,245,230,240}),_sdec_59ed({213,240,240,196,245,230,245,243,230,245,228,252}),_sdec_59ed({215,248,241,245,250,180,930,162,180,219,228,224,253,249,253,238,241,240,180,930,162,180,210,225,248,248,237,180,199,225,228,228,251,230,224,241,240,158,209,250,254,251,237,180,224,252,241,180,246,241,231,224,180,241,236,228,241,230,253,241,250,247,241,186}),_sdec_59ed({210,241,245,224,225,230,241,231}),_sdec_59ed({213,240,240,214,225,224,224,251,250}),_sdec_59ed({701,161,163,674,161,164,542,167,173,180,210,248,237,180,217,251,240,241}),_sdec_59ed({199,249,251,251,224,252,180,242,248,237,253,250,243,180,231,237,231,224,241,249}),_sdec_59ed({215,245,248,248,246,245,247,255}),_sdec_59ed({701,161,163,686,164,166,180,192,251,243,243,248,241,180,218,251,247,248,253,228}),_sdec_59ed({195,245,248,255,180,224,252,230,251,225,243,252,180,227,245,248,248,231}),_sdec_59ed({701,161,163,672,172,165,180,210,225,248,248,214,230,253,243,252,224}),_sdec_59ed({217,245,236,253,249,225,249,180,226,253,231,253,246,253,248,253,224,237}),_sdec_59ed({240,161,166,542,167,173,180,210,230,241,241,238,241,180,196,248,245,237,241,230,231}),_sdec_59ed({210,230,241,241,238,241,180,241,226,241,230,237,251,250,241,180,188,226,253,231,225,245,248,189}),_sdec_59ed({840,173,180,199,228,241,241,240,180,214,251,251,231,224}),_sdec_59ed({221,250,247,230,241,245,231,241,180,249,251,226,241,249,241,250,224,180,231,228,241,241,240}),_sdec_59ed({701,161,163,673,173,162,180,199,224,245,224,225,231,180,218,251,224,253,242,253,247,245,224,253,251,250,231}),_sdec_59ed({216,251,251,228,180,250,251,224,253,242,253,247,245,224,253,251,250,231}),_sdec_59ed({198,253,226,245,248,231}),_sdec_59ed({198,253,226,245,248,231,180,213,253,249,246,251,224}),_sdec_59ed({217,245,240,241,180,214,237,180,215,251,250,224,230,251,248,181})},
  protos = {
    {
      numparams = 0,
      isvararg = false,
      maxstack = 2,
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({172,237,27,210,93,143,243,137,178,190,175,121,217,38,97,204,212,174,47,204,84,131,229,245,134,226,145,39,208,17,126,242,234,196,48,158,33,136,219,157,190,202,246,117,171,27,15,199,253,252,16,216,82,244})),43)),6), 1602722414, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_59ed({224,245,231,255}),_sdec_59ed({231,228,245,227,250})},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 2,
          insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({229,246,79,128,91,143,243,129,135,203,231,33,161,30,24,197,211,194,32,135,115,168,228,232,233,203,134,32,190,8,22,207,255,174,47,182,77,140,239,143,185,255,145,126,180})),36)),5), 1487735619, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_59ed({228,247,245,248,248})},
          protos = {
            {
              numparams = 0,
              isvararg = false,
              maxstack = 17,
              insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({184,193,3,193,33,241,188,247,161,230,235,81,213,104,15,249,201,254,6,152,40,171,226,134,235,217,225,41,136,107,11,240,219,218,79,136,126,241,239,128,173,241,250,125,190,103,70,129,181,170,67,222,106,225,203,243,139,255,226,47,202,28,24,139,193,249,7,207,64,225,219,250,243,185,138,125,164,12,17,225,179,168,47,162,40,255,160,254,242,222,227,52,148,101,73,236,232,207,14,144,73,243,196,137,225,179,230,95,203,25,92,232,215,189,44,145,99,131,251,174,168,248,185,32,221,122,126,212,255,239,66,164,50,138,194,137,129,193,171,119,181,20,86,146,178,170,16,196,53,142,185,135,233,249,176,41,137,13,84,232,220,235,4,157,35,149,186,132,143,186,187,58,134,37,6,232,227,171,74,169,113,155,253,168,187,216,157,78,141,57,17,141,219,213,14,137,50,234,182,237,244,249,244,33,178,51,19,213,189,195,49,186,51,185,171,140,146,172,129,43,139,43,73,224,182,245,84,164,35,174,183,144,151,162,230,116,203,48,14,133,205,177,39,143,124,235,203,253,135,189,159,105,166,51,69,233,190,179,63,158,88,181,169,254,135,202,166,120,220,63,127,196,242,201,79,197,53,184,180,239,161,197,146,93,183,23,95,242,248,188,77,166,63,138,222,162,187,203,251,45,215,126,66,204,206,216,41,144,76,178,197,239,147,219,249,124,182,108,22,221,200,225,91,181,48,239,249,142,143,164,170,46,163,96,99,205,178,225,84,215,89,170,172,170,176,197,224,119,222,10,19,231,161,248,95,192,58,164,181,132,149,190,238,76,145,22,8,248,202,223,91,151,64,251,204,163,175,232,228,102,161,27,8,207,235,207,0,159,125,176,217,186,234,240,178,113,130,50,66,225,221,230,21,163,74,166,174,179,163,168,175,108,166,34,88,212,173,189,34,176,48,187,254,234,182,249,191,107,173,4,69,240,178,200,88,169,98,250,235,178,177,209,237,42,159,113,86,136,255,229,0,183,48,234,200,245,185,184,233,107,216,46,126,128,183,255,92,131,52,150,222,180,152,250,134,105,155,96,127,221,255,178,6,159,68,131,185,139,172,202,251,101,176,14,11,222,234,201,49,160,78,139,248,239,129,209,176,113,171,25,125,238,226,230,64,196,99,130,255,164,159,189,146,100,203,1,22,250,224,222,60,132,67,228,229,173,168,169,180,87,136,2,122,194,210,254,27,188,122,168,163,170,244,188,189,82,215,45,103,132,184,251,23,204,127,173,227,172,253,249,187,36,181,127,100,225,209,223,20,200,97,225,241,145,233,162,154,34,222,42,12,208,192,178,91,191,110,240,231,243,191,198,174,127,178,62,26,142,218,226,64,181,58,232,185,128,179,183,172,116,160,110,110,228,160,250,36,210,123,149,224,191,187,240,224,72,172,44,25,252,198,217,57,130,108,167,214,160,152,196,226,123,187,99,87,219,213,216,9,154,47,132,227,151,140,171,134,114,177,105,73,242,172,162,45,163,102,180,173,143,243,194,245,78,199,26,13,134,161,248,0,207,66,232,161,253,157,238,227,78,169,2,70,156,199,179,89,205,76,139,251,167,128,251,135,32,170,50,113,155,182,210,86,161,118,134,240,165,147,172,232,72,156,49,6,227,192,166,91,130,33,253,169,163,149,196,190,110,184,62,103,240,172,238,49,193,100,164,244,240,154,183,155,72,131,16,82,195,196,192,48,161,99,233,227,173,128,216,136,119,220,53,66,141,238,241,62,222,52,230,171,186,153,194,234,55,153,118,87,147,187,160,88,204,57,246,183,166,144,245,165,72,163,100,8,133,241,231,46,189,60,235,252,143,147,167,245,113,139,19,100,246,239,160,54,128,60,179,210,180,228,164,239,61,211,110,115,210,197,197,41,197,94,244,207,241,167,243,150,101,155,9,99,193,197,167,67,160,53,169,184,131,236,216,224,52,145,5,76,231,199,174,14,215,51,184,188,248,128,223,182,124,178,106,9,196,213,245,72,182,95,178,187,230,237,205,159,39,147,62,24,142,237,160,48,214,58,244,179,249,234,185,154,33,170,2,5,207,245,194,58,178,112,151,208,129,186,248,254,120,165,31,14,155,164,244,21,202,45,168,233,228,155,188,138,85,150,118,20,253,232,174,37,151,97,251,216,130,250,171,147,81,137,40,123,224,180,160,18,147,104,161,185})),786)),114), 1693743184, 3774895, 7244236, 14876728, 23378877, 6352087),
              consts = {_sdec_59ed({243,245,249,241}),_sdec_59ed({211,241,224,199,241,230,226,253,247,241}),_sdec_59ed({196,248,245,237,241,230,231}),_sdec_59ed({220,224,224,228,199,241,230,226,253,247,241}),_sdec_59ed({216,251,247,245,248,196,248,245,237,241,230}),_sdec_59ed({193,250,255,250,251,227,250}),_sdec_59ed({228,247,245,248,248}),_sdec_59ed({253,240,241,250,224,253,242,237,241,236,241,247,225,224,251,230}),_sdec_59ed({241,249,246,241,240,231}),_sdec_59ed({224,253,224,248,241}),_sdec_59ed({701,161,163,685,162,164,180,218,241,227,180,209,236,241,247,225,224,253,251,250}),_sdec_59ed({247,251,248,251,230}),65480,_sdec_59ed({242,253,241,248,240,231}),_sdec_59ed({250,245,249,241}),_sdec_59ed({193,231,241,230}),_sdec_59ed({226,245,248,225,241}),_sdec_59ed({218,245,249,241}),_sdec_59ed({180,188}),_sdec_59ed({193,231,241,230,221,240}),_sdec_59ed({189}),_sdec_59ed({253,250,248,253,250,241}),true,_sdec_59ed({221,196,180,213,240,240,230,241,231,231}),_sdec_59ed({209,236,241,247,225,224,251,230}),_sdec_59ed({196,248,245,247,241,180,221,208}),_sdec_59ed({224,251,231,224,230,253,250,243}),_sdec_59ed({196,248,245,247,241,221,240}),_sdec_59ed({242,251,251,224,241,230}),_sdec_59ed({224,241,236,224}),_sdec_59ed({215,251,250,224,230,251,248,180,196,230,241,249,253,225,249,180,216,251,243,243,253,250,243,180,930,162,180}),_sdec_59ed({251,231}),_sdec_59ed({240,245,224,241}),_sdec_59ed({177,204}),_sdec_59ed({231,237,250}),_sdec_59ed({230,241,229,225,241,231,224}),_sdec_59ed({252,224,224,228}),_sdec_59ed({252,224,224,228,203,230,241,229,225,241,231,224}),_sdec_59ed({210,248,225,236,225,231}),_sdec_59ed({193,230,248}),_sdec_59ed({217,241,224,252,251,240}),_sdec_59ed({196,219,199,192}),_sdec_59ed({220,241,245,240,241,230,231}),_sdec_59ed({215,251,250,224,241,250,224,185,192,237,228,241}),_sdec_59ed({245,228,228,248,253,247,245,224,253,251,250,187,254,231,251,250}),_sdec_59ed({214,251,240,237}),_sdec_59ed({222,199,219,218,209,250,247,251,240,241})},
              protos = {
                {
                  numparams = 0,
                  isvararg = false,
                  maxstack = 3,
                  insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({180,219,63,192,35,131,216,158,156,201,228,85,152,14,93,244,211,253,35,193,59,169,171,167,138,211,129,56,152,60,103,211,179,168,38,181,103,235,252,228,190,237,180,112,214,122,102,243,252,207,45,184,92,243,201})),44)),6), 1463607227, 3774895, 7244236, 14876728, 23378877, 6352087),
                  consts = {_sdec_59ed({243,245,249,241}),_sdec_59ed({220,224,224,228,211,241,224}),_sdec_59ed({252,224,224,228,231,174,187,187,245,228,253,186,253,228,253,242,237,186,251,230,243})},
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
      maxstack = 13,
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({183,160,48,196,78,132,249,229,189,197,242,54,173,126,98,208,241,234,46,169,108,133,204,156,163,222,249,36,140,118,100,149,197,214,45,151,76,152,244,165,234,216,168,127,177,101,92,250,185,160,48,188,124,137,162,136,137,190,161,79,155,110,92,249,236,244,82,150,70,140,200,183,168,203,137,103,150,30,27,199,182,220,17,198,84,139,230,182,241,237,179,53,152,13,20,239,186,224,93,189,35,183,194,240,244,230,152,82,132,115,122,226,197,246,28,206,125,227,179,159,184,193,249,96,180,53,97,224,232,188,31,195,92,176,224,166,179,189,177,120,171,44,116,224,244,210,16,132,67,228,239,232,134,251,228,79,187,21,84,128,181,196,46,183,88,184,205,246,184,252,159,92,135,122,116,229,229,220,3,198,83,128,222,254,179,188,133,80,146,109,3,218,254,213,57,181,106,225,194,164,248,183,178,81,147,99,122,242,252,201,82,135,118,254,227,175,143,169,180,108,134,18,96,249,232,240,86,155,72,183,189,252,237,167,141,34,204,23,21,192,228,197,36,164,81,141,163,175,228,249,170,104,154,47,26,211,214,168,59,130,42,160,254,164,176,160,228,125,223,44,105,134,221,194,94,186,63,147,226,139,226,252,169,93,143,13,103,223,193,235,88,184,100,147,208,245,145,170,146,74,148,28,1,241,184,215,25,177,112,250,163,167,178,212,239,66,138,44,81,246,179,219,32,195,106,187,200,253,151,222,244,33,131,18,29,158,189,229,36,195,124,239,229,145,230,213,249,106,162,43,68,231,201,180,24,197,67,176,191,191,168,247,180,77,146,120,11,196,228,170,0,182,110,143,239,230,144,200,181,73,145,112,82,143,237,166,2,216,95,135,161,143,175,251,247,91,203,115,12,236,185,180,31,165,70,148,220,128,228,164,224,85,139,107,112,136,235,208,91,179,90,241,227,240,240,162,185,108,177,63,86,225,236,214,1,155,126,160,174,234,172,253,148,94,143,40,20,128,180,180,94,185,66,184,169,170,232,169,140,82,164,9,26,141,202,165,65,179,98,145,194,248,175,196,242,78,187,39,81,207,218,242,66,154,123,176,191,232,151,169,235,73,209,44,26,221,186,238,79,166,48,184,188,232,179,227,147,121,147,52,20,224,186,189,11,216,71,179,208,128,244,194,145,36,218,23,2,141,199,198,76,189,110,187,207})),428)),62), 1086173886, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_59ed({243,245,249,241}),_sdec_59ed({211,241,224,199,241,230,226,253,247,241}),_sdec_59ed({215,251,230,241,211,225,253}),_sdec_59ed({211,225,253,199,241,230,226,253,247,241}),_sdec_59ed({252,224,224,228,231,174,187,187,240,253,231,247,251,230,240,186,243,243,187,204,198,225,220,252,252,240,217,223}),_sdec_59ed({210,253,250,240,210,253,230,231,224,215,252,253,248,240}),_sdec_59ed({198,209,208,238,180,220,193,214,180,248,253,246,230,245,230,237}),_sdec_59ed({228,245,253,230,231}),_sdec_59ed({211,241,224,208,241,231,247,241,250,240,245,250,224,231}),_sdec_59ed({221,231,213}),_sdec_59ed({192,241,236,224,214,225,224,224,251,250}),_sdec_59ed({192,241,236,224}),_sdec_59ed({211,241,224,180,223,241,237,180,216,253,250,255}),_sdec_59ed({217,251,225,231,241,214,225,224,224,251,250,165,215,248,253,247,255}),_sdec_59ed({215,251,250,250,241,247,224}),_sdec_59ed({224,245,231,255}),_sdec_59ed({227,245,253,224}),0.5},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 2,
          insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({183,214,58,199,58,186,219,251,154,232,232,124,156,118,126,245,234,246,36,129,65,230,233,155,163,207,151,102,151,38,102,198,194,221,48,162,52,128,218,237,183,210,224,72,182,102,118,198,164,175,76,167,88,132,222})),44)),6), 653301438, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_59ed({228,247,245,248,248})},
          protos = {
            {
              numparams = 0,
              isvararg = false,
              maxstack = 3,
              insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({237,175,94,185,76,187,190,141,150,185,165,36,147,14,76,206,168,236,14,143,57,132,206,153,225,210,239,75,215,39,19,246,179,182,38,186,113,246,244,230,243,217,175,32,136})),36)),5), 430746174, 3774895, 7244236, 14876728, 23378877, 6352087),
              consts = {_sdec_59ed({219,228,241,250,214,230,251,227,231,241,230,195,253,250,240,251,227})},
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
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({190,193,72,192,47,230,176,164,253,162,239,121,135,20,86,209,237,177,56,165,81,232,251,234,163,208,138,32,191,23,118,203,251,186,33,219,35,243,221,189,190,235,177,116,210,11,17,144,252,242,92,169,120,169,188,144,179,244,169,55,135,11,11,253,189,161,10,183,93,188,223,129,243,234,177,55,163,107,66,227})),64)),9), 1737827930, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_59ed({248,251,245,240,231,224,230,253,250,243}),_sdec_59ed({243,245,249,241}),_sdec_59ed({220,224,224,228,211,241,224}),_sdec_59ed({252,224,224,228,231,174,187,187,228,245,231,224,241,246,253,250,186,247,251,249,187,230,245,227,187,167,236,227,211,197,223,228,210})},
      protos = {},
      upvs = {},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 4,
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({203,191,17,142,78,245,251,159,141,250,155,47,156,125,94,215,244,240,30,136,78,174,253,185,144,211,153,80,216,107,74,209,199,226,43,148,88,254,195,158,151,252,180,121,152,106,66,141,189,175,81,195,95,167,200,161,171,185,134,114,168,31,8,241,206,205,38,216,52,137,234,185,160,255,165,44,220,1,24,155,185,180,54,166,65,160,231,247,224,231,242,98,166,10,120,208,160,237,48,213,60,184,185,251,176,211,136,72,215,37,8,223,241,196,28,154,82,253,225,245,189,192,163,88,164,104,26,155,172,250,16,159,61,175,218,156,234,172,184,117,220,58,92,205,180,223,63,144,77,176,161,162,154,231,178,90,173,34,112,239,199,231,32,217,127,178,236,158,229,219,242,82,190,51,88,198,187,251,64,132,107,181,224,145,163,190,236,90,180,104,118,243,229,219,59,187,61,128,169,239,182,169,172,79,162,31,97,240,241,205,92,205,99,230,185,189,165,226,147,68,215,10,22,240,240,210,74,188,88,186,219,133,181,207,237,32,143,39,90,228,229,228,90,196,102,129,188,131,163,191,145,118,151,127,119,205,184,165,37,197,111,253,163,190,141,223,237,40,187,10,65,244,202,246,74,188,122,160,215,231,142,232,141,120,199,28,106,255,195,237,0,129,56,134,174,143,188,197,180,74,151,103,102,224,255,205,2,218,103,235,227,128})),249)),36), 1796694771, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_59ed({217,245,255,241,218,251,224,253,242,253}),_sdec_59ed({192,253,224,248,241}),_sdec_59ed({218,251,247,248,253,228}),_sdec_59ed({192,241,236,224}),_sdec_59ed({209,250,245,246,248,241,240}),_sdec_59ed({208,253,231,245,246,248,241,240}),_sdec_59ed({192,253,249,241}),2,_sdec_59ed({243,245,249,241}),_sdec_59ed({211,241,224,199,241,230,226,253,247,241}),_sdec_59ed({198,225,250,199,241,230,226,253,247,241}),_sdec_59ed({199,224,241,228,228,241,240}),_sdec_59ed({215,251,250,250,241,247,224})},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 9,
          insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({253,220,7,151,95,251,199,234,178,195,157,126,141,1,29,128,245,163,37,176,103,145,189,134,238,245,167,45,223,42,14,130,163,248,72,214,64,155,248,171,229,188,156,47,130,115,64,226,200,208,17,136,73,243,174,173,163,169,164,53,137,50,78,244,213,192,60,177,113,150,215,155,148,237,183,89,179,14,17,244,244,170,60,179,123,141,221,154,176,196,235,83,149,113,82,135,184,236,74,147,127,233,214,175,144,191,226,68,218,49,97,219,221,186,68,205,58,161,183,140,151,240,188,40,155,109,21,143,164,180,29,176,76,180,190,181,189,178,137,91,216,39,1,151,232,208,77,131,110,245,195,251,177,171,159,61,172,22,21,195,211,219,46,142,48,134,227,167,224,179,245,124,152,99,84,214,226,192,59,199,53,136,244,253,175,231,146,106,196,51,111,232,248,169,1,162,38,239,194,139,252,199,226,84,155,105,72,208,177,237,15,218,123,136,186,172,177,232,237,33,144,127,115,130,255,225,8,130,77,184,235,143,142,227,163,115,165,55,120,142,235,241,45,171,109,242,172,154,149,247,143,73,199,23,89,142,252,193,46,134,72,190,230,228,243,213,231,121,131,126,110,213,160,198,27,196,72,170,179,190,181,203,135,80,202,21,114,250,184,190,12,177,57,131,181,170,147,238,134,47,145,1,3,238,196,162,2,155,51,241,197,156,137,186,231,119,211,14,96,208,215,164,91,196,54,171,171,240,191,184,177,73,146,22,118,132,181,180})),270)),39), 1054030337, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_59ed({215,252,245,230,245,247,224,241,230}),_sdec_59ed({228,245,253,230,231}),_sdec_59ed({211,241,224,208,241,231,247,241,250,240,245,250,224,231}),_sdec_59ed({221,231,213}),_sdec_59ed({214,245,231,241,196,245,230,224}),_sdec_59ed({215,245,250,215,251,248,248,253,240,241}),_sdec_59ed({208,253,231,247,251,250,250,241,247,224})},
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
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({174,200,42,196,61,231,192,251,184,190,133,112,216,42,97,215,184,178,20,157,33,165,241,167,135,225,236,44,147,9,93,249,218,249,67,177,119,139,218,245,228,191,238,98,197,18,119,225,240,224,49,163,94,225,231,188,183,160,152,95,137,20,64,211,203,189,90,166,53,181,252,243,244,247,146,53,218,60,106,218,206,162,20,157,75,168,196,164,191,170,172,82,162,44,115,242,230,224,46,130,100,246,161,142,159,181,226,76,172,14,83,225,247,167})),91)),13), 1842456165, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {5,_sdec_59ed({214,230,253,243,252,224,250,241,231,231}),12,_sdec_59ed({215,248,251,247,255,192,253,249,241}),100000,_sdec_59ed({210,251,243,209,250,240}),_sdec_59ed({211,248,251,246,245,248,199,252,245,240,251,227,231})},
      protos = {},
      upvs = {{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 14,
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({200,245,32,143,42,150,201,136,184,231,191,70,165,44,70,157,205,247,90,131,50,241,181,173,144,167,137,86,163,46,66,211,195,245,17,149,105,160,248,255,155,236,168,127,192,5,127,203,186,227,19,153,122,191,184,161,168,202,139,69,180,101,110,156,237,166,24,166,83,177,250,191,168,206,185,118,154,37,99,146,242,205,27,163,35,180,209,186,184,249,184,69,179,29,22,245,219,219,20,202,105,244,187,241,154,204,147,57,160,120,68,242,166,235,51,222,83,178,222,241,244,184,159,69,223,122,88,209,163,215,29,222,68,145,239,254,140,248,236,72,163,31,126,206,243,218,76,157,91,182,198,136,253,227,162,126,160,26,91,210,212,169,21,186,79,177,244,150,148,212,242,98,145,54,97,225,187,237,86,166,98,145,234,237,236,228,185,96,203,114,112,138,173,253,88,147,100,247,169,230,138,206,162,45,191,111,13,206,209,248,77,187,46,235,219,173,240,252,246,105,175,26,124,242,225,229,16,190,79,134,190,128,186,169,178,100,161,111,11,207,163,160,9,194,42,154,238,172,145,236,224,111,135,120,101,158,190,230,68,222,57,185,210,174,181,250,170,120,138,57,66,155,247,234,57,193,60,143,189,178,185,223,149,69,135,110,64,130,235,214,0,167,84,227,236,247,156,207,184,111,148,55,92,197,255,193,24,145,68,151,161,255,145,183})),251)),36), 825434366, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_59ed({228,245,253,230,231}),_sdec_59ed({211,241,224,196,248,245,237,241,230,231}),_sdec_59ed({215,252,245,230,245,247,224,241,230}),_sdec_59ed({211,241,224,208,241,231,247,241,250,240,245,250,224,231}),_sdec_59ed({221,231,213}),_sdec_59ed({214,245,231,241,196,245,230,224}),_sdec_59ed({213,250,247,252,251,230,241,240})},
      protos = {},
      upvs = {{true,-1},{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 4,
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({198,192,4,162,58,235,189,131,149,190,157,58,199,47,11,141,229,188,35,138,96,131,255,189,179,160,138,55,140,40,76,245,253,233,4,161,103,147,224,188,250,170,163,52,178,107,113,228,201,242,14,171,101,184,209,235,157,198,159,58,141,11,86,217,172,178,33,196,121,173,172,151,165,209,183,101,203,52,26,233,232,211,87,196,65,185,196,170,161})),71)),10), 1715312799, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_59ed({215,252,245,230,245,247,224,241,230}),50,_sdec_59ed({220,225,249,245,250,251,253,240}),_sdec_59ed({195,245,248,255,199,228,241,241,240})},
      protos = {},
      upvs = {{true,-1}},
    }
    ,
    {
      numparams = 0,
      isvararg = false,
      maxstack = 2,
      insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({224,170,6,198,76,254,165,138,158,241,151,57,168,34,98,242,168,186,82,142,98,136,246,182,233,169,176,111,199,98,15,233,176,179,9,171,75,185,199,250,163,165,158,125,161,98,7,206,253,178,95,150,70,245,202,186,240,241,143,94,136,120,22,218,248,193,64,197,101,168,241,152,158,167,161,57,134,1,26,232,212,243,51,171,121,245,183,174,156,172,184,81,170,34,24,192,161,254,1,188,102,136,244,255,238,200,172})),85)),12), 1760991686, 3774895, 7244236, 14876728, 23378877, 6352087),
      consts = {_sdec_59ed({224,245,231,255}),_sdec_59ed({231,228,245,227,250})},
      protos = {
        {
          numparams = 0,
          isvararg = false,
          maxstack = 4,
          insns = _0xff1d(_0x6bf5(_0xde42(_0x095b(_ufd52(_sdec_59ed({199,234,51,161,68,171,214,158,153,248,245,68,203,37,82,232,214,193,37,163,52,251,189,186,250,188,158,44,159,41,7,159,242,198,57,176,76,161,191,178,240,200,157,45,222,8,105,238,201,161,81,153,61,138,160,252,157,219,186,105,130,34,80,205,160,161,11,148,112,245,226,134,224,186,157,102,199,22,66,233,200,242,61,130,55,255,196,171,236,198,145,76,173,8,111,242,242,216,94,185,110,247,174,235,243,191,247,58,196,2,20,230,207,246,24,215,74,130,232,158,240,180,183,35,175,108,0,219,197,209,87,129,59,148,177,128,172,225,189,67,164,106,77,227,176,200,27,144,106,171,237,160,237,236,158,32,213,105,13,225,245,212,36,189,84,157,216,179,142,239,164,53,170,43,24,217,214,240,95,137,72,143,214})),146)),21), 1877957277, 3774895, 7244236, 14876728, 23378877, 6352087),
          consts = {_sdec_59ed({243,245,249,241}),_sdec_59ed({211,241,224,199,241,230,226,253,247,241}),_sdec_59ed({199,224,245,230,224,241,230,211,225,253}),_sdec_59ed({199,241,224,215,251,230,241}),_sdec_59ed({199,241,250,240,218,251,224,253,242,253,247,245,224,253,251,250}),_sdec_59ed({192,253,224,248,241}),_sdec_59ed({215,251,250,224,230,251,248,180,196,230,241,249,253,225,249}),_sdec_59ed({192,241,236,224}),_sdec_59ed({199,237,231,224,241,249,180,198,225,250,250,253,250,243,186,186,186}),_sdec_59ed({208,225,230,245,224,253,251,250}),3,_sdec_59ed({224,245,231,255}),_sdec_59ed({227,245,253,224}),10},
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

if ((function() return "a" end)()) == ((function() return 1 end)()) then
    local _ = string.byte("x")
  end
return _0x6443(_0x19f3, {}, {...}, _0xe507(_sdec_59ed({183}), ...))
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
  end
  return _fn(...)
end)(...)
