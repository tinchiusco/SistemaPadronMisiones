; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [210 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [420 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 64
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 209
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 77
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 148
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 95
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 112
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 17
	i64 560278790331054453, ; 7: System.Reflection.Primitives => 0x7c6829760de3975 => 169
	i64 648449422406355874, ; 8: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 54
	i64 670564002081277297, ; 9: Microsoft.Identity.Client.dll => 0x94e526837380571 => 65
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 84
	i64 750875890346172408, ; 11: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 196
	i64 769231974326215379, ; 12: ja/Microsoft.Data.SqlClient.resources.dll => 0xaacdc67b39622d3 => 4
	i64 799765834175365804, ; 13: System.ComponentModel.dll => 0xb1956c9f18442ac => 131
	i64 849051935479314978, ; 14: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 20
	i64 872800313462103108, ; 15: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 100
	i64 937459790420187032, ; 16: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 79
	i64 1010599046655515943, ; 17: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 169
	i64 1060858978308751610, ; 18: Azure.Core.dll => 0xeb8ed9ebee080fa => 45
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 116
	i64 1121665720830085036, ; 20: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 28
	i64 1150430735170971895, ; 21: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 7
	i64 1268860745194512059, ; 22: System.Drawing.dll => 0x119be62002c19ebb => 141
	i64 1369545283391376210, ; 23: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 108
	i64 1404195534211153682, ; 24: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 146
	i64 1476839205573959279, ; 25: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 154
	i64 1486715745332614827, ; 26: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 74
	i64 1513467482682125403, ; 27: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 208
	i64 1537168428375924959, ; 28: System.Threading.Thread.dll => 0x15551e8a954ae0df => 196
	i64 1556147632182429976, ; 29: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 26
	i64 1624659445732251991, ; 30: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 92
	i64 1628611045998245443, ; 31: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 105
	i64 1731380447121279447, ; 32: Newtonsoft.Json => 0x18071957e9b889d7 => 80
	i64 1743969030606105336, ; 33: System.Memory.dll => 0x1833d297e88f2af8 => 150
	i64 1767386781656293639, ; 34: System.Private.Uri.dll => 0x188704e9f5582107 => 164
	i64 1795316252682057001, ; 35: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 91
	i64 1825687700144851180, ; 36: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 170
	i64 1835311033149317475, ; 37: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 16
	i64 1836611346387731153, ; 38: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 112
	i64 1865037103900624886, ; 39: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 50
	i64 1875417405349196092, ; 40: System.Drawing.Primitives => 0x1a06d2319b6c713c => 140
	i64 1881198190668717030, ; 41: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 38
	i64 1920760634179481754, ; 42: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 75
	i64 1959996714666907089, ; 43: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 38
	i64 1972385128188460614, ; 44: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 181
	i64 1981742497975770890, ; 45: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 104
	i64 1983698669889758782, ; 46: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 12
	i64 2019660174692588140, ; 47: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 30
	i64 2040001226662520565, ; 48: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 195
	i64 2102659300918482391, ; 49: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 140
	i64 2133195048986300728, ; 50: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 80
	i64 2165725771938924357, ; 51: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 93
	i64 2262844636196693701, ; 52: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 100
	i64 2287834202362508563, ; 53: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 123
	i64 2302323944321350744, ; 54: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 34
	i64 2316229908869312383, ; 55: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 71
	i64 2329709569556905518, ; 56: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 103
	i64 2335503487726329082, ; 57: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 191
	i64 2470498323731680442, ; 58: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 96
	i64 2497223385847772520, ; 59: System.Runtime => 0x22a7eb7046413568 => 178
	i64 2547086958574651984, ; 60: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 90
	i64 2554797818648757682, ; 61: System.Runtime.Caching.dll => 0x23747714858085b2 => 87
	i64 2602673633151553063, ; 62: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 37
	i64 2612152650457191105, ; 63: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 72
	i64 2632269733008246987, ; 64: System.Net.NameResolution => 0x2487b36034f808cb => 152
	i64 2656907746661064104, ; 65: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 56
	i64 2662981627730767622, ; 66: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 12
	i64 2745381263179111323, ; 67: EPPlus.dll => 0x26198db694cddb9b => 47
	i64 2777234600790290333, ; 68: EPPlus.Interfaces => 0x268ab827ae076f9d => 48
	i64 2789714023057451704, ; 69: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 68
	i64 2815524396660695947, ; 70: System.Security.AccessControl => 0x2712c0857f68238b => 179
	i64 2851879596360956261, ; 71: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 82
	i64 2895129759130297543, ; 72: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 17
	i64 3004558106879253741, ; 73: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 4
	i64 3017704767998173186, ; 74: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 116
	i64 3063847325783385934, ; 75: System.ClientModel.dll => 0x2a84f8e8eb59674e => 81
	i64 3106852385031680087, ; 76: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 177
	i64 3110390492489056344, ; 77: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 183
	i64 3289520064315143713, ; 78: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 102
	i64 3311221304742556517, ; 79: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 161
	i64 3325875462027654285, ; 80: System.Runtime.Numerics => 0x2e27e21c8958b48d => 173
	i64 3328853167529574890, ; 81: System.Net.Sockets.dll => 0x2e327651a008c1ea => 158
	i64 3344514922410554693, ; 82: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 118
	i64 3396143930648122816, ; 83: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 58
	i64 3402534845034375023, ; 84: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 85
	i64 3429672777697402584, ; 85: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 77
	i64 3494946837667399002, ; 86: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 52
	i64 3522470458906976663, ; 87: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 113
	i64 3551103847008531295, ; 88: System.Private.CoreLib.dll => 0x31480e226177735f => 206
	i64 3567343442040498961, ; 89: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 32
	i64 3571415421602489686, ; 90: System.Runtime.dll => 0x319037675df7e556 => 178
	i64 3638003163729360188, ; 91: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 53
	i64 3647754201059316852, ; 92: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 201
	i64 3655542548057982301, ; 93: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 52
	i64 3716579019761409177, ; 94: netstandard.dll => 0x3393f0ed5c8c5c99 => 205
	i64 3727469159507183293, ; 95: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 111
	i64 3869221888984012293, ; 96: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 61
	i64 3889433610606858880, ; 97: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 59
	i64 3890352374528606784, ; 98: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 75
	i64 3919223565570527920, ; 99: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 184
	i64 3933965368022646939, ; 100: System.Net.Requests => 0x369840a8bfadc09b => 155
	i64 3966267475168208030, ; 101: System.Memory => 0x370b03412596249e => 150
	i64 4009997192427317104, ; 102: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 176
	i64 4073500526318903918, ; 103: System.Private.Xml.dll => 0x3887fb25779ae26e => 166
	i64 4090066110372993390, ; 104: fr/Microsoft.Data.SqlClient.resources.dll => 0x38c2d57510a5596e => 2
	i64 4120493066591692148, ; 105: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 43
	i64 4154383907710350974, ; 106: System.ComponentModel => 0x39a7562737acb67e => 131
	i64 4167269041631776580, ; 107: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 197
	i64 4168469861834746866, ; 108: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 180
	i64 4187479170553454871, ; 109: System.Linq.Expressions => 0x3a1cea1e912fa117 => 148
	i64 4205801962323029395, ; 110: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 130
	i64 4321865999928413850, ; 111: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 83
	i64 4343083164021660430, ; 112: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0x3c45bb20857d9b0e => 8
	i64 4356591372459378815, ; 113: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 40
	i64 4373617458794931033, ; 114: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 147
	i64 4672453897036726049, ; 115: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 146
	i64 4679594760078841447, ; 116: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 10
	i64 4716677666592453464, ; 117: System.Xml.XmlSerializer => 0x417501590542f358 => 203
	i64 4743821336939966868, ; 118: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 128
	i64 4794310189461587505, ; 119: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 90
	i64 4795410492532947900, ; 120: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 113
	i64 4809057822547766521, ; 121: System.Drawing => 0x42bd349c3145ecf9 => 141
	i64 4814660307502931973, ; 122: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 152
	i64 4853321196694829351, ; 123: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 172
	i64 5103417709280584325, ; 124: System.Collections.Specialized => 0x46d2fb5e161b6285 => 126
	i64 5182934613077526976, ; 125: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 126
	i64 5278787618751394462, ; 126: System.Net.WebClient.dll => 0x4942055efc68329e => 159
	i64 5290786973231294105, ; 127: System.Runtime.Loader => 0x496ca6b869b72699 => 172
	i64 5423376490970181369, ; 128: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 170
	i64 5471532531798518949, ; 129: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 36
	i64 5522859530602327440, ; 130: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 39
	i64 5570799893513421663, ; 131: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 143
	i64 5573260873512690141, ; 132: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 187
	i64 5650097808083101034, ; 133: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 181
	i64 5692067934154308417, ; 134: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 115
	i64 5892310748065238056, ; 135: EPPlus.System.Drawing.dll => 0x51c5b16814a50c28 => 49
	i64 5979151488806146654, ; 136: System.Formats.Asn1 => 0x52fa3699a489d25e => 142
	i64 5984759512290286505, ; 137: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 185
	i64 6068057819846744445, ; 138: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 33
	i64 6200764641006662125, ; 139: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 33
	i64 6222399776351216807, ; 140: System.Text.Json.dll => 0x565a67a0ffe264a7 => 192
	i64 6251069312384999852, ; 141: System.Transactions.Local => 0x56c0426b870da1ac => 199
	i64 6278736998281604212, ; 142: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 163
	i64 6284145129771520194, ; 143: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 167
	i64 6357457916754632952, ; 144: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 44
	i64 6401687960814735282, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 103
	i64 6478287442656530074, ; 146: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 21
	i64 6504860066809920875, ; 147: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 93
	i64 6548213210057960872, ; 148: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 99
	i64 6560151584539558821, ; 149: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 63
	i64 6617685658146568858, ; 150: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 189
	i64 6667137106064718713, ; 151: ru/Microsoft.Data.SqlClient.resources.dll => 0x5c866ddfbbd03b79 => 7
	i64 6743165466166707109, ; 152: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 29
	i64 6777482997383978746, ; 153: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 32
	i64 6786606130239981554, ; 154: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 138
	i64 6814185388980153342, ; 155: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 202
	i64 6876862101832370452, ; 156: System.Xml.Linq => 0x5f6f85a57d108914 => 200
	i64 6894844156784520562, ; 157: System.Numerics.Vectors => 0x5faf683aead1ad72 => 161
	i64 7055072420069764613, ; 158: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0x61e8a6fc96e9ee05 => 6
	i64 7083547580668757502, ; 159: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 165
	i64 7105430439328552570, ; 160: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 88
	i64 7220009545223068405, ; 161: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 36
	i64 7270811800166795866, ; 162: System.Linq => 0x64e71ccf51a90a5a => 149
	i64 7316205155833392065, ; 163: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 121
	i64 7348123982286201829, ; 164: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 86
	i64 7377312882064240630, ; 165: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 130
	i64 7488575175965059935, ; 166: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 200
	i64 7489048572193775167, ; 167: System.ObjectModel => 0x67ee71ff6b419e3f => 162
	i64 7496222613193209122, ; 168: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 85
	i64 7592577537120840276, ; 169: System.Diagnostics.Process => 0x695e410af5b2aa54 => 135
	i64 7654504624184590948, ; 170: System.Net.Http => 0x6a3a4366801b8264 => 151
	i64 7674255102467164136, ; 171: EPPlus.System.Drawing => 0x6a806e5b1248c7e8 => 49
	i64 7708790323521193081, ; 172: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 27
	i64 7714652370974252055, ; 173: System.Private.CoreLib => 0x6b0ff375198b9c17 => 206
	i64 7735176074855944702, ; 174: Microsoft.CSharp => 0x6b58dda848e391fe => 120
	i64 7735352534559001595, ; 175: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 117
	i64 7791074099216502080, ; 176: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 145
	i64 7836164640616011524, ; 177: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 92
	i64 8064050204834738623, ; 178: System.Collections.dll => 0x6fe942efa61731bf => 127
	i64 8083354569033831015, ; 179: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 102
	i64 8087206902342787202, ; 180: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 134
	i64 8167236081217502503, ; 181: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 207
	i64 8185542183669246576, ; 182: System.Collections => 0x7198e33f4794aa70 => 127
	i64 8234598844743906698, ; 183: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 66
	i64 8246048515196606205, ; 184: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 78
	i64 8264926008854159966, ; 185: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 135
	i64 8368701292315763008, ; 186: System.Security.Cryptography => 0x7423997c6fd56140 => 187
	i64 8400357532724379117, ; 187: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 110
	i64 8410671156615598628, ; 188: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 168
	i64 8504561952043985209, ; 189: SistemaPadronMisiones.dll => 0x7606460949e26939 => 119
	i64 8513291706828295435, ; 190: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 79
	i64 8518412311883997971, ; 191: System.Collections.Immutable => 0x76377add7c28e313 => 124
	i64 8563666267364444763, ; 192: System.Private.Uri => 0x76d841191140ca5b => 164
	i64 8594639773772191234, ; 193: EPPlus.Interfaces.dll => 0x77464b5680229602 => 48
	i64 8614108721271900878, ; 194: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 31
	i64 8626175481042262068, ; 195: Java.Interop => 0x77b654e585b55834 => 207
	i64 8638972117149407195, ; 196: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 120
	i64 8639588376636138208, ; 197: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 109
	i64 8677882282824630478, ; 198: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 31
	i64 8725526185868997716, ; 199: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 134
	i64 8882398187484578781, ; 200: de/Microsoft.Data.SqlClient.resources.dll => 0x7b449e172e9783dd => 0
	i64 8941376889969657626, ; 201: System.Xml.XDocument => 0x7c1626e87187471a => 202
	i64 8954753533646919997, ; 202: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 175
	i64 8955323522379913726, ; 203: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 65
	i64 9045785047181495996, ; 204: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 41
	i64 9052662452269567435, ; 205: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 70
	i64 9138683372487561558, ; 206: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 183
	i64 9312692141327339315, ; 207: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 115
	i64 9324707631942237306, ; 208: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 91
	i64 9389258210823261255, ; 209: it/Microsoft.Data.SqlClient.resources.dll => 0x824d5898a88a4c47 => 3
	i64 9427266486299436557, ; 210: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 69
	i64 9513793942805897923, ; 211: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 8
	i64 9650158550865574924, ; 212: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 55
	i64 9659729154652888475, ; 213: System.Text.RegularExpressions => 0x860e407c9991dd9b => 193
	i64 9667360217193089419, ; 214: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 136
	i64 9678050649315576968, ; 215: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 96
	i64 9702891218465930390, ; 216: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 125
	i64 9808709177481450983, ; 217: Mono.Android.dll => 0x881f890734e555e7 => 209
	i64 9819168441846169364, ; 218: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 70
	i64 9926823135807378425, ; 219: SistemaPadronMisiones => 0x89c3290c25ed93f9 => 119
	i64 9956195530459977388, ; 220: Microsoft.Maui => 0x8a2b8315b36616ac => 76
	i64 9991543690424095600, ; 221: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 16
	i64 10038780035334861115, ; 222: System.Net.Http.dll => 0x8b50e941206af13b => 151
	i64 10051358222726253779, ; 223: System.Private.Xml => 0x8b7d990c97ccccd3 => 166
	i64 10089571585547156312, ; 224: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 145
	i64 10092835686693276772, ; 225: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 74
	i64 10143853363526200146, ; 226: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 13
	i64 10229024438826829339, ; 227: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 99
	i64 10236703004850800690, ; 228: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 157
	i64 10245369515835430794, ; 229: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 168
	i64 10364469296367737616, ; 230: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 167
	i64 10406448008575299332, ; 231: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 118
	i64 10430153318873392755, ; 232: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 97
	i64 10447083246144586668, ; 233: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 50
	i64 10506226065143327199, ; 234: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 11
	i64 10546663366131771576, ; 235: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 175
	i64 10670374202010151210, ; 236: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 121
	i64 10785150219063592792, ; 237: System.Net.Primitives => 0x95ac8cfb68830758 => 154
	i64 10889380495983713167, ; 238: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 51
	i64 10964653383833615866, ; 239: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 139
	i64 11002576679268595294, ; 240: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 62
	i64 11009005086950030778, ; 241: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 76
	i64 11038974641380222378, ; 242: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0x993250f3080365aa => 9
	i64 11103970607964515343, ; 243: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 22
	i64 11162124722117608902, ; 244: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 114
	i64 11183417087873056340, ; 245: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 5
	i64 11220793807500858938, ; 246: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 25
	i64 11226290749488709958, ; 247: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 63
	i64 11340910727871153756, ; 248: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 98
	i64 11341245327015630248, ; 249: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 82
	i64 11347436699239206956, ; 250: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 203
	i64 11369118378396596751, ; 251: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 0
	i64 11448276831755070604, ; 252: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 137
	i64 11485890710487134646, ; 253: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 171
	i64 11517440453979132662, ; 254: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 67
	i64 11518296021396496455, ; 255: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 23
	i64 11529969570048099689, ; 256: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 114
	i64 11530571088791430846, ; 257: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 61
	i64 11597940890313164233, ; 258: netstandard => 0xa0f429ca8d1805c9 => 205
	i64 11705530742807338875, ; 259: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 19
	i64 12011556116648931059, ; 260: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 89
	i64 12040886584167504988, ; 261: System.Net.ServicePoint => 0xa719d28d8e121c5c => 157
	i64 12048689113179125827, ; 262: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 59
	i64 12058074296353848905, ; 263: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 60
	i64 12094367927612810875, ; 264: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 3
	i64 12102847907131387746, ; 265: System.Buffers => 0xa7f5f40c43256f62 => 122
	i64 12145679461940342714, ; 266: System.Text.Json => 0xa88e1f1ebcb62fba => 192
	i64 12198439281774268251, ; 267: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 71
	i64 12201331334810686224, ; 268: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 176
	i64 12269460666702402136, ; 269: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 124
	i64 12439275739440478309, ; 270: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 68
	i64 12451044538927396471, ; 271: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 101
	i64 12466513435562512481, ; 272: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 106
	i64 12475113361194491050, ; 273: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 44
	i64 12493213219680520345, ; 274: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 51
	i64 12517810545449516888, ; 275: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 138
	i64 12538491095302438457, ; 276: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 94
	i64 12550732019250633519, ; 277: System.IO.Compression => 0xae2d28465e8e1b2f => 144
	i64 12681088699309157496, ; 278: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 24
	i64 12699999919562409296, ; 279: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 136
	i64 12700543734426720211, ; 280: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 95
	i64 12708922737231849740, ; 281: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 190
	i64 12717050818822477433, ; 282: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 177
	i64 12823819093633476069, ; 283: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 37
	i64 12835242264250840079, ; 284: System.IO.Pipes => 0xb21ff0d5d6c0740f => 147
	i64 12843321153144804894, ; 285: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 64
	i64 12859557719246324186, ; 286: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 160
	i64 12963446364377008305, ; 287: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 84
	i64 13068258254871114833, ; 288: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 174
	i64 13221551921002590604, ; 289: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 11
	i64 13222659110913276082, ; 290: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 25
	i64 13343850469010654401, ; 291: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 208
	i64 13381594904270902445, ; 292: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 19
	i64 13431476299110033919, ; 293: System.Net.WebClient => 0xba663087f18829ff => 159
	i64 13463706743370286408, ; 294: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 163
	i64 13465488254036897740, ; 295: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 117
	i64 13467053111158216594, ; 296: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 39
	i64 13540124433173649601, ; 297: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 40
	i64 13545416393490209236, ; 298: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 23
	i64 13550417756503177631, ; 299: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 58
	i64 13572454107664307259, ; 300: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 111
	i64 13710614125866346983, ; 301: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 179
	i64 13717397318615465333, ; 302: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 129
	i64 13742054908850494594, ; 303: Azure.Identity => 0xbeb596218df25c82 => 46
	i64 13755568601956062840, ; 304: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 18
	i64 13814445057219246765, ; 305: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 21
	i64 13881769479078963060, ; 306: System.Console.dll => 0xc0a5f3cade5c6774 => 132
	i64 13959074834287824816, ; 307: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 101
	i64 14100563506285742564, ; 308: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 13
	i64 14124974489674258913, ; 309: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 94
	i64 14125464355221830302, ; 310: System.Threading.dll => 0xc407bafdbc707a9e => 198
	i64 14212104595480609394, ; 311: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 182
	i64 14254574811015963973, ; 312: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 190
	i64 14327709162229390963, ; 313: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 186
	i64 14461014870687870182, ; 314: System.Net.Requests.dll => 0xc8afd8683afdece6 => 155
	i64 14464374589798375073, ; 315: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 34
	i64 14522721392235705434, ; 316: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 15
	i64 14533141687369379279, ; 317: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 9
	i64 14551742072151931844, ; 318: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 191
	i64 14561513370130550166, ; 319: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 185
	i64 14622043554576106986, ; 320: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 174
	i64 14648804764802849406, ; 321: Azure.Identity.dll => 0xcb4b0252261f9a7e => 46
	i64 14669215534098758659, ; 322: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 56
	i64 14705122255218365489, ; 323: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 26
	i64 14744092281598614090, ; 324: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 42
	i64 14832630590065248058, ; 325: System.Security.Claims => 0xcdd816ef5d6e873a => 180
	i64 14852515768018889994, ; 326: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 98
	i64 14860392635077829057, ; 327: EPPlus => 0xce3ab85e2ca521c1 => 47
	i64 14892012299694389861, ; 328: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 43
	i64 14904040806490515477, ; 329: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 10
	i64 14912225920358050525, ; 330: System.Security.Principal.Windows => 0xcef2de7759506add => 188
	i64 14921072373058723558, ; 331: ko/Microsoft.Data.SqlClient.resources.dll => 0xcf124c44a00f5ee6 => 5
	i64 14935719434541007538, ; 332: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 189
	i64 14954917835170835695, ; 333: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 57
	i64 14984936317414011727, ; 334: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 160
	i64 14987728460634540364, ; 335: System.IO.Compression.dll => 0xcfff1ba06622494c => 144
	i64 15015154896917945444, ; 336: System.Net.Security.dll => 0xd0608bd33642dc64 => 156
	i64 15076659072870671916, ; 337: System.ObjectModel.dll => 0xd13b0d8c1620662c => 162
	i64 15111608613780139878, ; 338: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 27
	i64 15115185479366240210, ; 339: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 143
	i64 15133485256822086103, ; 340: System.Linq.dll => 0xd204f0a9127dd9d7 => 149
	i64 15138356091203993725, ; 341: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 67
	i64 15227001540531775957, ; 342: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 53
	i64 15370334346939861994, ; 343: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 97
	i64 15383240894167415497, ; 344: System.Memory.Data => 0xd57c4016df1c7ac9 => 86
	i64 15391712275433856905, ; 345: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 57
	i64 15440042012048828209, ; 346: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 6
	i64 15475196252089753159, ; 347: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 83
	i64 15527772828719725935, ; 348: System.Console => 0xd77dbb1e38cd3d6f => 132
	i64 15536481058354060254, ; 349: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 14
	i64 15541854775306130054, ; 350: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 186
	i64 15557562860424774966, ; 351: System.Net.Sockets => 0xd7e790fe7a6dc536 => 158
	i64 15582737692548360875, ; 352: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 105
	i64 15609085926864131306, ; 353: System.dll => 0xd89e9cf3334914ea => 204
	i64 15661133872274321916, ; 354: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 201
	i64 15664356999916475676, ; 355: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 14
	i64 15718684508147848364, ; 356: es/Microsoft.Data.SqlClient.resources.dll => 0xda23fc476c9694ac => 1
	i64 15743187114543869802, ; 357: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 22
	i64 15783653065526199428, ; 358: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 15
	i64 15827202283623377193, ; 359: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 55
	i64 15847085070278954535, ; 360: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 194
	i64 15937190497610202713, ; 361: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 182
	i64 15963349826457351533, ; 362: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 195
	i64 16018552496348375205, ; 363: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 153
	i64 16154507427712707110, ; 364: System => 0xe03056ea4e39aa26 => 204
	i64 16219561732052121626, ; 365: System.Net.Security => 0xe1177575db7c781a => 156
	i64 16288847719894691167, ; 366: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 28
	i64 16321164108206115771, ; 367: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 62
	i64 16337011941688632206, ; 368: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 188
	i64 16454459195343277943, ; 369: System.Net.NetworkInformation => 0xe459fb756d988f77 => 153
	i64 16540916324946374984, ; 370: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 2
	i64 16649148416072044166, ; 371: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 78
	i64 16677317093839702854, ; 372: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 110
	i64 16765015072123548030, ; 373: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 137
	i64 16856067890322379635, ; 374: System.Data.Common.dll => 0xe9ecc87060889373 => 133
	i64 16890310621557459193, ; 375: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 193
	i64 16942731696432749159, ; 376: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 35
	i64 16945858842201062480, ; 377: Azure.Core => 0xeb2bc8d57f4e7c50 => 45
	i64 16998075588627545693, ; 378: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 108
	i64 17006954551347072385, ; 379: System.ClientModel => 0xec04d70ec8414d81 => 81
	i64 17008137082415910100, ; 380: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 125
	i64 17031351772568316411, ; 381: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 107
	i64 17047433665992082296, ; 382: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 54
	i64 17062143951396181894, ; 383: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 129
	i64 17089008752050867324, ; 384: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 42
	i64 17118171214553292978, ; 385: System.Threading.Channels => 0xed8ff6060fc420b2 => 194
	i64 17137864900836977098, ; 386: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 72
	i64 17187273293601214786, ; 387: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 128
	i64 17197986060146327831, ; 388: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 66
	i64 17202182880784296190, ; 389: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 184
	i64 17205988430934219272, ; 390: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 60
	i64 17230721278011714856, ; 391: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 165
	i64 17234219099804750107, ; 392: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 199
	i64 17260702271250283638, ; 393: System.Data.Common => 0xef8a5543bba6bc76 => 133
	i64 17333249706306540043, ; 394: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 139
	i64 17342750010158924305, ; 395: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 20
	i64 17371436720558481852, ; 396: System.Runtime.Caching => 0xf113bda8d710a1bc => 87
	i64 17438153253682247751, ; 397: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 35
	i64 17514990004910432069, ; 398: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 18
	i64 17523946658117960076, ; 399: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 89
	i64 17558788868712318792, ; 400: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 1
	i64 17608862831326185980, ; 401: Microsoft.IO.RecyclableMemoryStream.dll => 0xf45f3f7307c6c9fc => 73
	i64 17623389608345532001, ; 402: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 30
	i64 17702523067201099846, ; 403: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 41
	i64 17704177640604968747, ; 404: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 106
	i64 17710060891934109755, ; 405: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 104
	i64 17712670374920797664, ; 406: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 171
	i64 17777860260071588075, ; 407: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 173
	i64 17790600151040787804, ; 408: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 69
	i64 17838668724098252521, ; 409: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 122
	i64 17958341848870185232, ; 410: Microsoft.IO.RecyclableMemoryStream => 0xf938d8c3a0f06910 => 73
	i64 18025913125965088385, ; 411: System.Threading => 0xfa28e87b91334681 => 198
	i64 18099568558057551825, ; 412: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 29
	i64 18121036031235206392, ; 413: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 107
	i64 18146411883821974900, ; 414: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 142
	i64 18203743254473369877, ; 415: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 88
	i64 18225059387460068507, ; 416: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 197
	i64 18245806341561545090, ; 417: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 123
	i64 18305135509493619199, ; 418: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 109
	i64 18324163916253801303 ; 419: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 24
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [420 x i32] [
	i32 64, ; 0
	i32 209, ; 1
	i32 77, ; 2
	i32 148, ; 3
	i32 95, ; 4
	i32 112, ; 5
	i32 17, ; 6
	i32 169, ; 7
	i32 54, ; 8
	i32 65, ; 9
	i32 84, ; 10
	i32 196, ; 11
	i32 4, ; 12
	i32 131, ; 13
	i32 20, ; 14
	i32 100, ; 15
	i32 79, ; 16
	i32 169, ; 17
	i32 45, ; 18
	i32 116, ; 19
	i32 28, ; 20
	i32 7, ; 21
	i32 141, ; 22
	i32 108, ; 23
	i32 146, ; 24
	i32 154, ; 25
	i32 74, ; 26
	i32 208, ; 27
	i32 196, ; 28
	i32 26, ; 29
	i32 92, ; 30
	i32 105, ; 31
	i32 80, ; 32
	i32 150, ; 33
	i32 164, ; 34
	i32 91, ; 35
	i32 170, ; 36
	i32 16, ; 37
	i32 112, ; 38
	i32 50, ; 39
	i32 140, ; 40
	i32 38, ; 41
	i32 75, ; 42
	i32 38, ; 43
	i32 181, ; 44
	i32 104, ; 45
	i32 12, ; 46
	i32 30, ; 47
	i32 195, ; 48
	i32 140, ; 49
	i32 80, ; 50
	i32 93, ; 51
	i32 100, ; 52
	i32 123, ; 53
	i32 34, ; 54
	i32 71, ; 55
	i32 103, ; 56
	i32 191, ; 57
	i32 96, ; 58
	i32 178, ; 59
	i32 90, ; 60
	i32 87, ; 61
	i32 37, ; 62
	i32 72, ; 63
	i32 152, ; 64
	i32 56, ; 65
	i32 12, ; 66
	i32 47, ; 67
	i32 48, ; 68
	i32 68, ; 69
	i32 179, ; 70
	i32 82, ; 71
	i32 17, ; 72
	i32 4, ; 73
	i32 116, ; 74
	i32 81, ; 75
	i32 177, ; 76
	i32 183, ; 77
	i32 102, ; 78
	i32 161, ; 79
	i32 173, ; 80
	i32 158, ; 81
	i32 118, ; 82
	i32 58, ; 83
	i32 85, ; 84
	i32 77, ; 85
	i32 52, ; 86
	i32 113, ; 87
	i32 206, ; 88
	i32 32, ; 89
	i32 178, ; 90
	i32 53, ; 91
	i32 201, ; 92
	i32 52, ; 93
	i32 205, ; 94
	i32 111, ; 95
	i32 61, ; 96
	i32 59, ; 97
	i32 75, ; 98
	i32 184, ; 99
	i32 155, ; 100
	i32 150, ; 101
	i32 176, ; 102
	i32 166, ; 103
	i32 2, ; 104
	i32 43, ; 105
	i32 131, ; 106
	i32 197, ; 107
	i32 180, ; 108
	i32 148, ; 109
	i32 130, ; 110
	i32 83, ; 111
	i32 8, ; 112
	i32 40, ; 113
	i32 147, ; 114
	i32 146, ; 115
	i32 10, ; 116
	i32 203, ; 117
	i32 128, ; 118
	i32 90, ; 119
	i32 113, ; 120
	i32 141, ; 121
	i32 152, ; 122
	i32 172, ; 123
	i32 126, ; 124
	i32 126, ; 125
	i32 159, ; 126
	i32 172, ; 127
	i32 170, ; 128
	i32 36, ; 129
	i32 39, ; 130
	i32 143, ; 131
	i32 187, ; 132
	i32 181, ; 133
	i32 115, ; 134
	i32 49, ; 135
	i32 142, ; 136
	i32 185, ; 137
	i32 33, ; 138
	i32 33, ; 139
	i32 192, ; 140
	i32 199, ; 141
	i32 163, ; 142
	i32 167, ; 143
	i32 44, ; 144
	i32 103, ; 145
	i32 21, ; 146
	i32 93, ; 147
	i32 99, ; 148
	i32 63, ; 149
	i32 189, ; 150
	i32 7, ; 151
	i32 29, ; 152
	i32 32, ; 153
	i32 138, ; 154
	i32 202, ; 155
	i32 200, ; 156
	i32 161, ; 157
	i32 6, ; 158
	i32 165, ; 159
	i32 88, ; 160
	i32 36, ; 161
	i32 149, ; 162
	i32 121, ; 163
	i32 86, ; 164
	i32 130, ; 165
	i32 200, ; 166
	i32 162, ; 167
	i32 85, ; 168
	i32 135, ; 169
	i32 151, ; 170
	i32 49, ; 171
	i32 27, ; 172
	i32 206, ; 173
	i32 120, ; 174
	i32 117, ; 175
	i32 145, ; 176
	i32 92, ; 177
	i32 127, ; 178
	i32 102, ; 179
	i32 134, ; 180
	i32 207, ; 181
	i32 127, ; 182
	i32 66, ; 183
	i32 78, ; 184
	i32 135, ; 185
	i32 187, ; 186
	i32 110, ; 187
	i32 168, ; 188
	i32 119, ; 189
	i32 79, ; 190
	i32 124, ; 191
	i32 164, ; 192
	i32 48, ; 193
	i32 31, ; 194
	i32 207, ; 195
	i32 120, ; 196
	i32 109, ; 197
	i32 31, ; 198
	i32 134, ; 199
	i32 0, ; 200
	i32 202, ; 201
	i32 175, ; 202
	i32 65, ; 203
	i32 41, ; 204
	i32 70, ; 205
	i32 183, ; 206
	i32 115, ; 207
	i32 91, ; 208
	i32 3, ; 209
	i32 69, ; 210
	i32 8, ; 211
	i32 55, ; 212
	i32 193, ; 213
	i32 136, ; 214
	i32 96, ; 215
	i32 125, ; 216
	i32 209, ; 217
	i32 70, ; 218
	i32 119, ; 219
	i32 76, ; 220
	i32 16, ; 221
	i32 151, ; 222
	i32 166, ; 223
	i32 145, ; 224
	i32 74, ; 225
	i32 13, ; 226
	i32 99, ; 227
	i32 157, ; 228
	i32 168, ; 229
	i32 167, ; 230
	i32 118, ; 231
	i32 97, ; 232
	i32 50, ; 233
	i32 11, ; 234
	i32 175, ; 235
	i32 121, ; 236
	i32 154, ; 237
	i32 51, ; 238
	i32 139, ; 239
	i32 62, ; 240
	i32 76, ; 241
	i32 9, ; 242
	i32 22, ; 243
	i32 114, ; 244
	i32 5, ; 245
	i32 25, ; 246
	i32 63, ; 247
	i32 98, ; 248
	i32 82, ; 249
	i32 203, ; 250
	i32 0, ; 251
	i32 137, ; 252
	i32 171, ; 253
	i32 67, ; 254
	i32 23, ; 255
	i32 114, ; 256
	i32 61, ; 257
	i32 205, ; 258
	i32 19, ; 259
	i32 89, ; 260
	i32 157, ; 261
	i32 59, ; 262
	i32 60, ; 263
	i32 3, ; 264
	i32 122, ; 265
	i32 192, ; 266
	i32 71, ; 267
	i32 176, ; 268
	i32 124, ; 269
	i32 68, ; 270
	i32 101, ; 271
	i32 106, ; 272
	i32 44, ; 273
	i32 51, ; 274
	i32 138, ; 275
	i32 94, ; 276
	i32 144, ; 277
	i32 24, ; 278
	i32 136, ; 279
	i32 95, ; 280
	i32 190, ; 281
	i32 177, ; 282
	i32 37, ; 283
	i32 147, ; 284
	i32 64, ; 285
	i32 160, ; 286
	i32 84, ; 287
	i32 174, ; 288
	i32 11, ; 289
	i32 25, ; 290
	i32 208, ; 291
	i32 19, ; 292
	i32 159, ; 293
	i32 163, ; 294
	i32 117, ; 295
	i32 39, ; 296
	i32 40, ; 297
	i32 23, ; 298
	i32 58, ; 299
	i32 111, ; 300
	i32 179, ; 301
	i32 129, ; 302
	i32 46, ; 303
	i32 18, ; 304
	i32 21, ; 305
	i32 132, ; 306
	i32 101, ; 307
	i32 13, ; 308
	i32 94, ; 309
	i32 198, ; 310
	i32 182, ; 311
	i32 190, ; 312
	i32 186, ; 313
	i32 155, ; 314
	i32 34, ; 315
	i32 15, ; 316
	i32 9, ; 317
	i32 191, ; 318
	i32 185, ; 319
	i32 174, ; 320
	i32 46, ; 321
	i32 56, ; 322
	i32 26, ; 323
	i32 42, ; 324
	i32 180, ; 325
	i32 98, ; 326
	i32 47, ; 327
	i32 43, ; 328
	i32 10, ; 329
	i32 188, ; 330
	i32 5, ; 331
	i32 189, ; 332
	i32 57, ; 333
	i32 160, ; 334
	i32 144, ; 335
	i32 156, ; 336
	i32 162, ; 337
	i32 27, ; 338
	i32 143, ; 339
	i32 149, ; 340
	i32 67, ; 341
	i32 53, ; 342
	i32 97, ; 343
	i32 86, ; 344
	i32 57, ; 345
	i32 6, ; 346
	i32 83, ; 347
	i32 132, ; 348
	i32 14, ; 349
	i32 186, ; 350
	i32 158, ; 351
	i32 105, ; 352
	i32 204, ; 353
	i32 201, ; 354
	i32 14, ; 355
	i32 1, ; 356
	i32 22, ; 357
	i32 15, ; 358
	i32 55, ; 359
	i32 194, ; 360
	i32 182, ; 361
	i32 195, ; 362
	i32 153, ; 363
	i32 204, ; 364
	i32 156, ; 365
	i32 28, ; 366
	i32 62, ; 367
	i32 188, ; 368
	i32 153, ; 369
	i32 2, ; 370
	i32 78, ; 371
	i32 110, ; 372
	i32 137, ; 373
	i32 133, ; 374
	i32 193, ; 375
	i32 35, ; 376
	i32 45, ; 377
	i32 108, ; 378
	i32 81, ; 379
	i32 125, ; 380
	i32 107, ; 381
	i32 54, ; 382
	i32 129, ; 383
	i32 42, ; 384
	i32 194, ; 385
	i32 72, ; 386
	i32 128, ; 387
	i32 66, ; 388
	i32 184, ; 389
	i32 60, ; 390
	i32 165, ; 391
	i32 199, ; 392
	i32 133, ; 393
	i32 139, ; 394
	i32 20, ; 395
	i32 87, ; 396
	i32 35, ; 397
	i32 18, ; 398
	i32 89, ; 399
	i32 1, ; 400
	i32 73, ; 401
	i32 30, ; 402
	i32 41, ; 403
	i32 106, ; 404
	i32 104, ; 405
	i32 171, ; 406
	i32 173, ; 407
	i32 69, ; 408
	i32 122, ; 409
	i32 73, ; 410
	i32 198, ; 411
	i32 29, ; 412
	i32 107, ; 413
	i32 142, ; 414
	i32 88, ; 415
	i32 197, ; 416
	i32 123, ; 417
	i32 109, ; 418
	i32 24 ; 419
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
