; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [353 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [700 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 263
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 297
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 212
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 9: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 308
	i32 57727992, ; 10: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 309
	i32 65960268, ; 11: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 211
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 348
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 15: Microsoft.Maui.Graphics.dll => 0x44bb714 => 209
	i32 82292897, ; 16: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 281
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 281
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 123514077, ; 21: EPPlus.dll => 0x75cacdd => 175
	i32 134690465, ; 22: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 301
	i32 139659294, ; 23: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 309
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 25: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 26: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 27: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 237
	i32 166535111, ; 28: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 312
	i32 176265551, ; 29: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 30: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 283
	i32 184328833, ; 31: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 32: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 345
	i32 199333315, ; 33: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 346
	i32 205061960, ; 34: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 35: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 235
	i32 220171995, ; 36: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 37: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 257
	i32 230752869, ; 38: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 39: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 40: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 41: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 42: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 240
	i32 264223668, ; 43: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 313
	i32 276479776, ; 44: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 259
	i32 280482487, ; 46: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 256
	i32 280992041, ; 47: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 317
	i32 291076382, ; 48: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 49: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 50: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 345
	i32 318968648, ; 51: Xamarin.AndroidX.Activity.dll => 0x13031348 => 226
	i32 321597661, ; 52: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 53: Microsoft.SqlServer.Server => 0x13ada4fd => 210
	i32 336156722, ; 54: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 330
	i32 342366114, ; 55: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 258
	i32 356389973, ; 56: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 329
	i32 360082299, ; 57: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 58: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 59: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 60: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 61: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 62: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 63: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 64: _Microsoft.Android.Resource.Designer => 0x17969339 => 349
	i32 403441872, ; 65: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 66: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 341
	i32 441335492, ; 67: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 241
	i32 442565967, ; 68: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 69: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 254
	i32 451504562, ; 70: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 71: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 72: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 73: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 74: System.dll => 0x1bff388e => 164
	i32 476646585, ; 75: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 256
	i32 485463106, ; 76: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 197
	i32 486930444, ; 77: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 269
	i32 498788369, ; 78: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 79: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 328
	i32 503918385, ; 80: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 322
	i32 513247710, ; 81: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 194
	i32 526420162, ; 82: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 83: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 301
	i32 530272170, ; 84: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 85: Microsoft.Extensions.Logging => 0x20216150 => 190
	i32 540030774, ; 86: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 87: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 89: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 179
	i32 549171840, ; 90: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 91: Jsr305Binding => 0x213954e7 => 294
	i32 569601784, ; 92: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 292
	i32 577335427, ; 93: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 94: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 336
	i32 601371474, ; 95: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 96: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 97: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 98: Xamarin.AndroidX.CustomView => 0x2568904f => 246
	i32 627931235, ; 99: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 334
	i32 639843206, ; 100: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 252
	i32 643868501, ; 101: System.Net => 0x2660a755 => 81
	i32 662205335, ; 102: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 103: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 288
	i32 666292255, ; 104: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 233
	i32 672442732, ; 105: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 106: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 107: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 316
	i32 690569205, ; 108: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 109: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 303
	i32 693804605, ; 110: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 111: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 112: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 298
	i32 700358131, ; 113: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 114: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 331
	i32 709152836, ; 115: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 220
	i32 709557578, ; 116: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 319
	i32 720511267, ; 117: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 302
	i32 722857257, ; 118: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 119: System.ClientModel.dll => 0x2b244044 => 213
	i32 735137430, ; 120: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 121: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 122: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 223
	i32 759454413, ; 123: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 124: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 125: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 126: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 340
	i32 789151979, ; 127: Microsoft.Extensions.Options => 0x2f0980eb => 193
	i32 790371945, ; 128: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 247
	i32 794464650, ; 129: EPPlus.Interfaces => 0x2f5a918a => 176
	i32 804715423, ; 130: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 131: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 261
	i32 809851609, ; 132: System.Drawing.Common.dll => 0x30455ad9 => 216
	i32 823281589, ; 133: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 134: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 135: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 136: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 137: Xamarin.AndroidX.Print => 0x3246f6cd => 274
	i32 873119928, ; 138: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 139: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 140: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 141: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 142: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 143: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 343
	i32 928116545, ; 144: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 297
	i32 952186615, ; 145: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 146: Newtonsoft.Json => 0x38f24a24 => 212
	i32 956575887, ; 147: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 302
	i32 966729478, ; 148: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 295
	i32 967690846, ; 149: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 258
	i32 975236339, ; 150: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 151: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 152: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 153: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 154: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 155: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 156: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 189
	i32 1001831731, ; 157: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 158: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 278
	i32 1019214401, ; 159: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 160: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 186
	i32 1029334545, ; 161: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 318
	i32 1031528504, ; 162: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 296
	i32 1035644815, ; 163: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 231
	i32 1036536393, ; 164: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 165: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048439329, ; 166: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 305
	i32 1052210849, ; 167: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 265
	i32 1062017875, ; 168: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 196
	i32 1067306892, ; 169: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 170: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 171: Xamarin.Kotlin.StdLib => 0x409e66d8 => 299
	i32 1089913930, ; 172: System.Diagnostics.EventLog.dll => 0x40f6c44a => 215
	i32 1098259244, ; 173: System => 0x41761b2c => 164
	i32 1106973742, ; 174: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 183
	i32 1118262833, ; 175: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 331
	i32 1121599056, ; 176: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 264
	i32 1127624469, ; 177: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 192
	i32 1138436374, ; 178: Microsoft.Data.SqlClient.dll => 0x43db2916 => 180
	i32 1149092582, ; 179: Xamarin.AndroidX.Window => 0x447dc2e6 => 291
	i32 1168523401, ; 180: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 337
	i32 1170634674, ; 181: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 182: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 187
	i32 1175144683, ; 183: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 287
	i32 1178241025, ; 184: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 272
	i32 1203215381, ; 185: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 335
	i32 1204270330, ; 186: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 233
	i32 1208641965, ; 187: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 188: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 189: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 333
	i32 1243150071, ; 190: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 292
	i32 1253011324, ; 191: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 192: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 317
	i32 1264511973, ; 193: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 282
	i32 1267360935, ; 194: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 286
	i32 1273260888, ; 195: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 238
	i32 1275534314, ; 196: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 303
	i32 1278448581, ; 197: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 230
	i32 1293217323, ; 198: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 249
	i32 1309188875, ; 199: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 200: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 291
	i32 1324164729, ; 201: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 202: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 203: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 204: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 347
	i32 1376866003, ; 205: Xamarin.AndroidX.SavedState => 0x52114ed3 => 278
	i32 1379779777, ; 206: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1394483883, ; 207: SistemaPadronMisiones => 0x531e22ab => 0
	i32 1402170036, ; 208: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 209: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 242
	i32 1408764838, ; 210: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 211: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 212: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 213: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 315
	i32 1434145427, ; 214: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 215: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 295
	i32 1439761251, ; 216: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 217: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 218: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 219: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 220: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 221: System.IdentityModel.Tokens.Jwt => 0x57137723 => 217
	i32 1461004990, ; 222: es\Microsoft.Maui.Controls.resources => 0x57152abe => 321
	i32 1461234159, ; 223: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 224: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 225: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 226: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 232
	i32 1470490898, ; 227: Microsoft.Extensions.Primitives => 0x57a5e912 => 194
	i32 1479011226, ; 228: EPPlus => 0x5827eb9a => 175
	i32 1479771757, ; 229: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 230: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 231: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 232: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 279
	i32 1493001747, ; 233: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 325
	i32 1498168481, ; 234: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 198
	i32 1514721132, ; 235: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 320
	i32 1521091094, ; 236: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 189
	i32 1536373174, ; 237: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 238: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 239: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 240: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 241: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 340
	i32 1551954004, ; 242: Microsoft.IO.RecyclableMemoryStream.dll => 0x5c80f054 => 203
	i32 1565310744, ; 243: System.Runtime.Caching => 0x5d4cbf18 => 219
	i32 1565862583, ; 244: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 245: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 246: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 247: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 248: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 249: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 248
	i32 1592978981, ; 250: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 251: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 314
	i32 1597949149, ; 252: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 296
	i32 1601112923, ; 253: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 254: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 255: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 256: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 268
	i32 1622358360, ; 257: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 258: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 290
	i32 1628113371, ; 259: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 201
	i32 1631539578, ; 260: EPPlus.System.Drawing.dll => 0x613f517a => 177
	i32 1632842087, ; 261: Microsoft.Extensions.Configuration.Json => 0x61533167 => 184
	i32 1635184631, ; 262: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 252
	i32 1636350590, ; 263: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 245
	i32 1639515021, ; 264: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 265: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 266: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 267: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 268: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 284
	i32 1658251792, ; 269: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 293
	i32 1670060433, ; 270: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 240
	i32 1675553242, ; 271: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 272: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 273: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 274: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 275: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 276: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 277: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 300
	i32 1701541528, ; 278: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 279: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 261
	i32 1726116996, ; 280: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 281: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 282: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 236
	i32 1736233607, ; 283: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 338
	i32 1743415430, ; 284: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 316
	i32 1744735666, ; 285: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 286: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 287: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 288: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 289: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 290: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 291: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 283
	i32 1770582343, ; 292: Microsoft.Extensions.Logging.dll => 0x6988f147 => 190
	i32 1776026572, ; 293: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 294: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 295: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 296: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 332
	i32 1788241197, ; 297: Xamarin.AndroidX.Fragment => 0x6a96652d => 254
	i32 1793755602, ; 298: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 324
	i32 1794500907, ; 299: Microsoft.Identity.Client.dll => 0x6af5e92b => 195
	i32 1796167890, ; 300: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 179
	i32 1808609942, ; 301: Xamarin.AndroidX.Loader => 0x6bcd3296 => 268
	i32 1813058853, ; 302: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 299
	i32 1813201214, ; 303: Xamarin.Google.Android.Material => 0x6c13413e => 293
	i32 1818569960, ; 304: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 273
	i32 1818787751, ; 305: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 306: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 307: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 308: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 191
	i32 1842015223, ; 309: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 344
	i32 1847515442, ; 310: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 223
	i32 1853025655, ; 311: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 341
	i32 1858542181, ; 312: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 313: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 314: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 201
	i32 1875935024, ; 315: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 323
	i32 1879696579, ; 316: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 317: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 234
	i32 1888955245, ; 318: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 319: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 320: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 321: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 322: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 323: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 324: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 325: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 280
	i32 1968388702, ; 326: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 327: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 300
	i32 1985761444, ; 328: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 225
	i32 1986222447, ; 329: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 202
	i32 2003115576, ; 330: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 320
	i32 2011961780, ; 331: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 332: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 265
	i32 2025202353, ; 333: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 315
	i32 2031763787, ; 334: Xamarin.Android.Glide => 0x791a414b => 222
	i32 2040764568, ; 335: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 196
	i32 2045470958, ; 336: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 337: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 260
	i32 2060060697, ; 338: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 339: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 319
	i32 2070888862, ; 340: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 341: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 188
	i32 2079903147, ; 342: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 343: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 344: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 345: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143465592, ; 346: Microsoft.IO.RecyclableMemoryStream => 0x7fc2b078 => 203
	i32 2143790110, ; 347: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 348: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 349: Microsoft.Maui => 0x80bd55ad => 207
	i32 2169148018, ; 350: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 327
	i32 2181898931, ; 351: Microsoft.Extensions.Options.dll => 0x820d22b3 => 193
	i32 2192057212, ; 352: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 191
	i32 2193016926, ; 353: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 354: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 304
	i32 2201231467, ; 355: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 356: it\Microsoft.Maui.Controls.resources => 0x839595db => 329
	i32 2217644978, ; 357: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 287
	i32 2222056684, ; 358: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 359: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 311
	i32 2244775296, ; 360: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 269
	i32 2252106437, ; 361: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 362: Microsoft.IdentityModel.Protocols => 0x86527819 => 200
	i32 2256313426, ; 363: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 364: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 365: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 366: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 224
	i32 2270573516, ; 367: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 323
	i32 2279755925, ; 368: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 276
	i32 2293034957, ; 369: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 370: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 371: System.Net.Mail => 0x88ffe49e => 66
	i32 2298796049, ; 372: EPPlus.System.Drawing => 0x8904d811 => 177
	i32 2303942373, ; 373: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 333
	i32 2305521784, ; 374: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 375: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 310
	i32 2315684594, ; 376: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 228
	i32 2320631194, ; 377: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 378: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 379: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 380: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 381: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 382: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 199
	i32 2371007202, ; 383: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 384: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 385: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 386: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 328
	i32 2401565422, ; 387: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 388: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 251
	i32 2421380589, ; 389: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 390: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 238
	i32 2427813419, ; 391: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 325
	i32 2435356389, ; 392: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 393: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 394: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 395: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 396: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 397: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 241
	i32 2471841756, ; 398: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 399: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 400: Microsoft.Maui.Controls => 0x93dba8a1 => 205
	i32 2483903535, ; 401: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 402: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 403: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 404: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 405: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 263
	i32 2509217888, ; 406: System.Diagnostics.EventLog => 0x958fa060 => 215
	i32 2522472828, ; 407: Xamarin.Android.Glide.dll => 0x9659e17c => 222
	i32 2538310050, ; 408: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2548432851, ; 409: EPPlus.Interfaces.dll => 0x97e5ffd3 => 176
	i32 2550873716, ; 410: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 326
	i32 2562349572, ; 411: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 412: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 413: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 264
	i32 2581819634, ; 414: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 286
	i32 2585220780, ; 415: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 416: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 417: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 418: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 187
	i32 2593496499, ; 419: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 335
	i32 2605712449, ; 420: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 304
	i32 2615233544, ; 421: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 255
	i32 2616218305, ; 422: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 192
	i32 2617129537, ; 423: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 424: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 425: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 245
	i32 2624644809, ; 426: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 250
	i32 2626831493, ; 427: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 330
	i32 2627185994, ; 428: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 429: System.Memory.Data => 0x9ca74fdc => 218
	i32 2629843544, ; 430: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 431: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 259
	i32 2640290731, ; 432: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 199
	i32 2640706905, ; 433: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 434: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 221
	i32 2663391936, ; 435: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 224
	i32 2663698177, ; 436: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 437: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 438: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 439: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 440: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 441: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 442: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 443: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 284
	i32 2715334215, ; 444: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 445: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 446: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 447: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 448: Xamarin.AndroidX.Activity => 0xa2e0939b => 226
	i32 2735172069, ; 449: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 450: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 232
	i32 2740051746, ; 451: Microsoft.Identity.Client => 0xa351df22 => 195
	i32 2740948882, ; 452: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 453: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 454: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 336
	i32 2755098380, ; 455: Microsoft.SqlServer.Server.dll => 0xa437770c => 210
	i32 2758225723, ; 456: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 206
	i32 2764765095, ; 457: Microsoft.Maui.dll => 0xa4caf7a7 => 207
	i32 2765824710, ; 458: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 459: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 298
	i32 2778768386, ; 460: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 289
	i32 2779977773, ; 461: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 277
	i32 2785988530, ; 462: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 342
	i32 2788224221, ; 463: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 255
	i32 2795666278, ; 464: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 211
	i32 2801831435, ; 465: Microsoft.Maui.Graphics => 0xa7008e0b => 209
	i32 2803228030, ; 466: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804509662, ; 467: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 306
	i32 2806116107, ; 468: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 321
	i32 2810250172, ; 469: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 242
	i32 2819470561, ; 470: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 471: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 472: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 277
	i32 2824502124, ; 473: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 474: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 334
	i32 2838993487, ; 475: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 266
	i32 2841937114, ; 476: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 308
	i32 2849599387, ; 477: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 478: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 289
	i32 2855708567, ; 479: Xamarin.AndroidX.Transition => 0xaa36a797 => 285
	i32 2861098320, ; 480: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 481: Microsoft.Maui.Essentials => 0xaa8a4878 => 208
	i32 2867946736, ; 482: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 221
	i32 2870099610, ; 483: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 227
	i32 2875164099, ; 484: Jsr305Binding.dll => 0xab5f85c3 => 294
	i32 2875220617, ; 485: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 486: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 253
	i32 2887636118, ; 487: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 488: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 489: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 490: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 491: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 492: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 493: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 188
	i32 2916838712, ; 494: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 290
	i32 2919462931, ; 495: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 496: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 229
	i32 2936416060, ; 497: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 498: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 499: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 500: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 214
	i32 2959614098, ; 501: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 502: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 503: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 504: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 249
	i32 2987532451, ; 505: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 280
	i32 2996846495, ; 506: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 262
	i32 3012788804, ; 507: System.Configuration.ConfigurationManager => 0xb3938244 => 214
	i32 3016983068, ; 508: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 282
	i32 3023353419, ; 509: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 510: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 312
	i32 3024354802, ; 511: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 257
	i32 3033605958, ; 512: System.Memory.Data.dll => 0xb4d12746 => 218
	i32 3038032645, ; 513: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 349
	i32 3056245963, ; 514: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 279
	i32 3057625584, ; 515: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 270
	i32 3059408633, ; 516: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 517: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 518: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 519: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 327
	i32 3084678329, ; 520: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 202
	i32 3090735792, ; 521: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 522: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 523: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 524: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 525: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 526: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 527: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 528: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 529: GoogleGson.dll => 0xbba64c02 => 178
	i32 3158628304, ; 530: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 314
	i32 3159123045, ; 531: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 532: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 533: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 271
	i32 3192346100, ; 534: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 535: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 536: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 537: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 538: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 248
	i32 3220365878, ; 539: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 540: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 541: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 542: Xamarin.AndroidX.CardView => 0xc235e84d => 236
	i32 3265493905, ; 543: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 544: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3268887220, ; 545: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 307
	i32 3276600297, ; 546: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 311
	i32 3277815716, ; 547: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 548: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 549: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 550: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 551: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 552: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 553: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 322
	i32 3312457198, ; 554: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 198
	i32 3316684772, ; 555: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 556: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 246
	i32 3317144872, ; 557: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 558: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 234
	i32 3343947874, ; 559: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 307
	i32 3345895724, ; 560: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 275
	i32 3346324047, ; 561: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 272
	i32 3357674450, ; 562: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 339
	i32 3358260929, ; 563: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 564: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 227
	i32 3362522851, ; 565: Xamarin.AndroidX.Core => 0xc86c06e3 => 243
	i32 3366347497, ; 566: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 567: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 200
	i32 3374999561, ; 568: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 276
	i32 3381016424, ; 569: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 318
	i32 3395150330, ; 570: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 571: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 572: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 247
	i32 3428513518, ; 573: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 185
	i32 3429136800, ; 574: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 575: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 576: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 250
	i32 3445260447, ; 577: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 578: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 204
	i32 3463511458, ; 579: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 326
	i32 3471940407, ; 580: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 581: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 582: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 339
	i32 3484440000, ; 583: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 338
	i32 3485117614, ; 584: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 585: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 586: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 239
	i32 3509114376, ; 587: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 588: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 589: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 590: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 591: Microsoft.Data.SqlClient => 0xd35114f1 => 180
	i32 3555084973, ; 592: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 305
	i32 3558648585, ; 593: System.ClientModel => 0xd41cab09 => 213
	i32 3560100363, ; 594: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 595: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 596: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 597: System.Runtime.Caching.dll => 0xd4d3289f => 219
	i32 3580758918, ; 598: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 346
	i32 3597029428, ; 599: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 225
	i32 3598340787, ; 600: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 601: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 602: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 603: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 274
	i32 3633644679, ; 604: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 229
	i32 3638274909, ; 605: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 606: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 260
	i32 3643446276, ; 607: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 343
	i32 3643854240, ; 608: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 271
	i32 3645089577, ; 609: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 610: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 611: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 612: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 613: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 235
	i32 3684561358, ; 614: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 239
	i32 3689375977, ; 615: System.Drawing.Common => 0xdbe768e9 => 216
	i32 3697841164, ; 616: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 348
	i32 3700591436, ; 617: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 197
	i32 3700866549, ; 618: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 619: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 244
	i32 3716563718, ; 620: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 621: Xamarin.AndroidX.Annotation => 0xdda814c6 => 228
	i32 3722202641, ; 622: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 184
	i32 3724971120, ; 623: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 270
	i32 3732100267, ; 624: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 625: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 626: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3750207367, ; 627: SistemaPadronMisiones.dll => 0xdf879f87 => 0
	i32 3751444290, ; 628: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758424670, ; 629: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 183
	i32 3786282454, ; 630: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 237
	i32 3792276235, ; 631: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 632: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 204
	i32 3802395368, ; 633: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 634: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 313
	i32 3807198597, ; 635: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 220
	i32 3819260425, ; 636: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 637: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 638: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 639: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 186
	i32 3844307129, ; 640: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 641: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 306
	i32 3849253459, ; 642: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 643: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 644: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 645: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 646: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 647: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 285
	i32 3888767677, ; 648: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 275
	i32 3889960447, ; 649: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 347
	i32 3896106733, ; 650: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 651: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 243
	i32 3901907137, ; 652: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 653: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 654: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 288
	i32 3928044579, ; 655: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 656: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 657: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 273
	i32 3945713374, ; 658: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 659: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 660: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 231
	i32 3959773229, ; 661: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 262
	i32 3980434154, ; 662: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 342
	i32 3987592930, ; 663: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 324
	i32 4003436829, ; 664: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 665: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 230
	i32 4025784931, ; 666: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 667: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 206
	i32 4054681211, ; 668: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 669: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 670: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 671: Microsoft.Maui.Essentials.dll => 0xf40add04 => 208
	i32 4099507663, ; 672: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 673: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 674: Xamarin.AndroidX.Emoji2 => 0xf479582c => 251
	i32 4102112229, ; 675: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 337
	i32 4125707920, ; 676: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 332
	i32 4126470640, ; 677: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 185
	i32 4127667938, ; 678: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 679: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 680: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 681: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 344
	i32 4151237749, ; 682: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 683: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 684: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 685: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 686: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 687: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 267
	i32 4185676441, ; 688: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 689: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 690: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 691: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 244
	i32 4257443520, ; 692: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 310
	i32 4258378803, ; 693: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 266
	i32 4260525087, ; 694: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 695: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 217
	i32 4271975918, ; 696: Microsoft.Maui.Controls.dll => 0xfea12dee => 205
	i32 4274976490, ; 697: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 698: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 267
	i32 4294763496 ; 699: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 253
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [700 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 263, ; 3
	i32 297, ; 4
	i32 48, ; 5
	i32 212, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 308, ; 9
	i32 309, ; 10
	i32 211, ; 11
	i32 30, ; 12
	i32 348, ; 13
	i32 124, ; 14
	i32 209, ; 15
	i32 102, ; 16
	i32 281, ; 17
	i32 107, ; 18
	i32 281, ; 19
	i32 139, ; 20
	i32 175, ; 21
	i32 301, ; 22
	i32 309, ; 23
	i32 77, ; 24
	i32 124, ; 25
	i32 13, ; 26
	i32 237, ; 27
	i32 312, ; 28
	i32 132, ; 29
	i32 283, ; 30
	i32 151, ; 31
	i32 345, ; 32
	i32 346, ; 33
	i32 18, ; 34
	i32 235, ; 35
	i32 26, ; 36
	i32 257, ; 37
	i32 1, ; 38
	i32 59, ; 39
	i32 42, ; 40
	i32 91, ; 41
	i32 240, ; 42
	i32 313, ; 43
	i32 147, ; 44
	i32 259, ; 45
	i32 256, ; 46
	i32 317, ; 47
	i32 54, ; 48
	i32 69, ; 49
	i32 345, ; 50
	i32 226, ; 51
	i32 83, ; 52
	i32 210, ; 53
	i32 330, ; 54
	i32 258, ; 55
	i32 329, ; 56
	i32 131, ; 57
	i32 55, ; 58
	i32 149, ; 59
	i32 74, ; 60
	i32 145, ; 61
	i32 62, ; 62
	i32 146, ; 63
	i32 349, ; 64
	i32 165, ; 65
	i32 341, ; 66
	i32 241, ; 67
	i32 12, ; 68
	i32 254, ; 69
	i32 125, ; 70
	i32 152, ; 71
	i32 113, ; 72
	i32 166, ; 73
	i32 164, ; 74
	i32 256, ; 75
	i32 197, ; 76
	i32 269, ; 77
	i32 84, ; 78
	i32 328, ; 79
	i32 322, ; 80
	i32 194, ; 81
	i32 150, ; 82
	i32 301, ; 83
	i32 60, ; 84
	i32 190, ; 85
	i32 51, ; 86
	i32 103, ; 87
	i32 114, ; 88
	i32 179, ; 89
	i32 40, ; 90
	i32 294, ; 91
	i32 292, ; 92
	i32 120, ; 93
	i32 336, ; 94
	i32 52, ; 95
	i32 44, ; 96
	i32 119, ; 97
	i32 246, ; 98
	i32 334, ; 99
	i32 252, ; 100
	i32 81, ; 101
	i32 136, ; 102
	i32 288, ; 103
	i32 233, ; 104
	i32 8, ; 105
	i32 73, ; 106
	i32 316, ; 107
	i32 155, ; 108
	i32 303, ; 109
	i32 154, ; 110
	i32 92, ; 111
	i32 298, ; 112
	i32 45, ; 113
	i32 331, ; 114
	i32 220, ; 115
	i32 319, ; 116
	i32 302, ; 117
	i32 109, ; 118
	i32 213, ; 119
	i32 129, ; 120
	i32 25, ; 121
	i32 223, ; 122
	i32 72, ; 123
	i32 55, ; 124
	i32 46, ; 125
	i32 340, ; 126
	i32 193, ; 127
	i32 247, ; 128
	i32 176, ; 129
	i32 22, ; 130
	i32 261, ; 131
	i32 216, ; 132
	i32 86, ; 133
	i32 43, ; 134
	i32 160, ; 135
	i32 71, ; 136
	i32 274, ; 137
	i32 3, ; 138
	i32 42, ; 139
	i32 63, ; 140
	i32 16, ; 141
	i32 53, ; 142
	i32 343, ; 143
	i32 297, ; 144
	i32 105, ; 145
	i32 212, ; 146
	i32 302, ; 147
	i32 295, ; 148
	i32 258, ; 149
	i32 34, ; 150
	i32 158, ; 151
	i32 85, ; 152
	i32 32, ; 153
	i32 12, ; 154
	i32 51, ; 155
	i32 189, ; 156
	i32 56, ; 157
	i32 278, ; 158
	i32 36, ; 159
	i32 186, ; 160
	i32 318, ; 161
	i32 296, ; 162
	i32 231, ; 163
	i32 35, ; 164
	i32 58, ; 165
	i32 305, ; 166
	i32 265, ; 167
	i32 196, ; 168
	i32 178, ; 169
	i32 17, ; 170
	i32 299, ; 171
	i32 215, ; 172
	i32 164, ; 173
	i32 183, ; 174
	i32 331, ; 175
	i32 264, ; 176
	i32 192, ; 177
	i32 180, ; 178
	i32 291, ; 179
	i32 337, ; 180
	i32 153, ; 181
	i32 187, ; 182
	i32 287, ; 183
	i32 272, ; 184
	i32 335, ; 185
	i32 233, ; 186
	i32 29, ; 187
	i32 52, ; 188
	i32 333, ; 189
	i32 292, ; 190
	i32 5, ; 191
	i32 317, ; 192
	i32 282, ; 193
	i32 286, ; 194
	i32 238, ; 195
	i32 303, ; 196
	i32 230, ; 197
	i32 249, ; 198
	i32 85, ; 199
	i32 291, ; 200
	i32 61, ; 201
	i32 112, ; 202
	i32 57, ; 203
	i32 347, ; 204
	i32 278, ; 205
	i32 99, ; 206
	i32 0, ; 207
	i32 19, ; 208
	i32 242, ; 209
	i32 111, ; 210
	i32 101, ; 211
	i32 102, ; 212
	i32 315, ; 213
	i32 104, ; 214
	i32 295, ; 215
	i32 71, ; 216
	i32 38, ; 217
	i32 32, ; 218
	i32 103, ; 219
	i32 73, ; 220
	i32 217, ; 221
	i32 321, ; 222
	i32 9, ; 223
	i32 123, ; 224
	i32 46, ; 225
	i32 232, ; 226
	i32 194, ; 227
	i32 175, ; 228
	i32 9, ; 229
	i32 43, ; 230
	i32 4, ; 231
	i32 279, ; 232
	i32 325, ; 233
	i32 198, ; 234
	i32 320, ; 235
	i32 189, ; 236
	i32 31, ; 237
	i32 138, ; 238
	i32 92, ; 239
	i32 93, ; 240
	i32 340, ; 241
	i32 203, ; 242
	i32 219, ; 243
	i32 49, ; 244
	i32 141, ; 245
	i32 112, ; 246
	i32 140, ; 247
	i32 174, ; 248
	i32 248, ; 249
	i32 115, ; 250
	i32 314, ; 251
	i32 296, ; 252
	i32 157, ; 253
	i32 76, ; 254
	i32 79, ; 255
	i32 268, ; 256
	i32 37, ; 257
	i32 290, ; 258
	i32 201, ; 259
	i32 177, ; 260
	i32 184, ; 261
	i32 252, ; 262
	i32 245, ; 263
	i32 64, ; 264
	i32 138, ; 265
	i32 15, ; 266
	i32 116, ; 267
	i32 284, ; 268
	i32 293, ; 269
	i32 240, ; 270
	i32 48, ; 271
	i32 70, ; 272
	i32 80, ; 273
	i32 126, ; 274
	i32 94, ; 275
	i32 121, ; 276
	i32 300, ; 277
	i32 26, ; 278
	i32 261, ; 279
	i32 97, ; 280
	i32 28, ; 281
	i32 236, ; 282
	i32 338, ; 283
	i32 316, ; 284
	i32 149, ; 285
	i32 169, ; 286
	i32 4, ; 287
	i32 98, ; 288
	i32 33, ; 289
	i32 93, ; 290
	i32 283, ; 291
	i32 190, ; 292
	i32 21, ; 293
	i32 41, ; 294
	i32 170, ; 295
	i32 332, ; 296
	i32 254, ; 297
	i32 324, ; 298
	i32 195, ; 299
	i32 179, ; 300
	i32 268, ; 301
	i32 299, ; 302
	i32 293, ; 303
	i32 273, ; 304
	i32 2, ; 305
	i32 134, ; 306
	i32 111, ; 307
	i32 191, ; 308
	i32 344, ; 309
	i32 223, ; 310
	i32 341, ; 311
	i32 58, ; 312
	i32 95, ; 313
	i32 201, ; 314
	i32 323, ; 315
	i32 39, ; 316
	i32 234, ; 317
	i32 25, ; 318
	i32 94, ; 319
	i32 89, ; 320
	i32 99, ; 321
	i32 10, ; 322
	i32 87, ; 323
	i32 100, ; 324
	i32 280, ; 325
	i32 181, ; 326
	i32 300, ; 327
	i32 225, ; 328
	i32 202, ; 329
	i32 320, ; 330
	i32 7, ; 331
	i32 265, ; 332
	i32 315, ; 333
	i32 222, ; 334
	i32 196, ; 335
	i32 88, ; 336
	i32 260, ; 337
	i32 154, ; 338
	i32 319, ; 339
	i32 33, ; 340
	i32 188, ; 341
	i32 116, ; 342
	i32 82, ; 343
	i32 20, ; 344
	i32 11, ; 345
	i32 203, ; 346
	i32 162, ; 347
	i32 3, ; 348
	i32 207, ; 349
	i32 327, ; 350
	i32 193, ; 351
	i32 191, ; 352
	i32 84, ; 353
	i32 304, ; 354
	i32 64, ; 355
	i32 329, ; 356
	i32 287, ; 357
	i32 143, ; 358
	i32 311, ; 359
	i32 269, ; 360
	i32 157, ; 361
	i32 200, ; 362
	i32 41, ; 363
	i32 117, ; 364
	i32 182, ; 365
	i32 224, ; 366
	i32 323, ; 367
	i32 276, ; 368
	i32 131, ; 369
	i32 75, ; 370
	i32 66, ; 371
	i32 177, ; 372
	i32 333, ; 373
	i32 172, ; 374
	i32 310, ; 375
	i32 228, ; 376
	i32 143, ; 377
	i32 106, ; 378
	i32 151, ; 379
	i32 70, ; 380
	i32 156, ; 381
	i32 199, ; 382
	i32 181, ; 383
	i32 121, ; 384
	i32 127, ; 385
	i32 328, ; 386
	i32 152, ; 387
	i32 251, ; 388
	i32 141, ; 389
	i32 238, ; 390
	i32 325, ; 391
	i32 20, ; 392
	i32 14, ; 393
	i32 135, ; 394
	i32 75, ; 395
	i32 59, ; 396
	i32 241, ; 397
	i32 167, ; 398
	i32 168, ; 399
	i32 205, ; 400
	i32 15, ; 401
	i32 74, ; 402
	i32 6, ; 403
	i32 23, ; 404
	i32 263, ; 405
	i32 215, ; 406
	i32 222, ; 407
	i32 91, ; 408
	i32 176, ; 409
	i32 326, ; 410
	i32 1, ; 411
	i32 136, ; 412
	i32 264, ; 413
	i32 286, ; 414
	i32 134, ; 415
	i32 69, ; 416
	i32 146, ; 417
	i32 187, ; 418
	i32 335, ; 419
	i32 304, ; 420
	i32 255, ; 421
	i32 192, ; 422
	i32 88, ; 423
	i32 96, ; 424
	i32 245, ; 425
	i32 250, ; 426
	i32 330, ; 427
	i32 31, ; 428
	i32 218, ; 429
	i32 45, ; 430
	i32 259, ; 431
	i32 199, ; 432
	i32 173, ; 433
	i32 221, ; 434
	i32 224, ; 435
	i32 109, ; 436
	i32 158, ; 437
	i32 35, ; 438
	i32 22, ; 439
	i32 174, ; 440
	i32 114, ; 441
	i32 57, ; 442
	i32 284, ; 443
	i32 144, ; 444
	i32 118, ; 445
	i32 120, ; 446
	i32 110, ; 447
	i32 226, ; 448
	i32 139, ; 449
	i32 232, ; 450
	i32 195, ; 451
	i32 54, ; 452
	i32 105, ; 453
	i32 336, ; 454
	i32 210, ; 455
	i32 206, ; 456
	i32 207, ; 457
	i32 133, ; 458
	i32 298, ; 459
	i32 289, ; 460
	i32 277, ; 461
	i32 342, ; 462
	i32 255, ; 463
	i32 211, ; 464
	i32 209, ; 465
	i32 159, ; 466
	i32 306, ; 467
	i32 321, ; 468
	i32 242, ; 469
	i32 163, ; 470
	i32 132, ; 471
	i32 277, ; 472
	i32 161, ; 473
	i32 334, ; 474
	i32 266, ; 475
	i32 308, ; 476
	i32 140, ; 477
	i32 289, ; 478
	i32 285, ; 479
	i32 169, ; 480
	i32 208, ; 481
	i32 221, ; 482
	i32 227, ; 483
	i32 294, ; 484
	i32 40, ; 485
	i32 253, ; 486
	i32 81, ; 487
	i32 56, ; 488
	i32 37, ; 489
	i32 97, ; 490
	i32 166, ; 491
	i32 172, ; 492
	i32 188, ; 493
	i32 290, ; 494
	i32 82, ; 495
	i32 229, ; 496
	i32 98, ; 497
	i32 30, ; 498
	i32 159, ; 499
	i32 214, ; 500
	i32 18, ; 501
	i32 127, ; 502
	i32 119, ; 503
	i32 249, ; 504
	i32 280, ; 505
	i32 262, ; 506
	i32 214, ; 507
	i32 282, ; 508
	i32 165, ; 509
	i32 312, ; 510
	i32 257, ; 511
	i32 218, ; 512
	i32 349, ; 513
	i32 279, ; 514
	i32 270, ; 515
	i32 170, ; 516
	i32 16, ; 517
	i32 144, ; 518
	i32 327, ; 519
	i32 202, ; 520
	i32 125, ; 521
	i32 118, ; 522
	i32 38, ; 523
	i32 115, ; 524
	i32 47, ; 525
	i32 142, ; 526
	i32 117, ; 527
	i32 34, ; 528
	i32 178, ; 529
	i32 314, ; 530
	i32 95, ; 531
	i32 53, ; 532
	i32 271, ; 533
	i32 129, ; 534
	i32 153, ; 535
	i32 24, ; 536
	i32 161, ; 537
	i32 248, ; 538
	i32 148, ; 539
	i32 104, ; 540
	i32 89, ; 541
	i32 236, ; 542
	i32 60, ; 543
	i32 142, ; 544
	i32 307, ; 545
	i32 311, ; 546
	i32 100, ; 547
	i32 5, ; 548
	i32 13, ; 549
	i32 122, ; 550
	i32 135, ; 551
	i32 28, ; 552
	i32 322, ; 553
	i32 198, ; 554
	i32 72, ; 555
	i32 246, ; 556
	i32 24, ; 557
	i32 234, ; 558
	i32 307, ; 559
	i32 275, ; 560
	i32 272, ; 561
	i32 339, ; 562
	i32 137, ; 563
	i32 227, ; 564
	i32 243, ; 565
	i32 168, ; 566
	i32 200, ; 567
	i32 276, ; 568
	i32 318, ; 569
	i32 101, ; 570
	i32 123, ; 571
	i32 247, ; 572
	i32 185, ; 573
	i32 163, ; 574
	i32 167, ; 575
	i32 250, ; 576
	i32 39, ; 577
	i32 204, ; 578
	i32 326, ; 579
	i32 17, ; 580
	i32 171, ; 581
	i32 339, ; 582
	i32 338, ; 583
	i32 137, ; 584
	i32 150, ; 585
	i32 239, ; 586
	i32 155, ; 587
	i32 130, ; 588
	i32 19, ; 589
	i32 65, ; 590
	i32 180, ; 591
	i32 305, ; 592
	i32 213, ; 593
	i32 147, ; 594
	i32 173, ; 595
	i32 47, ; 596
	i32 219, ; 597
	i32 346, ; 598
	i32 225, ; 599
	i32 79, ; 600
	i32 61, ; 601
	i32 106, ; 602
	i32 274, ; 603
	i32 229, ; 604
	i32 49, ; 605
	i32 260, ; 606
	i32 343, ; 607
	i32 271, ; 608
	i32 14, ; 609
	i32 182, ; 610
	i32 68, ; 611
	i32 171, ; 612
	i32 235, ; 613
	i32 239, ; 614
	i32 216, ; 615
	i32 348, ; 616
	i32 197, ; 617
	i32 78, ; 618
	i32 244, ; 619
	i32 108, ; 620
	i32 228, ; 621
	i32 184, ; 622
	i32 270, ; 623
	i32 67, ; 624
	i32 63, ; 625
	i32 27, ; 626
	i32 0, ; 627
	i32 160, ; 628
	i32 183, ; 629
	i32 237, ; 630
	i32 10, ; 631
	i32 204, ; 632
	i32 11, ; 633
	i32 313, ; 634
	i32 220, ; 635
	i32 78, ; 636
	i32 126, ; 637
	i32 83, ; 638
	i32 186, ; 639
	i32 66, ; 640
	i32 306, ; 641
	i32 107, ; 642
	i32 65, ; 643
	i32 128, ; 644
	i32 122, ; 645
	i32 77, ; 646
	i32 285, ; 647
	i32 275, ; 648
	i32 347, ; 649
	i32 8, ; 650
	i32 243, ; 651
	i32 2, ; 652
	i32 44, ; 653
	i32 288, ; 654
	i32 156, ; 655
	i32 128, ; 656
	i32 273, ; 657
	i32 23, ; 658
	i32 133, ; 659
	i32 231, ; 660
	i32 262, ; 661
	i32 342, ; 662
	i32 324, ; 663
	i32 29, ; 664
	i32 230, ; 665
	i32 62, ; 666
	i32 206, ; 667
	i32 90, ; 668
	i32 87, ; 669
	i32 148, ; 670
	i32 208, ; 671
	i32 36, ; 672
	i32 86, ; 673
	i32 251, ; 674
	i32 337, ; 675
	i32 332, ; 676
	i32 185, ; 677
	i32 50, ; 678
	i32 6, ; 679
	i32 90, ; 680
	i32 344, ; 681
	i32 21, ; 682
	i32 162, ; 683
	i32 96, ; 684
	i32 50, ; 685
	i32 113, ; 686
	i32 267, ; 687
	i32 130, ; 688
	i32 76, ; 689
	i32 27, ; 690
	i32 244, ; 691
	i32 310, ; 692
	i32 266, ; 693
	i32 7, ; 694
	i32 217, ; 695
	i32 205, ; 696
	i32 110, ; 697
	i32 267, ; 698
	i32 253 ; 699
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
