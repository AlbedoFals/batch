REM =================================

rd /s /q "E:\Shares\Admin\Hyper-V\Virtual Hard Disks\DEL"
rd /s /q E:\Shares\Games\DEL
rd /s /q E:\Shares\Games\PC\DEL
rd /s /q E:\Shares\Media2\ACG\DEL
rd /s /q E:\Shares\Media2\DEL
rd /s /q E:\Shares\Media2\Documentary\DEL
rd /s /q E:\Shares\Media2\Dorama\DEL
rd /s /q E:\Shares\Media2\Mandarin\DEL
rd /s /q E:\Shares\Media2\Movie\DEL
rd /s /q E:\Shares\Media2\Movie\Mandarin\DEL
rd /s /q E:\Shares\Media2\TV\DEL
rd /s /q E:\Shares\Media\Music\DEL
rd /s /q E:\Shares\Software\DEL
rd /s /q F:\Shares\Media\ACG\DEL
rd /s /q F:\Shares\Media\DEL
rd /s /q F:\Shares\Media\Documentary\DEL
rd /s /q F:\Shares\Media\Dorama\DEL
rd /s /q F:\Shares\Media\Mandarin\DEL
rd /s /q F:\Shares\Media\Movie\DEL
rd /s /q F:\Shares\Media\Movie\Mandarin\DEL
rd /s /q F:\Shares\Media\Music\AV\DEL
rd /s /q F:\Shares\Media\Music\DEL
rd /s /q F:\Shares\Media\TV\DEL	

REM =================================

set path=%path%;"E:\Shares\Admin\PortableApps\Portable Python 2.7.6.1\App"

REM cleanup, keep last 3 dir, debug is 0(off)
call E:\Shares\NetBackup\recycle\cleanup.py.cmd 3 0 