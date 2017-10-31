

Zero Channel Plus Ver.0.7.4 - Readme.txt

Official Website: http://zerochplus.sourceforge.jp/


�� Preface
�@This is the instruction manual for Zero Channel Plus, it is based on
the original 2ch-based Zero Channel ( http://0ch.mine.nu/ ) script.
�@�Ȃ�ׂ��ǂ̂悤�Ȑl�ł��킩��悤�ɉ�����Ă��������ł����ȂɂԂ񐻍�҂��ʓ|��������
�Ȃ̂Ŏ���Ȃ��_�����邩������܂��񂪂��������������B
�@Please note that this is a modified verion of the original readme.txt
file, so some parts from the original text remain.


�� System Requirements
  �� Required Enviroment
    �ECGI�̓��삪�\��HTTPD�������Ă���CPerl 5.8�ȏ�(Perl 6�͊܂܂Ȃ�)�������͂��̃f�B
      �X�g���r���[�V�����n�\�t�g�E�F�A�����삷��OS
    �E5MB�ȏ�̃f�B�X�N�X�y�[�X 
  �� Recommended Enviroment
    �EsuEXEC��CGI���삪�\��Apache HTTP Server�������Ă���CPerl 5.8�ȏ�(Perl 6�͊܂܂�
      ��)�����삷��UNIX�n��������Linux�n��OS
    �E10MB�ȏ�̃f�B�X�N�X�y�[�X

�� Distribution File Structure
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

�� Installation Method Outline
�@The wiki provides installation instructions with images.
  �EInstall - Zero Channel Plus Wiki
    http://sourceforge.jp/projects/zerochplus/wiki/Install

1. Change the Script

	�E�\���t�@�C��test������.cgi�t�@�C�����J���A1�s�ڂɏ����Ă���perl�p�X
	  �����ɍ��킹�ĕύX���܂��B
	
	��In other words, change the line that looks like this:
	
		#!/usr/bin/perl

2. Upload the Script

	�EUpload all the files under /test/ to the installation server.
	�EAfter uploading, set the permissions to an appropriate value.
	
	��For permission values, see the following page:
	�EPermission - Zero Channel Plus
	  http://sourceforge.jp/projects/zerochplus/wiki/Permission

3. Configuration

	�EAccess [Installation Server]/test/admin.cgi.
	�ELogin with User: "Administrator", Pass: "zeroch".
	�ESelect "System Settings" (�V�X�e���ݒ�) at the top of the screen.
	�ESelect "Basic Settings" (��{�ݒ�) at the left side of the screen.
	�ESet the [Operation Server] (�ғ��T�[�o) to an appropriate value,
	  then click on [Set] (�ݒ�).
	�ESelect "Basic Settings" on the left side of the screen again to
	  verify that the active server has updated.
	  (If nothing changed, there may be a problem with permissions.)
	�ESelect "User" (���[�U�[) at the top of the screen.
	�ESelect "Administrator" under the [User Name] column.
	�EChange the username and password, then click on [Set] (�ݒ�).
	�ESelect "Log Off" (���O�I�t) at the top of the screen.

4. Create Boards

	�ELog in as the administrator user that you set earlier.
	�ESelect "Bulletin Board" (�f����) at the top of the screen.
	�ESelect "Board Creation" (�f���쐬) at the left side of the screen.
	�EFill in the necessary items, then click on [Create] (�쐬).

5. Board Settings

	�ESelect "Bulletin Board" (�f����) at the top of the screen.
	�EChoose the desired bulletin board, from the board list.
	�ESelect "Board Settings" (�f���ݒ�) at the top of the screen.
	�ESet each item.

-----------------------------------------------------------------------
��Warning�F
	�EImmediately change the Administrator user file after installation
	  since the username and password is fixed. There is a risk of
	  granting someone else permissions if left untouched.
-----------------------------------------------------------------------


�� License
�@�{�X�N���v�g�̃��C�Z���X�͖{�Ƃ��낿���˂�Ɠ��������Ƃ��܂��B�ȉ��͖{�Ƃ��낿����
�� /readme/readme.txt ����̈��p�ł��B

> �{�X�N���v�g�͎��R�ɉ����E�Ĕz�z���Ă�����Ă��܂��܂���B�܂��A�{�X�N���v�g�ɂ���ďo
�͂����N���W�b�g�\��(�o�[�W�����\��)�Ȃǂ̕\���������Ďg�p���Ă�����Ă��\���܂���B
> �������A��҂͖{�X�N���v�g�ƕt���t�@�C���Ɋւ��钘�쌠��������܂���B�܂��A��҂͖{�X
�N���v�g�g�p�Ɋւ��Ĕ������������Ȃ�g���u���ɂ��ӔC�𕉂����˂܂��̂ł��������������B

�@�܂�remake.cgi�̒��쌠����C�Z���X�͕ʂ̕��ɂ���Aremake.cgi�̍�҂ɒ��쌠����C�Z���X��
�A�����܂��B

�@perllib�Ɋ܂߂Ă���p�b�P�[�W�ɂ��Ă͌�q�B

�� Regarding Version Upgrade
�@0.7.0����o�[�W�����A�b�v�̍ۂɂ͊Ǘ���ʂɂĒʒm����悤�ɂȂ�܂����B
�@�Z�L�����e�B�C�����܂ރA�b�v�f�[�g�����X����܂��̂ł��萔���Ǝv���܂����A���܂߂ȃA�b
�v�f�[�g����낵�����˂������܂��B


�� Help and Support
�@For further details, please refer to the following pages:
  �EHelp - Zero Channel Plus
    http://zerochplus.sourceforge.jp/help/
  �EZero Channel Plus Wiki
    http://sourceforge.jp/projects/zerochplus/wiki/

�@If you can't find the information you want or would like to report
bugs, feel free to contact us with the information below.
  �ESupport - Zero Channel Plus
    http://zerochplus.sourceforge.jp/support/

�� Special Thanks
�@We would like to thank everyone who supported Zero Channel Plus.
�@Above all, we would like to thank Seishin Suijaku ��Y3kwSzvOHE for
writing the original script.

�� Official Website
�@http://zerochplus.sourceforge.jp/

�� PERLLIB Packages
�@������Zero Channel Plus�̎��s�ɕK�v�ȃp�b�P�[�W�ł��B���łɃC���X�g�[������Ă���
�T�[�o�[�����邩������܂��񂪁A�ꉞ�܂߂Ă����܂��B
�@�ȉ��̓p�b�P�[�W�̏ڍׂł��B

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

