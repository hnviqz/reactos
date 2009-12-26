<?xml version="1.0"?>
<!DOCTYPE group SYSTEM "../../tools/rbuild/project.dtd">
<group>
	<if property="ARCH" value="arm">
	<module name="hal" type="kernelmodedll">
		<importlibrary definition="hal.pspec" />
		<include base="ntoskrnl">include</include>
		<library>ntoskrnl</library>
		<define name="_NTHAL_" />
		<file>hal.c</file>
		<file>hal.rc</file>
	</module>
	</if>
	<if property="ARCH" value="i386">
	<module name="hal" type="kernelmodedll">
		<importlibrary definition="hal.pspec" />
		<include base="ntoskrnl">include</include>
		<library>ntoskrnl</library>
		<define name="_NTHAL_" />
		<file>hal.c</file>
		<file>hal.rc</file>
	</module>
	</if>
	<if property="ARCH" value="i386">
		<module ifnot="false" name="halupalias" type="alias" aliasof="halup">
		</module>
		<module if="false" name="halmpalias" type="alias" aliasof="halmp">
		</module>
	</if>
	<if property="ARCH" value="powerpc">
		<module name="halupalias" type="alias" aliasof="halppc_up"/>
	</if>
	<if property="ARCH" value="amd64">
	<module name="hal" type="kernelmodedll">
		<importlibrary definition="hal_amd64.def" />
		<include base="ntoskrnl">include</include>
		<library>ntoskrnl</library>
		<define name="_NTHAL_" />
		<file>hal.c</file>
		<file>hal.rc</file>
	</module>
	</if>
</group>
