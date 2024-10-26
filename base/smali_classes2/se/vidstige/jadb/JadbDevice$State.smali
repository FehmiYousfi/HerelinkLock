.class public final enum Lse/vidstige/jadb/JadbDevice$State;
.super Ljava/lang/Enum;
.source "JadbDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/vidstige/jadb/JadbDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lse/vidstige/jadb/JadbDevice$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Authorizing:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum BootLoader:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Connecting:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Device:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Offline:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Recovery:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Rescue:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Sideload:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Unauthorized:Lse/vidstige/jadb/JadbDevice$State;

.field public static final enum Unknown:Lse/vidstige/jadb/JadbDevice$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 12
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Unknown:Lse/vidstige/jadb/JadbDevice$State;

    .line 13
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v2, 0x1

    const-string v3, "Offline"

    invoke-direct {v0, v3, v2}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Offline:Lse/vidstige/jadb/JadbDevice$State;

    .line 14
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v3, 0x2

    const-string v4, "Device"

    invoke-direct {v0, v4, v3}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Device:Lse/vidstige/jadb/JadbDevice$State;

    .line 15
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v4, 0x3

    const-string v5, "Recovery"

    invoke-direct {v0, v5, v4}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Recovery:Lse/vidstige/jadb/JadbDevice$State;

    .line 16
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v5, 0x4

    const-string v6, "BootLoader"

    invoke-direct {v0, v6, v5}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->BootLoader:Lse/vidstige/jadb/JadbDevice$State;

    .line 17
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v6, 0x5

    const-string v7, "Unauthorized"

    invoke-direct {v0, v7, v6}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Unauthorized:Lse/vidstige/jadb/JadbDevice$State;

    .line 18
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v7, 0x6

    const-string v8, "Authorizing"

    invoke-direct {v0, v8, v7}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Authorizing:Lse/vidstige/jadb/JadbDevice$State;

    .line 19
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/4 v8, 0x7

    const-string v9, "Sideload"

    invoke-direct {v0, v9, v8}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Sideload:Lse/vidstige/jadb/JadbDevice$State;

    .line 20
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/16 v9, 0x8

    const-string v10, "Connecting"

    invoke-direct {v0, v10, v9}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Connecting:Lse/vidstige/jadb/JadbDevice$State;

    .line 21
    new-instance v0, Lse/vidstige/jadb/JadbDevice$State;

    const/16 v10, 0x9

    const-string v11, "Rescue"

    invoke-direct {v0, v11, v10}, Lse/vidstige/jadb/JadbDevice$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->Rescue:Lse/vidstige/jadb/JadbDevice$State;

    const/16 v0, 0xa

    new-array v0, v0, [Lse/vidstige/jadb/JadbDevice$State;

    .line 10
    sget-object v11, Lse/vidstige/jadb/JadbDevice$State;->Unknown:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v11, v0, v1

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Offline:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v2

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Device:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v3

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Recovery:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v4

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->BootLoader:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v5

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Unauthorized:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v6

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Authorizing:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v7

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Sideload:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v8

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Connecting:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v9

    sget-object v1, Lse/vidstige/jadb/JadbDevice$State;->Rescue:Lse/vidstige/jadb/JadbDevice$State;

    aput-object v1, v0, v10

    sput-object v0, Lse/vidstige/jadb/JadbDevice$State;->$VALUES:[Lse/vidstige/jadb/JadbDevice$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lse/vidstige/jadb/JadbDevice$State;
    .locals 1

    .line 10
    const-class v0, Lse/vidstige/jadb/JadbDevice$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lse/vidstige/jadb/JadbDevice$State;

    return-object p0
.end method

.method public static values()[Lse/vidstige/jadb/JadbDevice$State;
    .locals 1

    .line 10
    sget-object v0, Lse/vidstige/jadb/JadbDevice$State;->$VALUES:[Lse/vidstige/jadb/JadbDevice$State;

    invoke-virtual {v0}, [Lse/vidstige/jadb/JadbDevice$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/vidstige/jadb/JadbDevice$State;

    return-object v0
.end method
