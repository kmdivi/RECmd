Description: Basic Host Information
Author: kmdivi
Version: 1.0
Id: 5bbcde67-4938-4631-b943-ec30f8a4b158
Keys:
    -
        Description: Hostname
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: ControlSet*\Control\ComputerName\ComputerName
        ValueName: ComputerName
        Recursive: false
    -
        Description: Domain Name
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: ControlSet*\Services\Tcpip\Parameters
        ValueName: Domain
        Recursive: false
    -
        Description: NV Domain Name
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: ControlSet*\Services\Tcpip\Parameters
        ValueName: NV Domain
        Recursive: false
    -
        Description: OS Info
        HiveType: SOFTWARE
        Category: Host Info
        KeyPath: Microsoft\Windows NT\CurrentVersion
        Recursive: false
    -
        Description: OS Install Date
        HiveType: SOFTWARE
        Category: Host Info
        KeyPath: Microsoft\Windows NT\CurrentVersion
        ValueName: InstallDate
        IncludeBinary: true
        BinaryConvert: EPOCH
        Recursive: false
    -
        Description: Timezone
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: ControlSet*\Control\TimeZoneInformation
        ValueName: TimeZoneKeyName
        Recursive: false
    -
        Description: System Language
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: ControlSet*\Control\Nls\Language
        ValueName: InstallLanguage
        Recursive: false
    -
        Description: IP/MAC/Gateway Info
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: ControlSet*\Services\Tcpip\Parameters\Interfaces\*
        Recursive: true
    -
        Description: Mounted Drives
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: MountedDevices
        Recursive: true
    -
        Description: User Profiles
        HiveType: SOFTWARE
        Category: Host Info
        KeyPath: Microsoft\Windows NT\CurrentVersion\ProfileList\*
        Recursive: true
    -
        Description: Windows Update Packages
        HiveType: SOFTWARE
        Category: Host Info
        KeyPath: Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages
        Recursive: true
    -
        Description: Last Shutdown Time
        HiveType: SYSTEM
        Category: Host Info
        KeyPath: ControlSet*\Control\Windows
        ValueName: ShutdownTime
        IncludeBinary: true
        BinaryConvert: FILETIME
        Recursive: false
    -
        Description: IsCloudDomainJoined
        HiveType: Amcache
        Category: System Info
        KeyPath: DeviceCensus\Enterprise
        ValueName: IsCloudDomainJoined
        Recursive: false
        Comment:
    -
        Description: ServerFeatures
        HiveType: Amcache
        Category: System Info
        KeyPath: DeviceCensus\Enterprise
        ValueName: ServerFeatures
        Recursive: false
        Comment:
    -
        Description: AzureVMType
        HiveType: Amcache
        Category: System Info
        KeyPath: DeviceCensus\Enterprise
        ValueName: AzureVMType
        Recursive: false
        Comment:
    -
        Description: AzureOSIDPresent
        HiveType: Amcache
        Category: System Info
        KeyPath: DeviceCensus\Enterprise
        ValueName: AzureOSIDPresent
        Recursive: false
        Comment:
    -
        Description: IsDomainJoined
        HiveType: Amcache
        Category: System Info
        KeyPath: DeviceCensus\Enterprise
        ValueName: IsDomainJoined
        Recursive: false
        Comment:
    -
        Description: NetworkAdapterGUID
        HiveType: Amcache
        Category: System Info
        KeyPath: DeviceCensus\Network
        ValueName: NetworkAdapterGUID
        Recursive: false
        Comment:
    -
        Description: Account Aliases
        HiveType: Sam
        Category: System Info
        KeyPath: Domains\Account\Aliases
        Recursive: true
        Comment:
    -
        Description: Account Users
        HiveType: Sam
        Category: System Info
        KeyPath: Domains\Account\Users
        Recursive: true
        Comment:
    -
        Description: Windows Defender Exclusions
        HiveType: Software
        Category: System Info
        KeyPath: Microsoft\Windows Defender\Exclusions\*
        Recursive: false
        Comment:
    -
        Description: ProfileList ProfileImagepath
        HiveType: Software
        Category: System Info
        KeyPath: Microsoft\Windows NT\CurrentVersion\ProfileList\*
        ValueName: ProfileImagepath
        Recursive: false
        Comment:
    -
        Description: SystemPartition
        HiveType: System
        Category: System Info
        KeyPath: Setup
        ValueName: SystemPartition
        Recursive: false
        Comment:
