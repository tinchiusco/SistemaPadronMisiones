; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [210 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [420 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 153
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 152
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 80
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 196
	i32 57725457, ; 4: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 3
	i32 57727992, ; 5: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 4
	i32 66541672, ; 6: System.Diagnostics.StackTrace => 0x3f75868 => 136
	i32 67008169, ; 7: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 43
	i32 68219467, ; 8: System.Security.Cryptography.Primitives => 0x410f24b => 185
	i32 72070932, ; 9: Microsoft.Maui.Graphics.dll => 0x44bb714 => 78
	i32 117431740, ; 10: System.Runtime.InteropServices => 0x6ffddbc => 171
	i32 122350210, ; 11: System.Threading.Channels.dll => 0x74aea82 => 194
	i32 123514077, ; 12: EPPlus.dll => 0x75cacdd => 47
	i32 139659294, ; 13: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 4
	i32 142721839, ; 14: System.Net.WebHeaderCollection => 0x881c32f => 160
	i32 149972175, ; 15: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 185
	i32 159306688, ; 16: System.ComponentModel.Annotations => 0x97ed3c0 => 128
	i32 165246403, ; 17: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 95
	i32 166535111, ; 18: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 7
	i32 182336117, ; 19: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 113
	i32 195452805, ; 20: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 40
	i32 199333315, ; 21: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 41
	i32 205061960, ; 22: System.ComponentModel => 0xc38ff48 => 131
	i32 209399409, ; 23: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 93
	i32 230752869, ; 24: Microsoft.CSharp.dll => 0xdc10265 => 120
	i32 246610117, ; 25: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 168
	i32 264223668, ; 26: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 8
	i32 280992041, ; 27: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 12
	i32 317674968, ; 28: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 40
	i32 318968648, ; 29: Xamarin.AndroidX.Activity.dll => 0x13031348 => 90
	i32 330147069, ; 30: Microsoft.SqlServer.Server => 0x13ada4fd => 79
	i32 336156722, ; 31: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 25
	i32 342366114, ; 32: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 102
	i32 356389973, ; 33: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 24
	i32 367780167, ; 34: System.IO.Pipes => 0x15ebe147 => 147
	i32 374914964, ; 35: System.Transactions.Local => 0x1658bf94 => 199
	i32 375677976, ; 36: System.Net.ServicePoint.dll => 0x16646418 => 157
	i32 379916513, ; 37: System.Threading.Thread.dll => 0x16a510e1 => 196
	i32 385762202, ; 38: System.Memory.dll => 0x16fe439a => 150
	i32 392610295, ; 39: System.Threading.ThreadPool.dll => 0x1766c1f7 => 197
	i32 395744057, ; 40: _Microsoft.Android.Resource.Designer => 0x17969339 => 44
	i32 435591531, ; 41: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 36
	i32 442565967, ; 42: System.Collections => 0x1a61054f => 127
	i32 450948140, ; 43: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 101
	i32 451504562, ; 44: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 186
	i32 459347974, ; 45: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 176
	i32 469710990, ; 46: System.dll => 0x1bff388e => 204
	i32 485463106, ; 47: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 67
	i32 498788369, ; 48: System.ObjectModel => 0x1dbae811 => 162
	i32 500358224, ; 49: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 23
	i32 503918385, ; 50: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 17
	i32 513247710, ; 51: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 64
	i32 539058512, ; 52: Microsoft.Extensions.Logging => 0x20216150 => 61
	i32 546455878, ; 53: System.Runtime.Serialization.Xml => 0x20924146 => 177
	i32 548916678, ; 54: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 50
	i32 577335427, ; 55: System.Security.Cryptography.Cng => 0x22697083 => 182
	i32 592146354, ; 56: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 31
	i32 613668793, ; 57: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 181
	i32 627609679, ; 58: Xamarin.AndroidX.CustomView => 0x2568904f => 99
	i32 627931235, ; 59: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 29
	i32 662205335, ; 60: System.Text.Encodings.Web.dll => 0x27787397 => 191
	i32 672442732, ; 61: System.Collections.Concurrent => 0x2814a96c => 123
	i32 683518922, ; 62: System.Net.Security => 0x28bdabca => 156
	i32 688181140, ; 63: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 11
	i32 690569205, ; 64: System.Xml.Linq.dll => 0x29293ff5 => 200
	i32 706645707, ; 65: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 26
	i32 709152836, ; 66: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 88
	i32 709557578, ; 67: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 14
	i32 722857257, ; 68: System.Runtime.Loader.dll => 0x2b15ed29 => 172
	i32 723796036, ; 69: System.ClientModel.dll => 0x2b244044 => 81
	i32 759454413, ; 70: System.Net.Requests => 0x2d445acd => 155
	i32 762598435, ; 71: System.IO.Pipes.dll => 0x2d745423 => 147
	i32 775507847, ; 72: System.IO.Compression => 0x2e394f87 => 144
	i32 777317022, ; 73: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 35
	i32 789151979, ; 74: Microsoft.Extensions.Options => 0x2f0980eb => 63
	i32 794464650, ; 75: EPPlus.Interfaces => 0x2f5a918a => 48
	i32 804715423, ; 76: System.Data.Common => 0x2ff6fb9f => 133
	i32 809851609, ; 77: System.Drawing.Common.dll => 0x30455ad9 => 84
	i32 823281589, ; 78: System.Private.Uri.dll => 0x311247b5 => 164
	i32 830298997, ; 79: System.IO.Compression.Brotli => 0x317d5b75 => 143
	i32 904024072, ; 80: System.ComponentModel.Primitives.dll => 0x35e25008 => 129
	i32 926902833, ; 81: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 38
	i32 955402788, ; 82: Newtonsoft.Json => 0x38f24a24 => 80
	i32 967690846, ; 83: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 102
	i32 975236339, ; 84: System.Diagnostics.Tracing => 0x3a20ecf3 => 139
	i32 975874589, ; 85: System.Xml.XDocument => 0x3a2aaa1d => 202
	i32 986514023, ; 86: System.Private.DataContractSerialization.dll => 0x3acd0267 => 163
	i32 992768348, ; 87: System.Collections.dll => 0x3b2c715c => 127
	i32 999186168, ; 88: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 60
	i32 1012816738, ; 89: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 112
	i32 1019214401, ; 90: System.Drawing => 0x3cbffa41 => 141
	i32 1028951442, ; 91: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 57
	i32 1029334545, ; 92: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 13
	i32 1035644815, ; 93: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 91
	i32 1036536393, ; 94: System.Drawing.Primitives.dll => 0x3dc84a49 => 140
	i32 1044663988, ; 95: System.Linq.Expressions.dll => 0x3e444eb4 => 148
	i32 1048439329, ; 96: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 0
	i32 1052210849, ; 97: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 104
	i32 1062017875, ; 98: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 66
	i32 1082857460, ; 99: System.ComponentModel.TypeConverter => 0x408b17f4 => 130
	i32 1084122840, ; 100: Xamarin.Kotlin.StdLib => 0x409e66d8 => 117
	i32 1089913930, ; 101: System.Diagnostics.EventLog.dll => 0x40f6c44a => 83
	i32 1098259244, ; 102: System => 0x41761b2c => 204
	i32 1106973742, ; 103: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 54
	i32 1118262833, ; 104: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 26
	i32 1138436374, ; 105: Microsoft.Data.SqlClient.dll => 0x43db2916 => 51
	i32 1168523401, ; 106: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 32
	i32 1173126369, ; 107: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 58
	i32 1178241025, ; 108: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 109
	i32 1203215381, ; 109: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 30
	i32 1208641965, ; 110: System.Diagnostics.Process => 0x480a69ad => 135
	i32 1234928153, ; 111: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 28
	i32 1260983243, ; 112: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 12
	i32 1293217323, ; 113: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 100
	i32 1309188875, ; 114: System.Private.DataContractSerialization => 0x4e08a30b => 163
	i32 1324164729, ; 115: System.Linq => 0x4eed2679 => 149
	i32 1335329327, ; 116: System.Runtime.Serialization.Json.dll => 0x4f97822f => 175
	i32 1373134921, ; 117: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 42
	i32 1376866003, ; 118: Xamarin.AndroidX.SavedState => 0x52114ed3 => 112
	i32 1394483883, ; 119: SistemaPadronMisiones => 0x531e22ab => 119
	i32 1406073936, ; 120: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 96
	i32 1408764838, ; 121: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 174
	i32 1430672901, ; 122: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 10
	i32 1452070440, ; 123: System.Formats.Asn1.dll => 0x568cd628 => 142
	i32 1458022317, ; 124: System.Net.Security.dll => 0x56e7a7ad => 156
	i32 1460893475, ; 125: System.IdentityModel.Tokens.Jwt => 0x57137723 => 85
	i32 1461004990, ; 126: es\Microsoft.Maui.Controls.resources => 0x57152abe => 16
	i32 1461234159, ; 127: System.Collections.Immutable.dll => 0x5718a9ef => 124
	i32 1462112819, ; 128: System.IO.Compression.dll => 0x57261233 => 144
	i32 1469204771, ; 129: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 92
	i32 1470490898, ; 130: Microsoft.Extensions.Primitives => 0x57a5e912 => 64
	i32 1479011226, ; 131: EPPlus => 0x5827eb9a => 47
	i32 1479771757, ; 132: System.Collections.Immutable => 0x5833866d => 124
	i32 1480492111, ; 133: System.IO.Compression.Brotli.dll => 0x583e844f => 143
	i32 1487239319, ; 134: Microsoft.Win32.Primitives => 0x58a57897 => 121
	i32 1493001747, ; 135: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 20
	i32 1498168481, ; 136: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 68
	i32 1514721132, ; 137: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 15
	i32 1521091094, ; 138: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 60
	i32 1536373174, ; 139: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 137
	i32 1543031311, ; 140: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 193
	i32 1551623176, ; 141: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 35
	i32 1551954004, ; 142: Microsoft.IO.RecyclableMemoryStream.dll => 0x5c80f054 => 73
	i32 1565310744, ; 143: System.Runtime.Caching => 0x5d4cbf18 => 87
	i32 1573704789, ; 144: System.Runtime.Serialization.Json => 0x5dccd455 => 175
	i32 1582305585, ; 145: Azure.Identity => 0x5e501131 => 46
	i32 1596263029, ; 146: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 9
	i32 1604827217, ; 147: System.Net.WebClient => 0x5fa7b851 => 159
	i32 1622152042, ; 148: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 106
	i32 1624863272, ; 149: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 115
	i32 1628113371, ; 150: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 71
	i32 1631539578, ; 151: EPPlus.System.Drawing.dll => 0x613f517a => 49
	i32 1632842087, ; 152: Microsoft.Extensions.Configuration.Json => 0x61533167 => 55
	i32 1636350590, ; 153: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 98
	i32 1639515021, ; 154: System.Net.Http.dll => 0x61b9038d => 151
	i32 1639986890, ; 155: System.Text.RegularExpressions => 0x61c036ca => 193
	i32 1657153582, ; 156: System.Runtime => 0x62c6282e => 178
	i32 1658251792, ; 157: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 116
	i32 1677501392, ; 158: System.Net.Primitives.dll => 0x63fca3d0 => 154
	i32 1679769178, ; 159: System.Security.Cryptography => 0x641f3e5a => 187
	i32 1696967625, ; 160: System.Security.Cryptography.Csp => 0x6525abc9 => 183
	i32 1729485958, ; 161: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 94
	i32 1736233607, ; 162: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 33
	i32 1743415430, ; 163: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 11
	i32 1744735666, ; 164: System.Transactions.Local.dll => 0x67fe8db2 => 199
	i32 1750313021, ; 165: Microsoft.Win32.Primitives.dll => 0x6853a83d => 121
	i32 1763938596, ; 166: System.Diagnostics.TraceSource.dll => 0x69239124 => 138
	i32 1766324549, ; 167: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 113
	i32 1770582343, ; 168: Microsoft.Extensions.Logging.dll => 0x6988f147 => 61
	i32 1780572499, ; 169: Mono.Android.Runtime.dll => 0x6a216153 => 208
	i32 1782862114, ; 170: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 27
	i32 1788241197, ; 171: Xamarin.AndroidX.Fragment => 0x6a96652d => 101
	i32 1793755602, ; 172: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 19
	i32 1794500907, ; 173: Microsoft.Identity.Client.dll => 0x6af5e92b => 65
	i32 1796167890, ; 174: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 50
	i32 1808609942, ; 175: Xamarin.AndroidX.Loader => 0x6bcd3296 => 106
	i32 1813058853, ; 176: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 117
	i32 1813201214, ; 177: Xamarin.Google.Android.Material => 0x6c13413e => 116
	i32 1818569960, ; 178: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 110
	i32 1824175904, ; 179: System.Text.Encoding.Extensions => 0x6cbab720 => 190
	i32 1824722060, ; 180: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 174
	i32 1828688058, ; 181: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 62
	i32 1842015223, ; 182: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 39
	i32 1853025655, ; 183: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 36
	i32 1858542181, ; 184: System.Linq.Expressions => 0x6ec71a65 => 148
	i32 1870277092, ; 185: System.Reflection.Primitives => 0x6f7a29e4 => 169
	i32 1871986876, ; 186: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 71
	i32 1875935024, ; 187: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 18
	i32 1910275211, ; 188: System.Collections.NonGeneric.dll => 0x71dc7c8b => 125
	i32 1939592360, ; 189: System.Private.Xml.Linq => 0x739bd4a8 => 165
	i32 1968388702, ; 190: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 52
	i32 1986222447, ; 191: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 72
	i32 2003115576, ; 192: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 15
	i32 2011961780, ; 193: System.Buffers.dll => 0x77ec19b4 => 122
	i32 2019465201, ; 194: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 104
	i32 2025202353, ; 195: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 10
	i32 2040764568, ; 196: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 66
	i32 2045470958, ; 197: System.Private.Xml => 0x79eb68ee => 166
	i32 2055257422, ; 198: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 103
	i32 2066184531, ; 199: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 14
	i32 2070888862, ; 200: System.Diagnostics.TraceSource => 0x7b6f419e => 138
	i32 2072397586, ; 201: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 59
	i32 2079903147, ; 202: System.Runtime.dll => 0x7bf8cdab => 178
	i32 2090596640, ; 203: System.Numerics.Vectors => 0x7c9bf920 => 161
	i32 2127167465, ; 204: System.Console => 0x7ec9ffe9 => 132
	i32 2142473426, ; 205: System.Collections.Specialized => 0x7fb38cd2 => 126
	i32 2143465592, ; 206: Microsoft.IO.RecyclableMemoryStream => 0x7fc2b078 => 73
	i32 2143790110, ; 207: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 203
	i32 2159891885, ; 208: Microsoft.Maui => 0x80bd55ad => 76
	i32 2169148018, ; 209: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 22
	i32 2181898931, ; 210: Microsoft.Extensions.Options.dll => 0x820d22b3 => 63
	i32 2192057212, ; 211: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 62
	i32 2193016926, ; 212: System.ObjectModel.dll => 0x82b6c85e => 162
	i32 2201107256, ; 213: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 118
	i32 2201231467, ; 214: System.Net.Http => 0x8334206b => 151
	i32 2207618523, ; 215: it\Microsoft.Maui.Controls.resources => 0x839595db => 24
	i32 2228745826, ; 216: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 6
	i32 2253551641, ; 217: Microsoft.IdentityModel.Protocols => 0x86527819 => 70
	i32 2265110946, ; 218: System.Security.AccessControl.dll => 0x8702d9a2 => 179
	i32 2266799131, ; 219: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 53
	i32 2270573516, ; 220: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 18
	i32 2279755925, ; 221: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 111
	i32 2295906218, ; 222: System.Net.Sockets => 0x88d8bfaa => 158
	i32 2298796049, ; 223: EPPlus.System.Drawing => 0x8904d811 => 49
	i32 2303942373, ; 224: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 28
	i32 2305521784, ; 225: System.Private.CoreLib.dll => 0x896b7878 => 206
	i32 2309278602, ; 226: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 5
	i32 2340441535, ; 227: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 170
	i32 2353062107, ; 228: System.Net.Primitives => 0x8c40e0db => 154
	i32 2368005991, ; 229: System.Xml.ReaderWriter.dll => 0x8d24e767 => 201
	i32 2369706906, ; 230: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 69
	i32 2371007202, ; 231: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 52
	i32 2378619854, ; 232: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 183
	i32 2383496789, ; 233: System.Security.Principal.Windows.dll => 0x8e114655 => 188
	i32 2395872292, ; 234: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 23
	i32 2427813419, ; 235: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 20
	i32 2435356389, ; 236: System.Console.dll => 0x912896e5 => 132
	i32 2458678730, ; 237: System.Net.Sockets.dll => 0x928c75ca => 158
	i32 2471841756, ; 238: netstandard.dll => 0x93554fdc => 205
	i32 2475788418, ; 239: Java.Interop.dll => 0x93918882 => 207
	i32 2480646305, ; 240: Microsoft.Maui.Controls => 0x93dba8a1 => 74
	i32 2484371297, ; 241: System.Net.ServicePoint => 0x94147f61 => 157
	i32 2509217888, ; 242: System.Diagnostics.EventLog => 0x958fa060 => 83
	i32 2538310050, ; 243: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 168
	i32 2548432851, ; 244: EPPlus.Interfaces.dll => 0x97e5ffd3 => 48
	i32 2550873716, ; 245: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 21
	i32 2562349572, ; 246: Microsoft.CSharp => 0x98ba5a04 => 120
	i32 2570120770, ; 247: System.Text.Encodings.Web => 0x9930ee42 => 191
	i32 2585220780, ; 248: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 190
	i32 2589602615, ; 249: System.Threading.ThreadPool => 0x9a5a3337 => 197
	i32 2592341985, ; 250: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 58
	i32 2593496499, ; 251: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 30
	i32 2605712449, ; 252: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 118
	i32 2617129537, ; 253: System.Private.Xml.dll => 0x9bfe3a41 => 166
	i32 2620871830, ; 254: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 98
	i32 2626831493, ; 255: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 25
	i32 2627185994, ; 256: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 137
	i32 2628210652, ; 257: System.Memory.Data => 0x9ca74fdc => 86
	i32 2640290731, ; 258: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 69
	i32 2640706905, ; 259: Azure.Core => 0x9d65fd59 => 45
	i32 2660759594, ; 260: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 89
	i32 2663698177, ; 261: System.Runtime.Loader => 0x9ec4cf01 => 172
	i32 2664396074, ; 262: System.Xml.XDocument.dll => 0x9ecf752a => 202
	i32 2665622720, ; 263: System.Drawing.Primitives => 0x9ee22cc0 => 140
	i32 2676780864, ; 264: System.Data.Common.dll => 0x9f8c6f40 => 133
	i32 2677098746, ; 265: Azure.Identity.dll => 0x9f9148fa => 46
	i32 2686887180, ; 266: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 177
	i32 2717744543, ; 267: System.Security.Claims => 0xa1fd7d9f => 180
	i32 2719963679, ; 268: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 182
	i32 2724373263, ; 269: System.Runtime.Numerics.dll => 0xa262a30f => 173
	i32 2732626843, ; 270: Xamarin.AndroidX.Activity => 0xa2e0939b => 90
	i32 2735172069, ; 271: System.Threading.Channels => 0xa30769e5 => 194
	i32 2737747696, ; 272: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 92
	i32 2740051746, ; 273: Microsoft.Identity.Client => 0xa351df22 => 65
	i32 2752995522, ; 274: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 31
	i32 2755098380, ; 275: Microsoft.SqlServer.Server.dll => 0xa437770c => 79
	i32 2758225723, ; 276: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 75
	i32 2764765095, ; 277: Microsoft.Maui.dll => 0xa4caf7a7 => 76
	i32 2765824710, ; 278: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 189
	i32 2778768386, ; 279: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 114
	i32 2785988530, ; 280: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 37
	i32 2801831435, ; 281: Microsoft.Maui.Graphics => 0xa7008e0b => 78
	i32 2804509662, ; 282: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 1
	i32 2806116107, ; 283: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 16
	i32 2810250172, ; 284: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 96
	i32 2831556043, ; 285: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 29
	i32 2841937114, ; 286: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 3
	i32 2853208004, ; 287: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 114
	i32 2861189240, ; 288: Microsoft.Maui.Essentials => 0xaa8a4878 => 77
	i32 2867946736, ; 289: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 89
	i32 2909740682, ; 290: System.Private.CoreLib => 0xad6f1e8a => 206
	i32 2911054922, ; 291: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 59
	i32 2916838712, ; 292: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 115
	i32 2919462931, ; 293: System.Numerics.Vectors.dll => 0xae037813 => 161
	i32 2940926066, ; 294: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 136
	i32 2944313911, ; 295: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 82
	i32 2959614098, ; 296: System.ComponentModel.dll => 0xb0682092 => 131
	i32 2968338931, ; 297: System.Security.Principal.Windows => 0xb0ed41f3 => 188
	i32 2972252294, ; 298: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 181
	i32 2978675010, ; 299: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 100
	i32 3012788804, ; 300: System.Configuration.ConfigurationManager => 0xb3938244 => 82
	i32 3023511517, ; 301: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 7
	i32 3033605958, ; 302: System.Memory.Data.dll => 0xb4d12746 => 86
	i32 3038032645, ; 303: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 44
	i32 3057625584, ; 304: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 107
	i32 3059408633, ; 305: Mono.Android.Runtime => 0xb65adef9 => 208
	i32 3059793426, ; 306: System.ComponentModel.Primitives => 0xb660be12 => 129
	i32 3077302341, ; 307: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 22
	i32 3084678329, ; 308: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 72
	i32 3090735792, ; 309: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 186
	i32 3099732863, ; 310: System.Security.Claims.dll => 0xb8c22b7f => 180
	i32 3103600923, ; 311: System.Formats.Asn1 => 0xb8fd311b => 142
	i32 3121463068, ; 312: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 145
	i32 3124832203, ; 313: System.Threading.Tasks.Extensions => 0xba4127cb => 195
	i32 3132293585, ; 314: System.Security.AccessControl => 0xbab301d1 => 179
	i32 3147165239, ; 315: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 139
	i32 3158628304, ; 316: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 9
	i32 3159123045, ; 317: System.Reflection.Primitives.dll => 0xbc4c6465 => 169
	i32 3178803400, ; 318: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 108
	i32 3220365878, ; 319: System.Threading => 0xbff2e236 => 198
	i32 3258312781, ; 320: Xamarin.AndroidX.CardView => 0xc235e84d => 94
	i32 3265893370, ; 321: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 195
	i32 3268887220, ; 322: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 2
	i32 3276600297, ; 323: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 6
	i32 3280506390, ; 324: System.ComponentModel.Annotations.dll => 0xc3888e16 => 128
	i32 3290767353, ; 325: System.Security.Cryptography.Encoding => 0xc4251ff9 => 184
	i32 3305363605, ; 326: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 17
	i32 3312457198, ; 327: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 68
	i32 3316684772, ; 328: System.Net.Requests.dll => 0xc5b097e4 => 155
	i32 3317135071, ; 329: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 99
	i32 3343947874, ; 330: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 2
	i32 3346324047, ; 331: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 109
	i32 3357674450, ; 332: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 34
	i32 3358260929, ; 333: System.Text.Json => 0xc82afec1 => 192
	i32 3362522851, ; 334: Xamarin.AndroidX.Core => 0xc86c06e3 => 97
	i32 3366347497, ; 335: Java.Interop => 0xc8a662e9 => 207
	i32 3374879918, ; 336: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 70
	i32 3374999561, ; 337: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 111
	i32 3381016424, ; 338: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 13
	i32 3428513518, ; 339: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 56
	i32 3430777524, ; 340: netstandard => 0xcc7d82b4 => 205
	i32 3463511458, ; 341: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 21
	i32 3471940407, ; 342: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 130
	i32 3476120550, ; 343: Mono.Android => 0xcf3163e6 => 209
	i32 3479583265, ; 344: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 34
	i32 3484440000, ; 345: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 33
	i32 3485117614, ; 346: System.Text.Json.dll => 0xcfbaacae => 192
	i32 3509114376, ; 347: System.Xml.Linq => 0xd128d608 => 200
	i32 3545306353, ; 348: Microsoft.Data.SqlClient => 0xd35114f1 => 51
	i32 3555084973, ; 349: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 0
	i32 3558648585, ; 350: System.ClientModel => 0xd41cab09 => 81
	i32 3561949811, ; 351: Azure.Core.dll => 0xd44f0a73 => 45
	i32 3570554715, ; 352: System.IO.FileSystem.AccessControl => 0xd4d2575b => 145
	i32 3570608287, ; 353: System.Runtime.Caching.dll => 0xd4d3289f => 87
	i32 3580758918, ; 354: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 41
	i32 3608519521, ; 355: System.Linq.dll => 0xd715a361 => 149
	i32 3624195450, ; 356: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 170
	i32 3641597786, ; 357: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 103
	i32 3643446276, ; 358: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 38
	i32 3643854240, ; 359: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 108
	i32 3657292374, ; 360: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 53
	i32 3660523487, ; 361: System.Net.NetworkInformation => 0xda2f27df => 153
	i32 3672681054, ; 362: Mono.Android.dll => 0xdae8aa5e => 209
	i32 3682565725, ; 363: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 93
	i32 3689375977, ; 364: System.Drawing.Common => 0xdbe768e9 => 84
	i32 3697841164, ; 365: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 43
	i32 3700591436, ; 366: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 67
	i32 3722202641, ; 367: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 55
	i32 3724971120, ; 368: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 107
	i32 3732100267, ; 369: System.Net.NameResolution => 0xde7354ab => 152
	i32 3748608112, ; 370: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 134
	i32 3750207367, ; 371: SistemaPadronMisiones.dll => 0xdf879f87 => 119
	i32 3758424670, ; 372: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 54
	i32 3786282454, ; 373: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 95
	i32 3792276235, ; 374: System.Collections.NonGeneric => 0xe2098b0b => 125
	i32 3802395368, ; 375: System.Collections.Specialized.dll => 0xe2a3f2e8 => 126
	i32 3803019198, ; 376: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 8
	i32 3807198597, ; 377: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 88
	i32 3823082795, ; 378: System.Security.Cryptography.dll => 0xe3df9d2b => 187
	i32 3841636137, ; 379: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 57
	i32 3848348906, ; 380: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 1
	i32 3849253459, ; 381: System.Runtime.InteropServices.dll => 0xe56ef253 => 171
	i32 3875112723, ; 382: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 184
	i32 3885497537, ; 383: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 160
	i32 3889960447, ; 384: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 42
	i32 3896106733, ; 385: System.Collections.Concurrent.dll => 0xe839deed => 123
	i32 3896760992, ; 386: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 97
	i32 3928044579, ; 387: System.Xml.ReaderWriter => 0xea213423 => 201
	i32 3931092270, ; 388: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 110
	i32 3953953790, ; 389: System.Text.Encoding.CodePages => 0xebac8bfe => 189
	i32 3955647286, ; 390: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 91
	i32 3980434154, ; 391: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 37
	i32 3987592930, ; 392: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 19
	i32 4003436829, ; 393: System.Diagnostics.Process.dll => 0xee9f991d => 135
	i32 4025784931, ; 394: System.Memory => 0xeff49a63 => 150
	i32 4046471985, ; 395: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 75
	i32 4054681211, ; 396: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 167
	i32 4068434129, ; 397: System.Private.Xml.Linq.dll => 0xf27f60d1 => 165
	i32 4073602200, ; 398: System.Threading.dll => 0xf2ce3c98 => 198
	i32 4094352644, ; 399: Microsoft.Maui.Essentials.dll => 0xf40add04 => 77
	i32 4099507663, ; 400: System.Drawing.dll => 0xf45985cf => 141
	i32 4100113165, ; 401: System.Private.Uri => 0xf462c30d => 164
	i32 4102112229, ; 402: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 32
	i32 4125707920, ; 403: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 27
	i32 4126470640, ; 404: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 56
	i32 4127667938, ; 405: System.IO.FileSystem.Watcher => 0xf60736e2 => 146
	i32 4147896353, ; 406: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 167
	i32 4150914736, ; 407: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 39
	i32 4159265925, ; 408: System.Xml.XmlSerializer => 0xf7e95c85 => 203
	i32 4164802419, ; 409: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 146
	i32 4181436372, ; 410: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 176
	i32 4182413190, ; 411: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 105
	i32 4196529839, ; 412: System.Net.WebClient.dll => 0xfa21f6af => 159
	i32 4213026141, ; 413: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 134
	i32 4257443520, ; 414: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 5
	i32 4260525087, ; 415: System.Buffers => 0xfdf2741f => 122
	i32 4263231520, ; 416: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 85
	i32 4271975918, ; 417: Microsoft.Maui.Controls.dll => 0xfea12dee => 74
	i32 4274976490, ; 418: System.Runtime.Numerics => 0xfecef6ea => 173
	i32 4292120959 ; 419: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 105
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [420 x i32] [
	i32 153, ; 0
	i32 152, ; 1
	i32 80, ; 2
	i32 196, ; 3
	i32 3, ; 4
	i32 4, ; 5
	i32 136, ; 6
	i32 43, ; 7
	i32 185, ; 8
	i32 78, ; 9
	i32 171, ; 10
	i32 194, ; 11
	i32 47, ; 12
	i32 4, ; 13
	i32 160, ; 14
	i32 185, ; 15
	i32 128, ; 16
	i32 95, ; 17
	i32 7, ; 18
	i32 113, ; 19
	i32 40, ; 20
	i32 41, ; 21
	i32 131, ; 22
	i32 93, ; 23
	i32 120, ; 24
	i32 168, ; 25
	i32 8, ; 26
	i32 12, ; 27
	i32 40, ; 28
	i32 90, ; 29
	i32 79, ; 30
	i32 25, ; 31
	i32 102, ; 32
	i32 24, ; 33
	i32 147, ; 34
	i32 199, ; 35
	i32 157, ; 36
	i32 196, ; 37
	i32 150, ; 38
	i32 197, ; 39
	i32 44, ; 40
	i32 36, ; 41
	i32 127, ; 42
	i32 101, ; 43
	i32 186, ; 44
	i32 176, ; 45
	i32 204, ; 46
	i32 67, ; 47
	i32 162, ; 48
	i32 23, ; 49
	i32 17, ; 50
	i32 64, ; 51
	i32 61, ; 52
	i32 177, ; 53
	i32 50, ; 54
	i32 182, ; 55
	i32 31, ; 56
	i32 181, ; 57
	i32 99, ; 58
	i32 29, ; 59
	i32 191, ; 60
	i32 123, ; 61
	i32 156, ; 62
	i32 11, ; 63
	i32 200, ; 64
	i32 26, ; 65
	i32 88, ; 66
	i32 14, ; 67
	i32 172, ; 68
	i32 81, ; 69
	i32 155, ; 70
	i32 147, ; 71
	i32 144, ; 72
	i32 35, ; 73
	i32 63, ; 74
	i32 48, ; 75
	i32 133, ; 76
	i32 84, ; 77
	i32 164, ; 78
	i32 143, ; 79
	i32 129, ; 80
	i32 38, ; 81
	i32 80, ; 82
	i32 102, ; 83
	i32 139, ; 84
	i32 202, ; 85
	i32 163, ; 86
	i32 127, ; 87
	i32 60, ; 88
	i32 112, ; 89
	i32 141, ; 90
	i32 57, ; 91
	i32 13, ; 92
	i32 91, ; 93
	i32 140, ; 94
	i32 148, ; 95
	i32 0, ; 96
	i32 104, ; 97
	i32 66, ; 98
	i32 130, ; 99
	i32 117, ; 100
	i32 83, ; 101
	i32 204, ; 102
	i32 54, ; 103
	i32 26, ; 104
	i32 51, ; 105
	i32 32, ; 106
	i32 58, ; 107
	i32 109, ; 108
	i32 30, ; 109
	i32 135, ; 110
	i32 28, ; 111
	i32 12, ; 112
	i32 100, ; 113
	i32 163, ; 114
	i32 149, ; 115
	i32 175, ; 116
	i32 42, ; 117
	i32 112, ; 118
	i32 119, ; 119
	i32 96, ; 120
	i32 174, ; 121
	i32 10, ; 122
	i32 142, ; 123
	i32 156, ; 124
	i32 85, ; 125
	i32 16, ; 126
	i32 124, ; 127
	i32 144, ; 128
	i32 92, ; 129
	i32 64, ; 130
	i32 47, ; 131
	i32 124, ; 132
	i32 143, ; 133
	i32 121, ; 134
	i32 20, ; 135
	i32 68, ; 136
	i32 15, ; 137
	i32 60, ; 138
	i32 137, ; 139
	i32 193, ; 140
	i32 35, ; 141
	i32 73, ; 142
	i32 87, ; 143
	i32 175, ; 144
	i32 46, ; 145
	i32 9, ; 146
	i32 159, ; 147
	i32 106, ; 148
	i32 115, ; 149
	i32 71, ; 150
	i32 49, ; 151
	i32 55, ; 152
	i32 98, ; 153
	i32 151, ; 154
	i32 193, ; 155
	i32 178, ; 156
	i32 116, ; 157
	i32 154, ; 158
	i32 187, ; 159
	i32 183, ; 160
	i32 94, ; 161
	i32 33, ; 162
	i32 11, ; 163
	i32 199, ; 164
	i32 121, ; 165
	i32 138, ; 166
	i32 113, ; 167
	i32 61, ; 168
	i32 208, ; 169
	i32 27, ; 170
	i32 101, ; 171
	i32 19, ; 172
	i32 65, ; 173
	i32 50, ; 174
	i32 106, ; 175
	i32 117, ; 176
	i32 116, ; 177
	i32 110, ; 178
	i32 190, ; 179
	i32 174, ; 180
	i32 62, ; 181
	i32 39, ; 182
	i32 36, ; 183
	i32 148, ; 184
	i32 169, ; 185
	i32 71, ; 186
	i32 18, ; 187
	i32 125, ; 188
	i32 165, ; 189
	i32 52, ; 190
	i32 72, ; 191
	i32 15, ; 192
	i32 122, ; 193
	i32 104, ; 194
	i32 10, ; 195
	i32 66, ; 196
	i32 166, ; 197
	i32 103, ; 198
	i32 14, ; 199
	i32 138, ; 200
	i32 59, ; 201
	i32 178, ; 202
	i32 161, ; 203
	i32 132, ; 204
	i32 126, ; 205
	i32 73, ; 206
	i32 203, ; 207
	i32 76, ; 208
	i32 22, ; 209
	i32 63, ; 210
	i32 62, ; 211
	i32 162, ; 212
	i32 118, ; 213
	i32 151, ; 214
	i32 24, ; 215
	i32 6, ; 216
	i32 70, ; 217
	i32 179, ; 218
	i32 53, ; 219
	i32 18, ; 220
	i32 111, ; 221
	i32 158, ; 222
	i32 49, ; 223
	i32 28, ; 224
	i32 206, ; 225
	i32 5, ; 226
	i32 170, ; 227
	i32 154, ; 228
	i32 201, ; 229
	i32 69, ; 230
	i32 52, ; 231
	i32 183, ; 232
	i32 188, ; 233
	i32 23, ; 234
	i32 20, ; 235
	i32 132, ; 236
	i32 158, ; 237
	i32 205, ; 238
	i32 207, ; 239
	i32 74, ; 240
	i32 157, ; 241
	i32 83, ; 242
	i32 168, ; 243
	i32 48, ; 244
	i32 21, ; 245
	i32 120, ; 246
	i32 191, ; 247
	i32 190, ; 248
	i32 197, ; 249
	i32 58, ; 250
	i32 30, ; 251
	i32 118, ; 252
	i32 166, ; 253
	i32 98, ; 254
	i32 25, ; 255
	i32 137, ; 256
	i32 86, ; 257
	i32 69, ; 258
	i32 45, ; 259
	i32 89, ; 260
	i32 172, ; 261
	i32 202, ; 262
	i32 140, ; 263
	i32 133, ; 264
	i32 46, ; 265
	i32 177, ; 266
	i32 180, ; 267
	i32 182, ; 268
	i32 173, ; 269
	i32 90, ; 270
	i32 194, ; 271
	i32 92, ; 272
	i32 65, ; 273
	i32 31, ; 274
	i32 79, ; 275
	i32 75, ; 276
	i32 76, ; 277
	i32 189, ; 278
	i32 114, ; 279
	i32 37, ; 280
	i32 78, ; 281
	i32 1, ; 282
	i32 16, ; 283
	i32 96, ; 284
	i32 29, ; 285
	i32 3, ; 286
	i32 114, ; 287
	i32 77, ; 288
	i32 89, ; 289
	i32 206, ; 290
	i32 59, ; 291
	i32 115, ; 292
	i32 161, ; 293
	i32 136, ; 294
	i32 82, ; 295
	i32 131, ; 296
	i32 188, ; 297
	i32 181, ; 298
	i32 100, ; 299
	i32 82, ; 300
	i32 7, ; 301
	i32 86, ; 302
	i32 44, ; 303
	i32 107, ; 304
	i32 208, ; 305
	i32 129, ; 306
	i32 22, ; 307
	i32 72, ; 308
	i32 186, ; 309
	i32 180, ; 310
	i32 142, ; 311
	i32 145, ; 312
	i32 195, ; 313
	i32 179, ; 314
	i32 139, ; 315
	i32 9, ; 316
	i32 169, ; 317
	i32 108, ; 318
	i32 198, ; 319
	i32 94, ; 320
	i32 195, ; 321
	i32 2, ; 322
	i32 6, ; 323
	i32 128, ; 324
	i32 184, ; 325
	i32 17, ; 326
	i32 68, ; 327
	i32 155, ; 328
	i32 99, ; 329
	i32 2, ; 330
	i32 109, ; 331
	i32 34, ; 332
	i32 192, ; 333
	i32 97, ; 334
	i32 207, ; 335
	i32 70, ; 336
	i32 111, ; 337
	i32 13, ; 338
	i32 56, ; 339
	i32 205, ; 340
	i32 21, ; 341
	i32 130, ; 342
	i32 209, ; 343
	i32 34, ; 344
	i32 33, ; 345
	i32 192, ; 346
	i32 200, ; 347
	i32 51, ; 348
	i32 0, ; 349
	i32 81, ; 350
	i32 45, ; 351
	i32 145, ; 352
	i32 87, ; 353
	i32 41, ; 354
	i32 149, ; 355
	i32 170, ; 356
	i32 103, ; 357
	i32 38, ; 358
	i32 108, ; 359
	i32 53, ; 360
	i32 153, ; 361
	i32 209, ; 362
	i32 93, ; 363
	i32 84, ; 364
	i32 43, ; 365
	i32 67, ; 366
	i32 55, ; 367
	i32 107, ; 368
	i32 152, ; 369
	i32 134, ; 370
	i32 119, ; 371
	i32 54, ; 372
	i32 95, ; 373
	i32 125, ; 374
	i32 126, ; 375
	i32 8, ; 376
	i32 88, ; 377
	i32 187, ; 378
	i32 57, ; 379
	i32 1, ; 380
	i32 171, ; 381
	i32 184, ; 382
	i32 160, ; 383
	i32 42, ; 384
	i32 123, ; 385
	i32 97, ; 386
	i32 201, ; 387
	i32 110, ; 388
	i32 189, ; 389
	i32 91, ; 390
	i32 37, ; 391
	i32 19, ; 392
	i32 135, ; 393
	i32 150, ; 394
	i32 75, ; 395
	i32 167, ; 396
	i32 165, ; 397
	i32 198, ; 398
	i32 77, ; 399
	i32 141, ; 400
	i32 164, ; 401
	i32 32, ; 402
	i32 27, ; 403
	i32 56, ; 404
	i32 146, ; 405
	i32 167, ; 406
	i32 39, ; 407
	i32 203, ; 408
	i32 146, ; 409
	i32 176, ; 410
	i32 105, ; 411
	i32 159, ; 412
	i32 134, ; 413
	i32 5, ; 414
	i32 122, ; 415
	i32 85, ; 416
	i32 74, ; 417
	i32 173, ; 418
	i32 105 ; 419
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
