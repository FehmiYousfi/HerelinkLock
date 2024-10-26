.class public Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;
.super Landroid/app/Service;
.source "RemoteID.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/RemoteID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPSTracker"
.end annotation


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0x0L

.field private static final MIN_TIME_BW_UPDATES:J = 0xc8L


# instance fields
.field private altitude:D

.field canGetLocation:Z

.field isGPSEnabled:Z

.field isNetworkEnabled:Z

.field lastupdate:J

.field private latitude:D

.field private location:Landroid/location/Location;

.field protected locationManager:Landroid/location/LocationManager;

.field private longitude:D

.field private final mContext:Landroid/content/Context;

.field private nmea:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 669
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->isGPSEnabled:Z

    .line 649
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->isNetworkEnabled:Z

    .line 652
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->canGetLocation:Z

    const-string v0, ""

    .line 667
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->nmea:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 842
    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->lastupdate:J

    .line 670
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 671
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->showSettingsAlert()V

    .line 674
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->getLocation()Landroid/location/Location;

    return-void
.end method

.method private UpdateDisplay()V
    .locals 2

    .line 845
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;-><init>(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$1000(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/content/Context;
    .locals 0

    .line 641
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;
    .locals 0

    .line 641
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Ljava/lang/String;
    .locals 0

    .line 641
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->nmea:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public canGetLocation()Z
    .locals 1

    .line 795
    iget-boolean v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->canGetLocation:Z

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->altitude:D

    .line 786
    :cond_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->altitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 759
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->latitude:D

    .line 764
    :cond_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->latitude:D

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 11

    const-string v0, "GPS Enabled"

    const-string v1, "Network"

    const-string v2, "network"

    const-string v3, "gps"

    .line 680
    :try_start_0
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->mContext:Landroid/content/Context;

    const-string v5, "location"

    .line 681
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 684
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 685
    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->isGPSEnabled:Z

    .line 688
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 689
    invoke-virtual {v4, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->isNetworkEnabled:Z

    const/4 v4, 0x1

    .line 695
    iput-boolean v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->canGetLocation:Z

    .line 696
    iget-boolean v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->isNetworkEnabled:Z

    if-eqz v4, :cond_0

    .line 697
    iget-object v5, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    const-wide/16 v7, 0xc8

    const/4 v9, 0x0

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 701
    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 704
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    .line 705
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->latitude:D

    .line 707
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->longitude:D

    .line 712
    :cond_0
    iget-boolean v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->isGPSEnabled:Z

    if-nez v1, :cond_1

    .line 713
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->showSettingsAlert()V

    .line 717
    :cond_1
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    if-nez v1, :cond_2

    .line 718
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0xc8

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 722
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z

    .line 723
    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 726
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    .line 727
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->latitude:D

    .line 729
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->longitude:D

    .line 730
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->altitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 772
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->longitude:D

    .line 777
    :cond_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->longitude:D

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 837
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->location:Landroid/location/Location;

    .line 839
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->UpdateDisplay()V

    return-void
.end method

.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 2

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNmeaMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GPS"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->nmea:Ljava/lang/String;

    .line 899
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->UpdateDisplay()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 885
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStatusChanged "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPS"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showSettingsAlert()V
    .locals 3

    .line 804
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GPS is not enabled"

    .line 807
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "GPS is not enabled. Do you want to go to settings menu?"

    .line 810
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 813
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$1;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$1;-><init>(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)V

    const-string v2, "Settings"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 821
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$2;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$2;-><init>(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 828
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public stopUsingGPS()V
    .locals 1

    .line 749
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
