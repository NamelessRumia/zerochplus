#============================================================================================================
#
#	�g���@�\ - �������
#	0ch_tasukeruyo.pl
#	---------------------------------------------------------------------------
#	2010.08.14 start
#
#============================================================================================================
package ZPL_tasukeruyo;

#------------------------------------------------------------------------------------------------------------
#
#	�R���X�g���N�^
#	-------------------------------------------------------------------------------------
#	@param	�Ȃ�
#	@return	�I�u�W�F�N�g
#
#------------------------------------------------------------------------------------------------------------
sub new
{
	my		$this = shift;
	my		$obj={};
	bless($obj,$this);
	return $obj;
}

#------------------------------------------------------------------------------------------------------------
#
#	�g���@�\���̎擾
#	-------------------------------------------------------------------------------------
#	@param	�Ȃ�
#	@return	���̕�����
#
#------------------------------------------------------------------------------------------------------------
sub getName
{
	my	$this = shift;
	return '�������';
}

#------------------------------------------------------------------------------------------------------------
#
#	�g���@�\�����擾
#	-------------------------------------------------------------------------------------
#	@param	�Ȃ�
#	@return	����������
#
#------------------------------------------------------------------------------------------------------------
sub getExplanation
{
	my	$this = shift;
	return '���O���� tasukeruyo ���L�������UA��\\�����܂�';
}

#------------------------------------------------------------------------------------------------------------
#
#	�g���@�\�^�C�v�擾
#	-------------------------------------------------------------------------------------
#	@param	�Ȃ�
#	@return	�g���@�\�^�C�v(�X������:1,���X:2,read:4,index:8)
#
#------------------------------------------------------------------------------------------------------------
sub getType
{
	my	$this = shift;
	return (16);
}

#------------------------------------------------------------------------------------------------------------
#
#	�g���@�\���s�C���^�t�F�C�X
#	-------------------------------------------------------------------------------------
#	@param	$sys	MELKOR
#	@param	$form	SAMWISE
#	@return	����I���̏ꍇ��0
#
#------------------------------------------------------------------------------------------------------------
sub execute
{
	my	$this = shift;
	my	($sys, $form, $type) = @_;
	
	if ( $type & 16 ) {
		my	($from, $koyuu, $agent, $tasuke, $mes, $ua);
		$from	= $form->Get('FROM');
		$koyuu	= $sys->Get('KOYUU');
		$koyuu	= $sys->Get('HOST') if (! defined $koyuu);
		$agent	= $sys->Get('AGENT');
		$mes	= $form->Get('MESSAGE');
		$ua		= $ENV{'HTTP_USER_AGENT'};
		
		if ( $from =~ /^(?:[\x00-\x7f\xa1-\xdf]|[\x81-\x9f\xe0-\xef][\x40-\x7e\x80-\xfc])*?tasukeruyo/ ) {
			if ( $agent eq 'O' || $agent eq 'P' || $agent eq 'i' ) {
				$tasuke = "$ENV{'REMOTE_HOST'}($koyuu)";
			}
			else {
				$tasuke = "$ENV{'REMOTE_HOST'}($ENV{'REMOTE_ADDR'})";
			}
			
			$from =~ s#^((?:[\x00-\x7f\xa1-\xdf]|[\x81-\x9f\xe0-\xef][\x40-\x7e\x80-\xfc])*?)tasukeruyo#$1</b>$tasuke<b>#g;
			$form->Set('FROM', $from);
			
			$ua =~ s/</&lt;/g;
			$ua =~ s/>/&gt;/g;
			$form->Set('MESSAGE',"$mes<br> <hr> <font color=\"blue\">$ua</font>");
		}
	}
	
	return 0;
}

#============================================================================================================
#	Module END
#============================================================================================================
1;