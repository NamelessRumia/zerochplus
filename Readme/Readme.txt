

Zero Channel Plus Ver.0.7.4 - Readme.txt

Official Website: http://zerochplus.sourceforge.jp/


■ Preface
　This is the instruction manual for Zero Channel Plus, it is based on
the original 2ch-based Zero Channel ( http://0ch.mine.nu/ ) script.
　なるべくどのような人でもわかるように解説していきたいですがなにぶん製作者が面倒くさがり
なので至らない点があるかもしれませんがご了承ください。
　Please note that this is a modified verion of the original readme.txt
file, so some parts from the original text remain.


■ System Requirements
  ★ Required Enviroment
    ・CGIの動作が可能なHTTPDが入っており，Perl 5.8以上(Perl 6は含まない)もしくはそのディ
      ストリビューション系ソフトウェアが動作するOS
    ・5MB以上のディスクスペース 
  ★ Recommended Enviroment
    ・suEXECでCGI動作が可能なApache HTTP Serverが入っており，Perl 5.8以上(Perl 6は含まな
      い)が動作するUNIX系もしくはLinux系のOS
    ・10MB以上のディスクスペース

■ Distribution File Structure
zerochplus_x.x.x/
 + Readme/                    - The files that should be read first.
 |  + ArtisticLicense.txt
 |  + Readme.txt              - Readme for Zero Channel Plus. (You are here.)
 |  + Readme0ch.txt           - Readme for Zero Channel. (Original file.)
 |
 + test/                      - Zero Channel Plus Operation Directory
    + *.cgi                   - CGI Files for Basic Operation.
    + datas/                  - Initial Data and Fixed Data Storage.
    |  + 1000.txt
    |  + 2000000000.dat
    |  :
    + info/
    |  + category.cgi         - Initial Definition File for Board Categories.
    |  + errmes.cgi           - Error Message Definition File.
    |  + users.cgi            - Initial User (Administrator) Definition File.
    + module/
    |  + *.pl                 - Zero Channel Modules.
    + mordor/
    |  + *.pl                 - CGI Files for Management.
    + plugin/
    |  + 0ch_*.pl             - Plugin Scripts.
    + perllib/
       + *                    - Zero Channel Plus Required Packages.

■ Installation Method Outline
　The wiki provides installation instructions with images.
  ・Install - Zero Channel Plus Wiki
    http://sourceforge.jp/projects/zerochplus/wiki/Install

1. Change the Script

	・構成ファイルtest直下の.cgiファイルを開き、1行目に書いてあるperlパス
	  を環境に合わせて変更します。
	
	※In other words, change the line that looks like this:
	
		#!/usr/bin/perl

2. Upload the Script

	・Upload all the files under /test/ to the installation server.
	・After uploading, set the permissions to an appropriate value.
	
	※For permission values, see the following page:
	・Permission - Zero Channel Plus
	  http://sourceforge.jp/projects/zerochplus/wiki/Permission

3. Configuration

	・Access [Installation Server]/test/admin.cgi.
	・Login with User: "Administrator", Pass: "zeroch".
	・Select "System Settings" (システム設定) at the top of the screen.
	・Select "Basic Settings" (基本設定) at the left side of the screen.
	・Set the [Operation Server] (稼動サーバ) to an appropriate value,
	  then click on [Set] (設定).
	・Select "Basic Settings" on the left side of the screen again to
	  verify that the active server has updated.
	  (If nothing changed, there may be a problem with permissions.)
	・Select "User" (ユーザー) at the top of the screen.
	・Select "Administrator" under the [User Name] column.
	・Change the username and password, then click on [Set] (設定).
	・Select "Log Off" (ログオフ) at the top of the screen.

4. Create Boards

	・Log in as the administrator user that you set earlier.
	・Select "Bulletin Board" (掲示板) at the top of the screen.
	・Select "Board Creation" (掲示板作成) at the left side of the screen.
	・Fill in the necessary items, then click on [Create] (作成).

5. Board Settings

	・Select "Bulletin Board" (掲示板) at the top of the screen.
	・Choose the desired bulletin board, from the board list.
	・Select "Board Settings" (掲示板設定) at the top of the screen.
	・Set each item.

-----------------------------------------------------------------------
※Warning：
	・Immediately change the Administrator user file after installation
	  since the username and password is fixed. There is a risk of
	  granting someone else permissions if left untouched.
-----------------------------------------------------------------------


■ License
　本スクリプトのライセンスは本家ぜろちゃんねると同じ扱いとします。以下は本家ぜろちゃんね
る /readme/readme.txt からの引用です。

> 本スクリプトは自由に改造・再配布してもらってかまいません。また、本スクリプトによって出
力されるクレジット表示(バージョン表示)などの表示も消して使用してもらっても構いません。
> ただし、作者は本スクリプトと付属ファイルに関する著作権を放棄しません。また、作者は本ス
クリプト使用に関して発生したいかなるトラブルにも責任を負いかねますのでご了承ください。

　またremake.cgiの著作権･ライセンスは別の方にあり、remake.cgiの作者に著作権･ライセンスを
帰属します。

　perllibに含めてあるパッケージについては後述。

■ Regarding Version Upgrade
　0.7.0からバージョンアップの際には管理画面にて通知するようになりました。
　セキュリティ修正を含むアップデートも多々ありますのでお手数かと思いますが、こまめなアッ
プデートをよろしくおねがいします。


■ Help and Support
　For further details, please refer to the following pages:
  ・Help - Zero Channel Plus
    http://zerochplus.sourceforge.jp/help/
  ・Zero Channel Plus Wiki
    http://sourceforge.jp/projects/zerochplus/wiki/

　If you can't find the information you want or would like to report
bugs, feel free to contact us with the information below.
  ・Support - Zero Channel Plus
    http://zerochplus.sourceforge.jp/support/

■ Special Thanks
　We would like to thank everyone who supported Zero Channel Plus.
　Above all, we would like to thank Seishin Suijaku ◆Y3kwSzvOHE for
writing the original script.

■ Official Website
　http://zerochplus.sourceforge.jp/

■ PERLLIB Packages
　これらはZero Channel Plusの実行に必要なパッケージです。すでにインストールされている
サーバーもあるかもしれませんが、一応含めておきます。
　以下はパッケージの詳細です。

Digest-SHA-PurePerl
Perl implementation of SHA-1/224/256/384/512
    Version:    5.72
    Released:   2012-09-24
    Author:     Mark Shelor <mshelor@cpan.org>
    License:    The Perl 5 License (Artistic 1 & GPL 1)
    CPAN:       http://search.cpan.org/dist/Digest-SHA-PurePerl-5.72/

Net-DNS-Lite
a pure-perl DNS resolver with support for timeout
    Version:    0.09
    Released:   2012-06-20
    Author:     Kazuho Oku <kazuhooku@gmail.com>
    License:    The Perl 5 License (Artistic 1 & GPL 1)
    CPAN:       http://search.cpan.org/dist/Net-DNS-Lite-0.09/

List-MoreUtils
Provide the stuff missing in List::Util
    Version:    0.33
    Released:   2011-08-04
    Author:     Adam Kennedy <adamk@cpan.org>
    License:    The Perl 5 License (Artistic 1 & GPL 1)
    CPAN:       http://search.cpan.org/dist/List-MoreUtils-0.33/

CGI-Session
Persistent session data in CGI applications
    Version:    4.48
    Released:   2011-07-11
    Author:     Mark Stosberg <mark@summersault.com>
    License:    Artistic License 1.0
    CPAN:       http://search.cpan.org/dist/CGI-Session-4.48/

